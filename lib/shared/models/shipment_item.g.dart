// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shipment_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ShipmentItemDtoImpl _$$ShipmentItemDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$ShipmentItemDtoImpl(
      id: json['id'] as String,
      collectionId: json['collectionId'] as String,
      collectionName: json['collectionName'] as String,
      created: DateTime.parse(json['created'] as String),
      updated: DateTime.parse(json['updated'] as String),
      qty: (json['qty'] as num).toInt(),
      rollQty: (json['rollQty'] as num).toInt(),
      total: (json['total'] as num).toInt(),
      shipmentId: json['shipmentId'] as String,
      orderItemId: json['orderItemId'] as String,
    );

Map<String, dynamic> _$$ShipmentItemDtoImplToJson(
        _$ShipmentItemDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'collectionId': instance.collectionId,
      'collectionName': instance.collectionName,
      'created': instance.created.toIso8601String(),
      'updated': instance.updated.toIso8601String(),
      'qty': instance.qty,
      'rollQty': instance.rollQty,
      'total': instance.total,
      'shipmentId': instance.shipmentId,
      'orderItemId': instance.orderItemId,
    };

_$ShipmentItemEditDtoImpl _$$ShipmentItemEditDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$ShipmentItemEditDtoImpl(
      qty: (json['qty'] as num).toInt(),
      rollQty: (json['rollQty'] as num).toInt(),
      total: (json['total'] as num).toInt(),
      shipmentId: json['shipmentId'] as String,
      orderItemId: json['orderItemId'] as String,
    );

Map<String, dynamic> _$$ShipmentItemEditDtoImplToJson(
        _$ShipmentItemEditDtoImpl instance) =>
    <String, dynamic>{
      'qty': instance.qty,
      'rollQty': instance.rollQty,
      'total': instance.total,
      'shipmentId': instance.shipmentId,
      'orderItemId': instance.orderItemId,
    };
