import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mikey_client/views/settings/scaffold.dart';

import '../controllers/data.dart';
import '../models/plan.dart';
import 'plan/plan.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Plan> plans = Get.find<DataController>().plans;
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            icon: Icon(Icons.settings_rounded),
            onPressed: () => Get.to(SettingsView()),
          ),
        ],
      ),
      body: Center(
        child: ListView.builder(
          itemCount: plans.length,
          itemBuilder: (context, index) {
            Plan plan = plans[index];
            return ListTile(
              title: Text(plan.title),
              onTap: () {
                Get.to(PlanView(planId: plan.id));
              },
            );
          },
        ),
      ),
    );
  }
}
