import "dart:convert";
import "dart:io";

import "package:http/http.dart" as http;
import "package:get/get.dart";

import "../models/plan.dart";
import "config.dart";

class DataController extends GetxController {
  Map<String, String> hashes = <String, String>{}.obs;

  List<Plan> plans = <Plan>[].obs;

  Future<List<Plan>> fetchPath(
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
      final List<dynamic> jsonData = response.body.isNotEmpty
          ? List<Map<String, dynamic>>.from(jsonDecode(response.body))
          : [];
      return jsonData.map((json) => Plan.fromJson(json)).toList();
    } else {
      throw Exception('Failed to load data from $path');
    }
  }
}
