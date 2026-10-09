// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'plan.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Plan _$PlanFromJson(Map<String, dynamic> json) => _Plan(
  id: (json['id'] as num).toInt(),
  planningCenterId: (json['planningCenterId'] as num).toInt(),
  title: json['title'] as String,
  name: json['name'] as String,
  startTime: DateTime.parse(json['startTime'] as String),
  duration: Duration(microseconds: (json['duration'] as num).toInt()),
);

Map<String, dynamic> _$PlanToJson(_Plan instance) => <String, dynamic>{
  'id': instance.id,
  'planningCenterId': instance.planningCenterId,
  'title': instance.title,
  'name': instance.name,
  'startTime': instance.startTime.toIso8601String(),
  'duration': instance.duration.inMicroseconds,
};
