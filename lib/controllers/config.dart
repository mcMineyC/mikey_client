import "package:get/get.dart";
import "package:shared_preferences/shared_preferences.dart";

import "../constants.dart";

class ConfigController extends GetxController {
  late SharedPreferences _prefs;
  ConfigController(SharedPreferences prefs) {
    _prefs = prefs;
  }

  String get clientName => _prefs.getString('clientName') ?? '';
  set clientName(String value) => _prefs.setString('clientName', value);

  String get serverUrl => _prefs.getString('serverUrl') ?? kFallbackServerUrl;
  set serverUrl(String value) => _prefs.setString('serverUrl', value);
}
