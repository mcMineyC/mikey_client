import "package:flutter/material.dart";
import "package:get/get.dart";

import "../../controllers/data.dart";
import "../../models/enhanced_plan.dart";

class PlanView extends StatelessWidget {
  final int planId;
  RxString hash = "".obs;
  EnhancedPlan? plan;
  PlanView({super.key, required this.planId});

  @override
  Widget build(BuildContext context) {
    Get.find<DataController>()
        .getPlan(planId)
        .then((value) {
          plan = value;
          hash.value =
              Get.find<DataController>().hashes[plan?.planCenterId
                  .toString()] ??
              "";
        })
        .onError((error, stackTrace) {
          print("Error fetching plan $planId: $error");
          print(stackTrace);
          throw Exception("Error fetching plan $planId: $error");
        });
    return Scaffold(
      appBar: AppBar(
        title: Text("Plan $planId"),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Get.back();
          },
        ),
      ),
      body: Center(
        child: Obx(
          () => Text(
            "Details for plan $planId \nHash: ${hash.value}\nPlan: ${plan?.title ?? 'Loading...'}",
          ),
        ),
      ),
    );
  }
}
