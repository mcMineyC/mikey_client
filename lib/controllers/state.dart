import "package:get/get.dart";
import "package:shared_preferences/shared_preferences.dart";

import "../constants.dart";

class StateController extends GetxController {
  RxInt _activePlanId = (-1).obs;

  int get activePlanId => _activePlanId.value;
  void setActivePlanId(int id) => _activePlanId.value = id;
}
