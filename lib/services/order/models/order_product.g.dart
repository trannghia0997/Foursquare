// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OrderProductImpl _$$OrderProductImplFromJson(Map<String, dynamic> json) =>
    _$OrderProductImpl(
      id: json['id'] as String,
      product: Product.fromJson(json['product'] as Map<String, dynamic>),
      orderedQuantity: (json['orderedQuantity'] as num).toInt(),
      colourChoosed:
          Colour.fromJson(json['colourChoosed'] as Map<String, dynamic>),
      statusId: json['statusId'] as String,
      enoughQuantity: json['enoughQuantity'] as bool?,
      receivedQuantity: (json['receivedQuantity'] as num?)?.toInt(),
      note: json['note'] as String?,
    );

Map<String, dynamic> _$$OrderProductImplToJson(_$OrderProductImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'product': instance.product,
      'orderedQuantity': instance.orderedQuantity,
      'colourChoosed': instance.colourChoosed,
      'statusId': instance.statusId,
      'enoughQuantity': instance.enoughQuantity,
      'receivedQuantity': instance.receivedQuantity,
      'note': instance.note,
    };

_$OrderProductCreationImpl _$$OrderProductCreationImplFromJson(
        Map<String, dynamic> json) =>
    _$OrderProductCreationImpl(
      orderId: json['order_id'] as String?,
      productVariantId: json['product_variant_id'] as String,
      orderedQuantity: (json['ordered_qty'] as num?)?.toDouble() ?? 0,
      receivedQuantity: (json['received_qty'] as num?)?.toDouble() ?? 0,
      pricePerUnit: (json['price_per_unit'] as num?)?.toDouble() ?? 0,
      statusId: json['status_id'] as String,
      note: json['note'] as String?,
    );

Map<String, dynamic> _$$OrderProductCreationImplToJson(
        _$OrderProductCreationImpl instance) =>
    <String, dynamic>{
      'order_id': instance.orderId,
      'product_variant_id': instance.productVariantId,
      'ordered_qty': instance.orderedQuantity,
      'received_qty': instance.receivedQuantity,
      'price_per_unit': instance.pricePerUnit,
      'status_id': instance.statusId,
      'note': instance.note,
    };
