// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shipment_status_code.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ShipmentStatusCodeImpl _$$ShipmentStatusCodeImplFromJson(
        Map<String, dynamic> json) =>
    _$ShipmentStatusCodeImpl(
      id: json['id'] as String,
      created: DateTime.parse(json['created'] as String),
      updated: DateTime.parse(json['updated'] as String),
      description: json['description'] as String,
    );

Map<String, dynamic> _$$ShipmentStatusCodeImplToJson(
        _$ShipmentStatusCodeImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'created': instance.created.toIso8601String(),
      'updated': instance.updated.toIso8601String(),
      'description': instance.description,
    };
