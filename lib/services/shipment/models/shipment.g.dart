// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shipment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ShipmentImpl _$$ShipmentImplFromJson(Map<String, dynamic> json) =>
    _$ShipmentImpl(
      id: json['id'] as String,
      created: DateTime.parse(json['created'] as String),
      updated: DateTime.parse(json['updated'] as String),
      creatorId: json['creator_id'] as String,
      customerId: json['customer_id'] as String?,
      addressId: json['address_id'] as String?,
      priority: (json['priority'] as num?)?.toInt() ?? 0,
      isInternal: json['is_internal'] as bool? ?? false,
      parentOrderId: json['parent_order_id'] as String?,
      statusId: json['status_id'] as String,
      note: json['note'] as String?,
    );

Map<String, dynamic> _$$ShipmentImplToJson(_$ShipmentImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'created': instance.created.toIso8601String(),
      'updated': instance.updated.toIso8601String(),
      'creator_id': instance.creatorId,
      'customer_id': instance.customerId,
      'address_id': instance.addressId,
      'priority': instance.priority,
      'is_internal': instance.isInternal,
      'parent_order_id': instance.parentOrderId,
      'status_id': instance.statusId,
      'note': instance.note,
    };
