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
      type: json['type'] as String,
      shipmentDate: json['shipment_date'] == null
          ? null
          : DateTime.parse(json['shipment_date'] as String),
      deliveryDate: json['delivery_date'] == null
          ? null
          : DateTime.parse(json['delivery_date'] as String),
      note: json['note'] as String?,
      orderId: json['order_id'] as String,
      invoiceId: json['invoice_id'] as String,
      statusCodeId: json['status_code_id'] as String,
    );

Map<String, dynamic> _$$ShipmentDTOImplToJson(_$ShipmentDTOImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'collectionId': instance.collectionId,
      'collectionName': instance.collectionName,
      'created': instance.created.toIso8601String(),
      'updated': instance.updated.toIso8601String(),
      'type': instance.type,
      'shipment_date': instance.shipmentDate?.toIso8601String(),
      'delivery_date': instance.deliveryDate?.toIso8601String(),
      'note': instance.note,
      'order_id': instance.orderId,
      'invoice_id': instance.invoiceId,
      'status_code_id': instance.statusCodeId,
    };

_$ShipmentEditDTOImpl _$$ShipmentEditDTOImplFromJson(
        Map<String, dynamic> json) =>
    _$ShipmentEditDTOImpl(
      type: json['type'] as String?,
      shipmentDate: json['shipment_date'] == null
          ? null
          : DateTime.parse(json['shipment_date'] as String),
      deliveryDate: json['delivery_date'] == null
          ? null
          : DateTime.parse(json['delivery_date'] as String),
      note: json['note'] as String?,
      orderId: json['order_id'] as String?,
      invoiceId: json['invoice_id'] as String?,
      statusCodeId: json['status_code_id'] as String?,
    );

Map<String, dynamic> _$$ShipmentEditDTOImplToJson(
    _$ShipmentEditDTOImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('type', instance.type);
  writeNotNull('shipment_date', instance.shipmentDate?.toIso8601String());
  writeNotNull('delivery_date', instance.deliveryDate?.toIso8601String());
  writeNotNull('note', instance.note);
  writeNotNull('order_id', instance.orderId);
  writeNotNull('invoice_id', instance.invoiceId);
  writeNotNull('status_code_id', instance.statusCodeId);
  return val;
}
