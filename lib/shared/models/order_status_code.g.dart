// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_status_code.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OrderStatusCodeDTOImpl _$$OrderStatusCodeDTOImplFromJson(
        Map<String, dynamic> json) =>
    _$OrderStatusCodeDTOImpl(
      id: json['id'] as String,
      collectionId: json['collectionId'] as String,
      collectionName: json['collectionName'] as String,
      created: DateTime.parse(json['created'] as String),
      updated: DateTime.parse(json['updated'] as String),
      statusCode: json['status_code'] as String,
      description: json['description'] as String?,
    );

Map<String, dynamic> _$$OrderStatusCodeDTOImplToJson(
        _$OrderStatusCodeDTOImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'collectionId': instance.collectionId,
      'collectionName': instance.collectionName,
      'created': instance.created.toIso8601String(),
      'updated': instance.updated.toIso8601String(),
      'status_code': instance.statusCode,
      'description': instance.description,
    };
