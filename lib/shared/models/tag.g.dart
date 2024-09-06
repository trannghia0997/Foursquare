// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tag.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TagDTOImpl _$$TagDTOImplFromJson(Map<String, dynamic> json) => _$TagDTOImpl(
      id: json['id'] as String,
      collectionId: json['collectionId'] as String,
      collectionName: json['collectionName'] as String,
      created: DateTime.parse(json['created'] as String),
      updated: DateTime.parse(json['updated'] as String),
      name: json['name'] as String,
    );

Map<String, dynamic> _$$TagDTOImplToJson(_$TagDTOImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'collectionId': instance.collectionId,
      'collectionName': instance.collectionName,
      'created': instance.created.toIso8601String(),
      'updated': instance.updated.toIso8601String(),
      'name': instance.name,
    };

_$TagEditDTOImpl _$$TagEditDTOImplFromJson(Map<String, dynamic> json) =>
    _$TagEditDTOImpl(
      name: json['name'] as String,
    );

Map<String, dynamic> _$$TagEditDTOImplToJson(_$TagEditDTOImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
    };
