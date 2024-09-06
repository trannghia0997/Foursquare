// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shipment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ShipmentDTOImpl _$$ShipmentDTOImplFromJson(Map<String, dynamic> json) =>
    _$ShipmentDTOImpl(
      id: json['id'] as String,
      collectionId: json['collectionId'] as String,
      collectionName: json['collectionName'] as String,
      created: DateTime.parse(json['created'] as String),
      updated: DateTime.parse(json['updated'] as String),
      type: $enumDecode(_$ShipmentTypeEnumMap, json['type']),
      shipmentDate: json['shipmentDate'] == null
          ? null
          : DateTime.parse(json['shipmentDate'] as String),
      deliveryDate: json['deliveryDate'] == null
          ? null
          : DateTime.parse(json['deliveryDate'] as String),
      note: json['note'] as String?,
      orderId: json['orderId'] as String,
      invoiceId: json['invoiceId'] as String,
      statusCodeId: json['statusCodeId'] as String,
    );

Map<String, dynamic> _$$ShipmentDTOImplToJson(_$ShipmentDTOImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'collectionId': instance.collectionId,
      'collectionName': instance.collectionName,
      'created': instance.created.toIso8601String(),
      'updated': instance.updated.toIso8601String(),
      'type': _$ShipmentTypeEnumMap[instance.type]!,
      'shipmentDate': instance.shipmentDate?.toIso8601String(),
      'deliveryDate': instance.deliveryDate?.toIso8601String(),
      'note': instance.note,
      'orderId': instance.orderId,
      'invoiceId': instance.invoiceId,
      'statusCodeId': instance.statusCodeId,
    };

const _$ShipmentTypeEnumMap = {
  ShipmentType.outbound: 'outbound',
  ShipmentType.inbound: 'inbound',
  ShipmentType.transfer: 'transfer',
  ShipmentType.return_: 'return',
  ShipmentType.exchange: 'exchange',
  ShipmentType.other: 'other',
};

_$ShipmentEditDTOImpl _$$ShipmentEditDTOImplFromJson(
        Map<String, dynamic> json) =>
    _$ShipmentEditDTOImpl(
      type: $enumDecode(_$ShipmentTypeEnumMap, json['type']),
      shipmentDate: json['shipmentDate'] == null
          ? null
          : DateTime.parse(json['shipmentDate'] as String),
      deliveryDate: json['deliveryDate'] == null
          ? null
          : DateTime.parse(json['deliveryDate'] as String),
      note: json['note'] as String?,
      orderId: json['orderId'] as String,
      invoiceId: json['invoiceId'] as String,
      statusCodeId: json['statusCodeId'] as String,
    );

Map<String, dynamic> _$$ShipmentEditDTOImplToJson(
    _$ShipmentEditDTOImpl instance) {
  final val = <String, dynamic>{
    'type': _$ShipmentTypeEnumMap[instance.type]!,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('shipmentDate', instance.shipmentDate?.toIso8601String());
  writeNotNull('deliveryDate', instance.deliveryDate?.toIso8601String());
  writeNotNull('note', instance.note);
  val['orderId'] = instance.orderId;
  val['invoiceId'] = instance.invoiceId;
  val['statusCodeId'] = instance.statusCodeId;
  return val;
}
