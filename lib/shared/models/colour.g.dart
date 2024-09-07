// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'colour.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ColourDtoImpl _$$ColourDtoImplFromJson(Map<String, dynamic> json) =>
    _$ColourDtoImpl(
      id: json['id'] as String,
      collectionId: json['collectionId'] as String,
      collectionName: json['collectionName'] as String,
      created: DateTime.parse(json['created'] as String),
      updated: DateTime.parse(json['updated'] as String),
      name: json['name'] as String,
      hexCode: json['hexCode'] as String,
    );

Map<String, dynamic> _$$ColourDtoImplToJson(_$ColourDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'collectionId': instance.collectionId,
      'collectionName': instance.collectionName,
      'created': instance.created.toIso8601String(),
      'updated': instance.updated.toIso8601String(),
      'name': instance.name,
      'hexCode': instance.hexCode,
    };

_$ColourEditDtoImpl _$$ColourEditDtoImplFromJson(Map<String, dynamic> json) =>
    _$ColourEditDtoImpl(
      name: json['name'] as String,
      hexCode: json['hexCode'] as String,
    );

Map<String, dynamic> _$$ColourEditDtoImplToJson(_$ColourEditDtoImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'hexCode': instance.hexCode,
    };
