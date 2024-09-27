// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'invoice_line_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$InvoiceLineItemDtoImpl _$$InvoiceLineItemDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$InvoiceLineItemDtoImpl(
      id: json['id'] as String,
      collectionId: json['collectionId'] as String,
      collectionName: json['collectionName'] as String,
      created: DateTime.parse(json['created'] as String),
      updated: DateTime.parse(json['updated'] as String),
      invoiceId: json['invoiceId'] as String,
      orderItemId: json['orderItemId'] as String,
      unitPrice: (json['unitPrice'] as num).toDouble(),
      note: json['note'] as String?,
    );

Map<String, dynamic> _$$InvoiceLineItemDtoImplToJson(
        _$InvoiceLineItemDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'collectionId': instance.collectionId,
      'collectionName': instance.collectionName,
      'created': instance.created.toIso8601String(),
      'updated': instance.updated.toIso8601String(),
      'invoiceId': instance.invoiceId,
      'orderItemId': instance.orderItemId,
      'unitPrice': instance.unitPrice,
      'note': instance.note,
    };

_$InvoiceLineItemEditDtoImpl _$$InvoiceLineItemEditDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$InvoiceLineItemEditDtoImpl(
      invoiceId: json['invoiceId'] as String,
      orderItemId: json['orderItemId'] as String,
      unitPrice: (json['unitPrice'] as num).toDouble(),
      note: json['note'] as String?,
    );

Map<String, dynamic> _$$InvoiceLineItemEditDtoImplToJson(
    _$InvoiceLineItemEditDtoImpl instance) {
  final val = <String, dynamic>{
    'invoiceId': instance.invoiceId,
    'orderItemId': instance.orderItemId,
    'unitPrice': instance.unitPrice,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('note', instance.note);
  return val;
}
