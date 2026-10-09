// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'plan.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Plan _$PlanFromJson(Map<String, dynamic> json) => _Plan(
  id: (json['id'] as num).toInt(),
  planningCenterId: (json['planningCenterId'] as num).toInt(),
  title: json['title'] as String,
  displayName: json['displayName'] as String,
  startDate: DateTime.parse(json['startDate'] as String),
  duration: Duration(microseconds: (json['duration'] as num).toInt()),
);

Map<String, dynamic> _$PlanToJson(_Plan instance) => <String, dynamic>{
  'id': instance.id,
  'planningCenterId': instance.planningCenterId,
  'title': instance.title,
  'displayName': instance.displayName,
  'startDate': instance.startDate.toIso8601String(),
  'duration': instance.duration.inMicroseconds,
};
