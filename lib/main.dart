import 'package:flutter/material.dart';
import 'package:get/get.dart';

import './views/home.dart';
import 'controllers/config.dart';
import 'controllers/data.dart';

void main() {
  ConfigController configController = Get.put(ConfigController());
  DataController dataController = Get.put(DataController());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Mikey',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          brightness: Brightness.dark,
          seedColor: Colors.lightBlue,
        ),
      ),
      home: Home(),
    );
  }
}
