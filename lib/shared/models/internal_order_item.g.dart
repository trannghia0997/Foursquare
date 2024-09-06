// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'internal_order_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$InternalOrderItemDTOImpl _$$InternalOrderItemDTOImplFromJson(
        Map<String, dynamic> json) =>
    _$InternalOrderItemDTOImpl(
      id: json['id'] as String,
      collectionId: json['collectionId'] as String,
      collectionName: json['collectionName'] as String,
      created: DateTime.parse(json['created'] as String),
      updated: DateTime.parse(json['updated'] as String),
      qty: (json['qty'] as num?)?.toInt(),
      note: json['note'] as String?,
      internalOrderId: json['internal_order_id'] as String,
      orderItemId: json['order_item_id'] as String,
    );

Map<String, dynamic> _$$InternalOrderItemDTOImplToJson(
        _$InternalOrderItemDTOImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'collectionId': instance.collectionId,
      'collectionName': instance.collectionName,
      'created': instance.created.toIso8601String(),
      'updated': instance.updated.toIso8601String(),
      'qty': instance.qty,
      'note': instance.note,
      'internal_order_id': instance.internalOrderId,
      'order_item_id': instance.orderItemId,
    };

_$InternalOrderItemEditDTOImpl _$$InternalOrderItemEditDTOImplFromJson(
        Map<String, dynamic> json) =>
    _$InternalOrderItemEditDTOImpl(
      qty: (json['qty'] as num?)?.toInt(),
      note: json['note'] as String?,
      internalOrderId: json['internal_order_id'] as String?,
      orderItemId: json['order_item_id'] as String?,
    );

Map<String, dynamic> _$$InternalOrderItemEditDTOImplToJson(
    _$InternalOrderItemEditDTOImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('qty', instance.qty);
  writeNotNull('note', instance.note);
  writeNotNull('internal_order_id', instance.internalOrderId);
  writeNotNull('order_item_id', instance.orderItemId);
  return val;
}
