// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'internal_order_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$InternalOrderItemDtoImpl _$$InternalOrderItemDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$InternalOrderItemDtoImpl(
      id: json['id'] as String,
      collectionId: json['collectionId'] as String,
      collectionName: json['collectionName'] as String,
      created: DateTime.parse(json['created'] as String),
      updated: DateTime.parse(json['updated'] as String),
      qty: (json['qty'] as num?)?.toInt(),
      note: json['note'] as String?,
      internalOrderId: json['internalOrderId'] as String,
      orderItemId: json['orderItemId'] as String,
    );

Map<String, dynamic> _$$InternalOrderItemDtoImplToJson(
        _$InternalOrderItemDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'collectionId': instance.collectionId,
      'collectionName': instance.collectionName,
      'created': instance.created.toIso8601String(),
      'updated': instance.updated.toIso8601String(),
      'qty': instance.qty,
      'note': instance.note,
      'internalOrderId': instance.internalOrderId,
      'orderItemId': instance.orderItemId,
    };

_$InternalOrderItemEditDtoImpl _$$InternalOrderItemEditDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$InternalOrderItemEditDtoImpl(
      qty: (json['qty'] as num?)?.toInt(),
      note: json['note'] as String?,
      internalOrderId: json['internalOrderId'] as String,
      orderItemId: json['orderItemId'] as String,
    );

Map<String, dynamic> _$$InternalOrderItemEditDtoImplToJson(
    _$InternalOrderItemEditDtoImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('qty', instance.qty);
  writeNotNull('note', instance.note);
  val['internalOrderId'] = instance.internalOrderId;
  val['orderItemId'] = instance.orderItemId;
  return val;
}
