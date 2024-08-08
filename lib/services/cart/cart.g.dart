// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CartImpl _$$CartImplFromJson(Map<String, dynamic> json) => _$CartImpl(
      customerId: json['customer_id'] as String?,
      listOrderProduct: (json['list_order_product'] as List<dynamic>)
          .map((e) => OrderProduct.fromJson(e as Map<String, dynamic>))
          .toList(),
      note: json['note'] as String?,
      totalCost: (json['totalCost'] as num).toInt(),
    );

Map<String, dynamic> _$$CartImplToJson(_$CartImpl instance) =>
    <String, dynamic>{
      'customer_id': instance.customerId,
      'list_order_product': instance.listOrderProduct,
      'note': instance.note,
      'totalCost': instance.totalCost,
    };
