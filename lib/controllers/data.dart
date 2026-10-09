import "dart:convert";
import "dart:io";

import "package:crypto/crypto.dart";
import "package:http/http.dart" as http;
import "package:get/get.dart";

import "../constants.dart";
import "../models/enhanced_plan.dart";
import "../models/plan.dart";
import "config.dart";

String md5Hash(String value) => md5.convert(utf8.encode(value)).toString();

class DataController extends GetxController {
  RxMap<String, String> hashes = <String, String>{}.obs;

  RxList<Plan> plans = <Plan>[].obs;
  RxList<EnhancedPlan> nextPlans = <EnhancedPlan>[].obs;
  RxMap<int, EnhancedPlan> planCache = <int, EnhancedPlan>{}.obs;
  RxBool ready = false.obs;

  Future<void> init() async {
    await fetchPlans();
    ever(
      planCache,
      (_) => (planCache.length > kMaxPlanCacheSize) ? planCache.clear() : () {},
    ); // Periodically clear cache to prevent OOM

    ready.value = true;
  }

  Future<List<Plan>> fetchPlans() async {
    final List<dynamic> jsonData = (await fetchPath("/plans")) as List<dynamic>;
    print("Fetched ${jsonData.length} plans from server.");
    print("First plan: ${jsonData.isNotEmpty ? jsonData[0] : 'No plans'}");
    final List<Plan> pplans = jsonData
        .map((json) => Plan.fromJson(json))
        .toList();
    plans.value = pplans;
    return pplans;
  }

  Future<EnhancedPlan> fetchPlan(int planId) async {
    final Map<String, dynamic> jsonData =
        (await fetchPath("/plan/$planId")) as Map<String, dynamic>;
    print("Fetched plan $planId from server.");
    final EnhancedPlan plan = EnhancedPlan.fromJson(jsonData);
    hashes[plan.planCenterId.toString()] = md5Hash(jsonData.toString());
    planCache[planId] = plan;
    return plan;
  }

  Future<dynamic> fetchPath(
    String path, {
    String method = "GET",
    dynamic body,
  }) async {
    path = Get.find<ConfigController>().serverUrl + path;
    late final response;
    if (method.toUpperCase() == "GET")
      response = await http.get(Uri.parse(path));
    else if (method.toUpperCase() == "POST")
      response = await http.post(Uri.parse(path), body: body);
    else
      throw Exception('Unsupported HTTP method: $method');

    if (response.statusCode == 200) {
      final dynamic jsonData = response.body.isNotEmpty
          ? jsonDecode(response.body)
          : {};
      return jsonData;
    } else {
      throw Exception('Failed to load data from $path');
    }
  }

  Future<EnhancedPlan?> getPlan(int planId) async {
    if (!planCache.containsKey(planId)) return await fetchPlan(planId);
    return planCache[planId];
  }
}
