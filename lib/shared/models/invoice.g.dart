// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'invoice.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$InvoiceDTOImpl _$$InvoiceDTOImplFromJson(Map<String, dynamic> json) =>
    _$InvoiceDTOImpl(
      id: json['id'] as String,
      collectionId: json['collectionId'] as String,
      collectionName: json['collectionName'] as String,
      created: DateTime.parse(json['created'] as String),
      updated: DateTime.parse(json['updated'] as String),
      totalAmount: (json['totalAmount'] as num).toInt(),
      type: json['type'] as String,
      paymentMethod: json['paymentMethod'] as String,
      note: json['note'] as String?,
      orderId: json['orderId'] as String,
      statusCodeId: json['statusCodeId'] as String,
      rootInvoiceId: json['rootInvoiceId'] as String?,
    );

Map<String, dynamic> _$$InvoiceDTOImplToJson(_$InvoiceDTOImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'collectionId': instance.collectionId,
      'collectionName': instance.collectionName,
      'created': instance.created.toIso8601String(),
      'updated': instance.updated.toIso8601String(),
      'totalAmount': instance.totalAmount,
      'type': instance.type,
      'paymentMethod': instance.paymentMethod,
      'note': instance.note,
      'orderId': instance.orderId,
      'statusCodeId': instance.statusCodeId,
      'rootInvoiceId': instance.rootInvoiceId,
    };

_$InvoiceEditDTOImpl _$$InvoiceEditDTOImplFromJson(Map<String, dynamic> json) =>
    _$InvoiceEditDTOImpl(
      totalAmount: (json['totalAmount'] as num).toInt(),
      type: json['type'] as String,
      paymentMethod: json['paymentMethod'] as String,
      note: json['note'] as String?,
      orderId: json['orderId'] as String,
      statusCodeId: json['statusCodeId'] as String,
      rootInvoiceId: json['rootInvoiceId'] as String?,
    );

Map<String, dynamic> _$$InvoiceEditDTOImplToJson(
    _$InvoiceEditDTOImpl instance) {
  final val = <String, dynamic>{
    'totalAmount': instance.totalAmount,
    'type': instance.type,
    'paymentMethod': instance.paymentMethod,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('note', instance.note);
  val['orderId'] = instance.orderId;
  val['statusCodeId'] = instance.statusCodeId;
  writeNotNull('rootInvoiceId', instance.rootInvoiceId);
  return val;
}
