import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/data.dart';
import '../models/plan.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView.builder(
          itemBuilder: (context, index) {
            List<Plan> plans = Get.find<DataController>().plans;
            return ListTile(title: Text('Item $index'));
          },
        ),
      ),
    );
  }
}
