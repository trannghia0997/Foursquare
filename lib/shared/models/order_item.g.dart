// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OrderItemDTOImpl _$$OrderItemDTOImplFromJson(Map<String, dynamic> json) =>
    _$OrderItemDTOImpl(
      id: json['id'] as String,
      collectionId: json['collectionId'] as String,
      collectionName: json['collectionName'] as String,
      created: DateTime.parse(json['created'] as String),
      updated: DateTime.parse(json['updated'] as String),
      orderedQty: (json['ordered_qty'] as num?)?.toInt(),
      receivedQty: (json['received_qty'] as num?)?.toInt(),
      unitPrice: (json['unit_price'] as num).toInt(),
      note: json['note'] as String?,
      orderId: json['order_id'] as String,
      productCategoryId: json['product_category_id'] as String,
    );

Map<String, dynamic> _$$OrderItemDTOImplToJson(_$OrderItemDTOImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'collectionId': instance.collectionId,
      'collectionName': instance.collectionName,
      'created': instance.created.toIso8601String(),
      'updated': instance.updated.toIso8601String(),
      'ordered_qty': instance.orderedQty,
      'received_qty': instance.receivedQty,
      'unit_price': instance.unitPrice,
      'note': instance.note,
      'order_id': instance.orderId,
      'product_category_id': instance.productCategoryId,
    };

_$OrderItemEditDTOImpl _$$OrderItemEditDTOImplFromJson(
        Map<String, dynamic> json) =>
    _$OrderItemEditDTOImpl(
      orderedQty: (json['ordered_qty'] as num?)?.toInt(),
      receivedQty: (json['received_qty'] as num?)?.toInt(),
      unitPrice: (json['unit_price'] as num?)?.toInt(),
      note: json['note'] as String?,
      orderId: json['order_id'] as String?,
      productCategoryId: json['product_category_id'] as String?,
    );

Map<String, dynamic> _$$OrderItemEditDTOImplToJson(
    _$OrderItemEditDTOImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('ordered_qty', instance.orderedQty);
  writeNotNull('received_qty', instance.receivedQty);
  writeNotNull('unit_price', instance.unitPrice);
  writeNotNull('note', instance.note);
  writeNotNull('order_id', instance.orderId);
  writeNotNull('product_category_id', instance.productCategoryId);
  return val;
}
