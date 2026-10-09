// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'person.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Person _$PersonFromJson(Map<String, dynamic> json) => _Person(
  id: (json['id'] as num).toInt(),
  planningCenterId: json['planningCenterId'] as String,
  name: json['name'] as String,
);

Map<String, dynamic> _$PersonToJson(_Person instance) => <String, dynamic>{
  'id': instance.id,
  'planningCenterId': instance.planningCenterId,
  'name': instance.name,
};
