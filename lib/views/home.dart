import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/data.dart';
import '../models/plan.dart';
import 'plan/plan.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Plan> plans = Get.find<DataController>().plans;
    return Scaffold(
      body: Center(
        child: ListView.builder(
          itemCount: plans.length,
          itemBuilder: (context, index) {
            Plan plan = plans[index];
            return ListTile(
              title: Text(plan.name),
              onTap: () {
                Get.to(PlanInfoView(planId: plan.id));
              },
            );
          },
        ),
      ),
    );
  }
}
