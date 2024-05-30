// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_qty.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductQuantityImpl _$$ProductQuantityImplFromJson(
        Map<String, dynamic> json) =>
    _$ProductQuantityImpl(
      workUnitId: json['work_unit_id'] as String,
      productVariantId: json['product_variant_id'] as String,
      quantity: (json['qty'] as num).toDouble(),
    );

Map<String, dynamic> _$$ProductQuantityImplToJson(
        _$ProductQuantityImpl instance) =>
    <String, dynamic>{
      'work_unit_id': instance.workUnitId,
      'product_variant_id': instance.productVariantId,
      'qty': instance.quantity,
    };
