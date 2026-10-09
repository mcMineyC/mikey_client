// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'enhanced_plan.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_EnhancedPlan _$EnhancedPlanFromJson(Map<String, dynamic> json) =>
    _EnhancedPlan(
      id: (json['id'] as num).toInt(),
      planCenterId: (json['planCenterId'] as num).toInt(),
      title: json['title'] as String,
      startTime: DateTime.parse(json['startTime'] as String),
      duration: (json['duration'] as num).toInt(),
      planningCenterUrl: json['planningCenterUrl'] as String,
      people: (json['people'] as List<dynamic>)
          .map((e) => Person.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$EnhancedPlanToJson(_EnhancedPlan instance) =>
    <String, dynamic>{
      'id': instance.id,
      'planCenterId': instance.planCenterId,
      'title': instance.title,
      'startTime': instance.startTime.toIso8601String(),
      'duration': instance.duration,
      'planningCenterUrl': instance.planningCenterUrl,
      'people': instance.people,
    };
