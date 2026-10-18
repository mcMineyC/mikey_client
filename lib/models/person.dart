import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_serializable/json_serializable.dart';
import 'package:get/get.dart';

import '../controllers/config.dart';

part 'person.freezed.dart';
part 'person.g.dart';

@freezed
abstract class Person with _$Person {
  Person._();
  factory Person({
    required int id,
    required int planCenterId,
    required String name,
    required String role,
    String? micId,
  }) = _Person;

  factory Person.fromJson(Map<String, dynamic> json) => _$PersonFromJson(json);

  get imageUrl =>
      "${Get.find<ConfigController>().serverUrl}/person/$planCenterId/image";

  get shortName {
    final parts = name.split(" ");
    if (parts.length >= 2) {
      return "${parts[0]} ${parts[1][0]}";
    } else {
      return name;
    }
  }

  factory Person.empty() => Person(id: 0, planCenterId: -1, role: '', name: '');

  //   bool get isInLibrary => inLibrary.contains(ServiceLocator().get<PreferencesProvider>().loginName);
}
