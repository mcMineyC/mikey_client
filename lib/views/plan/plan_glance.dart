import "dart:math" as math;

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
    const double refHeight = 976;
    const double refWidth = 700;
    return Scaffold(
      body: Obx(
        () => hash.value.isEmpty
            ? Center(child: CircularProgressIndicator())
            : Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                    child: Row(
                      children: plan!.people
                          .where((person) => person.micId != null)
                          .map(
                            (person) => Expanded(
                              child: Container(
                                margin: EdgeInsets.all(16),
                                color: Colors.black,
                                child: Center(
                                  child: Text(
                                    person.name,
                                    style: TextStyle(
                                      fontSize: 24,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          )
                          .toList(),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(16),
                    constraints: BoxConstraints(maxHeight: 96, minHeight: 96),
                    // color: Colors.blue,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                          icon: Icon(Icons.arrow_back_rounded, size: 48.0),
                          onPressed: () {
                            Get.back();
                          },
                        ),
                        Obx(
                          () => Text(
                            hash.value.isNotEmpty
                                ? plan?.descriptiveTitle ?? 'Plan $planId'
                                : 'Loading',
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
      ),
    );
  }
}
