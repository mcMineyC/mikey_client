import "dart:math";

import "package:get/get.dart";
import "package:shared_preferences/shared_preferences.dart";

import "../constants.dart";
import "../utils/hash.dart";

class ConfigController extends GetxController {
  late SharedPreferences _prefs;

  ConfigController(SharedPreferences prefs) {
    _prefs = prefs;
  }

  String get clientName => _prefs.getString('clientName') ?? '';
  set clientName(String value) => _prefs.setString('clientName', value);

  String get clientId {
    final String? storedId = _prefs.getString('clientId');
    if (storedId != null && storedId.isNotEmpty) return storedId;

    final Random random = Random.secure();
    final String seed = List<int>.generate(
      16,
      (_) => random.nextInt(256),
    ).map((byte) => byte.toRadixString(16).padLeft(2, '0')).join();
    final String generatedId = md5Hash(seed);
    _prefs.setString('clientId', generatedId);
    return generatedId;
  }

  String get serverUrl => _prefs.getString('serverUrl') ?? kFallbackServerUrl;
  set serverUrl(String value) => _prefs.setString('serverUrl', value);
}
