// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OrderItemImpl _$$OrderItemImplFromJson(Map<String, dynamic> json) =>
    _$OrderItemImpl(
      id: json['id'] as String,
      created: DateTime.parse(json['created'] as String),
      updated: DateTime.parse(json['updated'] as String),
      orderId: json['order_id'] as String,
      productVariantId: json['product_variant_id'] as String,
      quantity: (json['qty'] as num?)?.toDouble() ?? 0,
      pricePerUnit: (json['price_per_unit'] as num?)?.toDouble() ?? 0,
      statusId: json['status_id'] as String,
      note: json['note'] as String?,
    );

Map<String, dynamic> _$$OrderItemImplToJson(_$OrderItemImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'created': instance.created.toIso8601String(),
      'updated': instance.updated.toIso8601String(),
      'order_id': instance.orderId,
      'product_variant_id': instance.productVariantId,
      'qty': instance.quantity,
      'price_per_unit': instance.pricePerUnit,
      'status_id': instance.statusId,
      'note': instance.note,
    };
