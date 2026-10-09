import 'dart:async';
import 'dart:ui' show PlatformDispatcher;

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import './views/home.dart';
import 'controllers/config.dart';
import 'controllers/data.dart';

void main() {
  runZonedGuarded(() async {
    WidgetsFlutterBinding.ensureInitialized();
    FlutterError.onError = (details) {
      FlutterError.presentError(details);
      _showErrorSnackbar(details.exception);
    };
    PlatformDispatcher.instance.onError = (error, stackTrace) {
      _reportUncaughtError(error, stackTrace);
      return true;
    };

    final SharedPreferences prefs = await SharedPreferences.getInstance();
    Get.put(ConfigController(prefs));
    DataController dataController = Get.put(DataController());
    dataController.init();
    runApp(const MyApp());
  }, _reportUncaughtError);
}

void _reportUncaughtError(Object error, StackTrace stackTrace) {
  FlutterError.presentError(
    FlutterErrorDetails(exception: error, stack: stackTrace),
  );
  _showErrorSnackbar(error);
}

void _showErrorSnackbar(Object error) {
  WidgetsBinding.instance.addPostFrameCallback((_) {
    Get.snackbar(
      'Error',
      'Something went wrong: $error',
      snackPosition: SnackPosition.BOTTOM,
    );
  });
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
      home: Obx(
        () => Get.find<DataController>().ready.value
            ? Home()
            : const Scaffold(body: Center(child: CircularProgressIndicator())),
      ),
    );
  }
}
