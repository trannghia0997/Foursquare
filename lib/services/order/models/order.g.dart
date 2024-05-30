// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OrderImpl _$$OrderImplFromJson(Map<String, dynamic> json) => _$OrderImpl(
      creatorId: json['creator_id'] as String,
      customerId: json['customer_id'] as String?,
      type: $enumDecode(_$OrderTypeEnumMap, json['type']),
      addressId: json['address_id'] as String?,
      priority: (json['priority'] as num?)?.toInt() ?? 0,
      isInternal: json['is_internal'] as bool? ?? false,
      parentOrderId: json['parent_order_id'] as String?,
      statusId: json['status_id'] as String,
      note: json['note'] as String?,
    );

Map<String, dynamic> _$$OrderImplToJson(_$OrderImpl instance) =>
    <String, dynamic>{
      'creator_id': instance.creatorId,
      'customer_id': instance.customerId,
      'type': _$OrderTypeEnumMap[instance.type]!,
      'address_id': instance.addressId,
      'priority': instance.priority,
      'is_internal': instance.isInternal,
      'parent_order_id': instance.parentOrderId,
      'status_id': instance.statusId,
      'note': instance.note,
    };

const _$OrderTypeEnumMap = {
  OrderType.sale: 'sale',
  OrderType.return_: 'return',
  OrderType.exchange: 'exchange',
  OrderType.transfer: 'transfer',
  OrderType.other: 'other',
};

_$OrderCreationImpl _$$OrderCreationImplFromJson(Map<String, dynamic> json) =>
    _$OrderCreationImpl(
      creatorId: json['creator_id'] as String,
      customerId: json['customer_id'] as String?,
      type: $enumDecodeNullable(_$OrderTypeEnumMap, json['type']) ??
          OrderType.sale,
      addressId: json['address_id'] as String?,
      priority: (json['priority'] as num?)?.toInt() ?? 0,
      isInternal: json['is_internal'] as bool? ?? false,
      parentOrderId: json['parent_order_id'] as String?,
      statusId: json['status_id'] as String,
      note: json['note'] as String?,
    );

Map<String, dynamic> _$$OrderCreationImplToJson(_$OrderCreationImpl instance) =>
    <String, dynamic>{
      'creator_id': instance.creatorId,
      'customer_id': instance.customerId,
      'type': _$OrderTypeEnumMap[instance.type]!,
      'address_id': instance.addressId,
      'priority': instance.priority,
      'is_internal': instance.isInternal,
      'parent_order_id': instance.parentOrderId,
      'status_id': instance.statusId,
      'note': instance.note,
    };
