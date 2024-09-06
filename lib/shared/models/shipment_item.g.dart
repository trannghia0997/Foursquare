// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shipment_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ShipmentItemDTOImpl _$$ShipmentItemDTOImplFromJson(
        Map<String, dynamic> json) =>
    _$ShipmentItemDTOImpl(
      id: json['id'] as String,
      collectionId: json['collectionId'] as String,
      collectionName: json['collectionName'] as String,
      created: DateTime.parse(json['created'] as String),
      updated: DateTime.parse(json['updated'] as String),
      qty: (json['qty'] as num).toInt(),
      rollQty: (json['roll_qty'] as num).toInt(),
      total: (json['total'] as num).toInt(),
      shipmentId: json['shipment_id'] as String,
      orderItemId: json['order_item_id'] as String,
    );

Map<String, dynamic> _$$ShipmentItemDTOImplToJson(
        _$ShipmentItemDTOImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'collectionId': instance.collectionId,
      'collectionName': instance.collectionName,
      'created': instance.created.toIso8601String(),
      'updated': instance.updated.toIso8601String(),
      'qty': instance.qty,
      'roll_qty': instance.rollQty,
      'total': instance.total,
      'shipment_id': instance.shipmentId,
      'order_item_id': instance.orderItemId,
    };

_$ShipmentItemEditDTOImpl _$$ShipmentItemEditDTOImplFromJson(
        Map<String, dynamic> json) =>
    _$ShipmentItemEditDTOImpl(
      qty: (json['qty'] as num?)?.toInt(),
      rollQty: (json['roll_qty'] as num?)?.toInt(),
      total: (json['total'] as num?)?.toInt(),
      shipmentId: json['shipment_id'] as String?,
      orderItemId: json['order_item_id'] as String?,
    );

Map<String, dynamic> _$$ShipmentItemEditDTOImplToJson(
    _$ShipmentItemEditDTOImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('qty', instance.qty);
  writeNotNull('roll_qty', instance.rollQty);
  writeNotNull('total', instance.total);
  writeNotNull('shipment_id', instance.shipmentId);
  writeNotNull('order_item_id', instance.orderItemId);
  return val;
}
