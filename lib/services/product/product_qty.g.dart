// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_qty.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductQuantityImpl _$$ProductQuantityImplFromJson(
        Map<String, dynamic> json) =>
    _$ProductQuantityImpl(
      id: json['id'] as String,
      created: DateTime.parse(json['created'] as String),
      updated: DateTime.parse(json['updated'] as String),
      workUnitId: json['work_unit_id'] as String,
      productVariantId: json['product_variant_id'] as String,
      quantity: (json['qty'] as num).toDouble(),
    );

Map<String, dynamic> _$$ProductQuantityImplToJson(
        _$ProductQuantityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'created': instance.created.toIso8601String(),
      'updated': instance.updated.toIso8601String(),
      'work_unit_id': instance.workUnitId,
      'product_variant_id': instance.productVariantId,
      'qty': instance.quantity,
    };
