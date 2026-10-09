import "package:get/get.dart";
import "package:shared_preferences/shared_preferences.dart";

class ConfigController extends GetxController {
  late SharedPreferences _prefs;

  @override
  void onInit() async {
    super.onInit();
    _prefs = await SharedPreferences.getInstance();
  }

  String get clientName => _prefs.getString('clientName') ?? '';
  set clientName(String value) => _prefs.setString('clientName', value);

  String get serverUrl =>
      _prefs.getString('serverUrl') ?? 'http://localhost:3000';
  set serverUrl(String value) => _prefs.setString('serverUrl', value);
}
