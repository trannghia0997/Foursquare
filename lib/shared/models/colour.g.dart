// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'colour.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ColourDTOImpl _$$ColourDTOImplFromJson(Map<String, dynamic> json) =>
    _$ColourDTOImpl(
      id: json['id'] as String,
      collectionId: json['collectionId'] as String,
      collectionName: json['collectionName'] as String,
      created: DateTime.parse(json['created'] as String),
      updated: DateTime.parse(json['updated'] as String),
      name: json['name'] as String,
      hexCode: json['hexCode'] as String,
    );

Map<String, dynamic> _$$ColourDTOImplToJson(_$ColourDTOImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'collectionId': instance.collectionId,
      'collectionName': instance.collectionName,
      'created': instance.created.toIso8601String(),
      'updated': instance.updated.toIso8601String(),
      'name': instance.name,
      'hexCode': instance.hexCode,
    };

_$ColourEditDTOImpl _$$ColourEditDTOImplFromJson(Map<String, dynamic> json) =>
    _$ColourEditDTOImpl(
      name: json['name'] as String,
      hexCode: json['hexCode'] as String,
    );

Map<String, dynamic> _$$ColourEditDTOImplToJson(_$ColourEditDTOImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'hexCode': instance.hexCode,
    };
