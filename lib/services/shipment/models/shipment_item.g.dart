// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shipment_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ShipmentItemImpl _$$ShipmentItemImplFromJson(Map<String, dynamic> json) =>
    _$ShipmentItemImpl(
      shipmentId: json['shipment_id'] as String,
      orderItemId: json['order_item_id'] as String,
      quantity: (json['qty'] as num?)?.toDouble() ?? 0,
      total: (json['total'] as num?)?.toDouble() ?? 0,
    );

Map<String, dynamic> _$$ShipmentItemImplToJson(_$ShipmentItemImpl instance) =>
    <String, dynamic>{
      'shipment_id': instance.shipmentId,
      'order_item_id': instance.orderItemId,
      'qty': instance.quantity,
      'total': instance.total,
    };
