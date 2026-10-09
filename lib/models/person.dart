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
    required String planningCenterId,
    required String name,
  }) = _Person;

  factory Person.fromJson(Map<String, dynamic> json) => _$PersonFromJson(json);

  get imageUrl =>
      "${Get.find<ConfigController>().serverUrl}/person/$planningCenterId/image";

  factory Person.empty() => Person(id: 0, planningCenterId: '', name: '');

  //   bool get isInLibrary => inLibrary.contains(ServiceLocator().get<PreferencesProvider>().loginName);
}
