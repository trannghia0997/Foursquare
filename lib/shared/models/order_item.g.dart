// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OrderItemDtoImpl _$$OrderItemDtoImplFromJson(Map<String, dynamic> json) =>
    _$OrderItemDtoImpl(
      id: json['id'] as String,
      collectionId: json['collectionId'] as String,
      collectionName: json['collectionName'] as String,
      created: DateTime.parse(json['created'] as String),
      updated: DateTime.parse(json['updated'] as String),
      orderedQty: (json['orderedQty'] as num).toInt(),
      receivedQty: (json['receivedQty'] as num?)?.toInt(),
      shippedQty: (json['shippedQty'] as num?)?.toInt(),
      assignedQty: (json['assignedQty'] as num?)?.toInt(),
      unitPrice: (json['unitPrice'] as num).toDouble(),
      note: json['note'] as String?,
      orderId: json['orderId'] as String,
      productCategoryId: json['productCategoryId'] as String,
    );

Map<String, dynamic> _$$OrderItemDtoImplToJson(_$OrderItemDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'collectionId': instance.collectionId,
      'collectionName': instance.collectionName,
      'created': instance.created.toIso8601String(),
      'updated': instance.updated.toIso8601String(),
      'orderedQty': instance.orderedQty,
      'receivedQty': instance.receivedQty,
      'shippedQty': instance.shippedQty,
      'assignedQty': instance.assignedQty,
      'unitPrice': instance.unitPrice,
      'note': instance.note,
      'orderId': instance.orderId,
      'productCategoryId': instance.productCategoryId,
    };

_$OrderItemEditDtoImpl _$$OrderItemEditDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$OrderItemEditDtoImpl(
      orderedQty: (json['orderedQty'] as num).toInt(),
      receivedQty: (json['receivedQty'] as num?)?.toInt(),
      shippedQty: (json['shippedQty'] as num?)?.toInt(),
      assignedQty: (json['assignedQty'] as num?)?.toInt(),
      unitPrice: (json['unitPrice'] as num).toDouble(),
      note: json['note'] as String?,
      orderId: json['orderId'] as String,
      productCategoryId: json['productCategoryId'] as String,
    );

Map<String, dynamic> _$$OrderItemEditDtoImplToJson(
    _$OrderItemEditDtoImpl instance) {
  final val = <String, dynamic>{
    'orderedQty': instance.orderedQty,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('receivedQty', instance.receivedQty);
  writeNotNull('shippedQty', instance.shippedQty);
  writeNotNull('assignedQty', instance.assignedQty);
  val['unitPrice'] = instance.unitPrice;
  writeNotNull('note', instance.note);
  val['orderId'] = instance.orderId;
  val['productCategoryId'] = instance.productCategoryId;
  return val;
}
