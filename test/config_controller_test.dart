import "package:flutter_test/flutter_test.dart";
import "package:shared_preferences/shared_preferences.dart";
import "package:mikey_client/controllers/config.dart";

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  test('generates and persists a stable client ID when missing', () async {
    SharedPreferences.setMockInitialValues({});
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final ConfigController config = ConfigController(prefs);

    final String generatedId = config.clientId;

    expect(generatedId, matches(RegExp(r'^[a-f0-9]{32}$')));
    expect(prefs.getString('clientId'), generatedId);
    expect(ConfigController(prefs).clientId, generatedId);
  });

  test('preserves an existing client ID', () async {
    SharedPreferences.setMockInitialValues({'clientId': 'existing-id'});
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final ConfigController config = ConfigController(prefs);

    expect(config.clientId, 'existing-id');
  });
}
