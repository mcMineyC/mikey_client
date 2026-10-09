// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'person.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Person _$PersonFromJson(Map<String, dynamic> json) => _Person(
  id: (json['id'] as num).toInt(),
  planCenterId: (json['planCenterId'] as num).toInt(),
  name: json['name'] as String,
  micId: json['micId'] as String?,
);

Map<String, dynamic> _$PersonToJson(_Person instance) => <String, dynamic>{
  'id': instance.id,
  'planCenterId': instance.planCenterId,
  'name': instance.name,
  'micId': instance.micId,
};
