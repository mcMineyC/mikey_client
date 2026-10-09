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
    required String name,
    required DateTime startTime,
    required Duration duration,
  }) = _Plan;

  factory Plan.fromJson(Map<String, dynamic> json) => _$PlanFromJson(json);

  factory Plan.empty() => Plan(
    id: 0,
    planningCenterId: 0,
    title: '',
    name: '',
    startTime: DateTime.now(),
    duration: Duration.zero,
  );

  String get descriptiveTitle => "$title (${_formatStartTime(startTime)})";
  String get formattedStartTime => _formatStartTime(startTime);
  String _formatStartTime(Object value) {
    final startTime = value is DateTime
        ? value
        : DateTime.parse(value.toString());
    final hour = startTime.hour.toString().padLeft(2, '0');
    final minute = startTime.minute.toString().padLeft(2, '0');
    final month = startTime.month.toString().padLeft(2, '0');
    final day = startTime.day.toString().padLeft(2, '0');
    final year = (startTime.year % 100).toString().padLeft(2, '0');
    return '($hour:$minute $month/$day/$year)';
  }
  //   bool get isInLibrary => inLibrary.contains(ServiceLocator().get<PreferencesProvider>().loginName);
}
