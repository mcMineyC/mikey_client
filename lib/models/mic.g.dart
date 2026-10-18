// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mic.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Mic _$MicFromJson(Map<String, dynamic> json) => _Mic(
  id: (json['id'] as num).toInt(),
  name: json['name'] as String,
  updatedAt: DateTime.parse(json['updatedAt'] as String),
  batteryLevel: (json['batteryLevel'] as num).toInt(),
  frequency: (json['frequency'] as num).toDouble(),
);

Map<String, dynamic> _$MicToJson(_Mic instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'updatedAt': instance.updatedAt.toIso8601String(),
  'batteryLevel': instance.batteryLevel,
  'frequency': instance.frequency,
};
