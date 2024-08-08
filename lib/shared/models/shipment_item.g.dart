// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shipment_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ShipmentItemImpl _$$ShipmentItemImplFromJson(Map<String, dynamic> json) =>
    _$ShipmentItemImpl(
      id: json['id'] as String?,
      qty: (json['qty'] as num?)?.toInt(),
      total: json['total'] == null
          ? null
          : Decimal.fromJson(json['total'] as String),
      rollQty: (json['rollQty'] as num?)?.toInt(),
      createdBy: json['createdBy'] as String?,
      createdDate: json['createdDate'] == null
          ? null
          : DateTime.parse(json['createdDate'] as String),
      lastModifiedBy: json['lastModifiedBy'] as String?,
      lastModifiedDate: json['lastModifiedDate'] == null
          ? null
          : DateTime.parse(json['lastModifiedDate'] as String),
      orderItem: json['orderItem'] == null
          ? null
          : OrderItem.fromJson(json['orderItem'] as Map<String, dynamic>),
      shipment: json['shipment'] == null
          ? null
          : Shipment.fromJson(json['shipment'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ShipmentItemImplToJson(_$ShipmentItemImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('qty', instance.qty);
  writeNotNull('total', instance.total);
  writeNotNull('rollQty', instance.rollQty);
  writeNotNull('createdBy', instance.createdBy);
  writeNotNull('createdDate', instance.createdDate?.toIso8601String());
  writeNotNull('lastModifiedBy', instance.lastModifiedBy);
  writeNotNull(
      'lastModifiedDate', instance.lastModifiedDate?.toIso8601String());
  writeNotNull('orderItem', instance.orderItem);
  writeNotNull('shipment', instance.shipment);
  return val;
}
