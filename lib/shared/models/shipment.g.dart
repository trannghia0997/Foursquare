// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shipment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ShipmentImpl _$$ShipmentImplFromJson(Map<String, dynamic> json) =>
    _$ShipmentImpl(
      id: json['id'] as String?,
      type: $enumDecodeNullable(_$ShipmentTypeEnumMap, json['type']),
      shipmentDate: json['shipmentDate'] == null
          ? null
          : DateTime.parse(json['shipmentDate'] as String),
      note: json['note'] == null
          ? null
          : JsonNullableType<String>.fromJson(json['note']),
      createdBy: json['createdBy'] as String?,
      createdDate: json['createdDate'] == null
          ? null
          : DateTime.parse(json['createdDate'] as String),
      lastModifiedBy: json['lastModifiedBy'] as String?,
      lastModifiedDate: json['lastModifiedDate'] == null
          ? null
          : DateTime.parse(json['lastModifiedDate'] as String),
      status: json['status'] == null
          ? null
          : ShipmentStatus.fromJson(json['status'] as Map<String, dynamic>),
      order: json['order'] == null
          ? null
          : Order.fromJson(json['order'] as Map<String, dynamic>),
      invoice: json['invoice'] == null
          ? null
          : Invoice.fromJson(json['invoice'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ShipmentImplToJson(_$ShipmentImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('type', _$ShipmentTypeEnumMap[instance.type]);
  writeNotNull('shipmentDate', instance.shipmentDate?.toIso8601String());
  writeNotNull('note', instance.note);
  writeNotNull('createdBy', instance.createdBy);
  writeNotNull('createdDate', instance.createdDate?.toIso8601String());
  writeNotNull('lastModifiedBy', instance.lastModifiedBy);
  writeNotNull(
      'lastModifiedDate', instance.lastModifiedDate?.toIso8601String());
  writeNotNull('status', instance.status);
  writeNotNull('order', instance.order);
  writeNotNull('invoice', instance.invoice);
  return val;
}

const _$ShipmentTypeEnumMap = {
  ShipmentType.outbound: 'OUTBOUND',
  ShipmentType.inbound: 'INBOUND',
  ShipmentType.transfer: 'TRANSFER',
  ShipmentType.return_: 'RETURN',
  ShipmentType.exchange: 'EXCHANGE',
  ShipmentType.other: 'OTHER',
};
