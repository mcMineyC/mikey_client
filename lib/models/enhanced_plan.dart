import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_serializable/json_serializable.dart';

import 'person.dart';

part 'enhanced_plan.freezed.dart';
part 'enhanced_plan.g.dart';

@freezed
abstract class EnhancedPlan with _$EnhancedPlan {
  EnhancedPlan._();
  factory EnhancedPlan({
    required int id,
    required int planCenterId,
    required String title,
    required DateTime startTime,
    required int duration,
    required String planningCenterUrl,
    required List<Person> people,
  }) = _EnhancedPlan;

  factory EnhancedPlan.fromJson(Map<String, dynamic> json) =>
      _$EnhancedPlanFromJson(json);

  factory EnhancedPlan.empty() => EnhancedPlan(
    id: 0,
    planCenterId: 0,
    title: '',
    startTime: DateTime.now(),
    duration: 0,
    planningCenterUrl: '',
    people: [],
  );

  //   bool get isInLibrary => inLibrary.contains(ServiceLocator().get<PreferencesProvider>().loginName);
}
