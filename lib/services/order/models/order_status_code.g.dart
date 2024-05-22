// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_status_code.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OrderStatusCodeImpl _$$OrderStatusCodeImplFromJson(
        Map<String, dynamic> json) =>
    _$OrderStatusCodeImpl(
      id: json['id'] as String,
      created: DateTime.parse(json['created'] as String),
      updated: DateTime.parse(json['updated'] as String),
      description: json['description'] as String,
    );

Map<String, dynamic> _$$OrderStatusCodeImplToJson(
        _$OrderStatusCodeImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'created': instance.created.toIso8601String(),
      'updated': instance.updated.toIso8601String(),
      'description': instance.description,
    };
