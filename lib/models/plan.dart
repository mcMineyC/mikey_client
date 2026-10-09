import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_serializable/json_serializable.dart';

part 'plan.freezed.dart';
part 'plan.g.dart';

@freezed
abstract class Plan with _$Plan {
  Plan._();
  factory Plan({
    required int id,
    required int planningCenterId,
    required String title,
    required String displayName,
    required DateTime startDate,
    required Duration duration,
  }) = _Plan;

  factory Plan.fromJson(Map<String, dynamic> json) => _$PlanFromJson(json);

  factory Plan.empty() => Plan(
    id: 0,
    planningCenterId: 0,
    title: '',
    displayName: '',
    startDate: DateTime.now(),
    duration: Duration.zero,
  );

  //   bool get isInLibrary => inLibrary.contains(ServiceLocator().get<PreferencesProvider>().loginName);
}
