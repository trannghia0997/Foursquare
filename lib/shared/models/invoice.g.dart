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
      totalAmount: (json['total_amount'] as num).toInt(),
      type: json['type'] as String,
      paymentMethod: json['payment_method'] as String,
      note: json['note'] as String?,
      orderId: json['order_id'] as String,
      statusCodeId: json['status_code_id'] as String,
      rootInvoiceId: json['root_invoice_id'] as String?,
    );

Map<String, dynamic> _$$InvoiceDTOImplToJson(_$InvoiceDTOImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'collectionId': instance.collectionId,
      'collectionName': instance.collectionName,
      'created': instance.created.toIso8601String(),
      'updated': instance.updated.toIso8601String(),
      'total_amount': instance.totalAmount,
      'type': instance.type,
      'payment_method': instance.paymentMethod,
      'note': instance.note,
      'order_id': instance.orderId,
      'status_code_id': instance.statusCodeId,
      'root_invoice_id': instance.rootInvoiceId,
    };

_$InvoiceEditDTOImpl _$$InvoiceEditDTOImplFromJson(Map<String, dynamic> json) =>
    _$InvoiceEditDTOImpl(
      totalAmount: (json['total_amount'] as num?)?.toInt(),
      type: json['type'] as String?,
      paymentMethod: json['payment_method'] as String?,
      note: json['note'] as String?,
      orderId: json['order_id'] as String?,
      statusCodeId: json['status_code_id'] as String?,
      rootInvoiceId: json['root_invoice_id'] as String?,
    );

Map<String, dynamic> _$$InvoiceEditDTOImplToJson(
    _$InvoiceEditDTOImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('total_amount', instance.totalAmount);
  writeNotNull('type', instance.type);
  writeNotNull('payment_method', instance.paymentMethod);
  writeNotNull('note', instance.note);
  writeNotNull('order_id', instance.orderId);
  writeNotNull('status_code_id', instance.statusCodeId);
  writeNotNull('root_invoice_id', instance.rootInvoiceId);
  return val;
}
