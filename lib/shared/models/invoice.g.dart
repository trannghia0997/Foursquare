// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'invoice.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$InvoiceDtoImpl _$$InvoiceDtoImplFromJson(Map<String, dynamic> json) =>
    _$InvoiceDtoImpl(
      id: json['id'] as String,
      collectionId: json['collectionId'] as String,
      collectionName: json['collectionName'] as String,
      created: DateTime.parse(json['created'] as String),
      updated: DateTime.parse(json['updated'] as String),
      totalAmount: (json['totalAmount'] as num).toDouble(),
      type: $enumDecode(_$InvoiceTypeEnumMap, json['type']),
      paymentMethod: $enumDecode(_$PaymentMethodEnumMap, json['paymentMethod']),
      note: json['note'] as String?,
      orderId: json['orderId'] as String,
      statusCodeId: json['statusCodeId'] as String,
      rootInvoiceId: json['rootInvoiceId'] as String?,
      otherInfo: json['otherInfo'] as String?,
    );

Map<String, dynamic> _$$InvoiceDtoImplToJson(_$InvoiceDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'collectionId': instance.collectionId,
      'collectionName': instance.collectionName,
      'created': instance.created.toIso8601String(),
      'updated': instance.updated.toIso8601String(),
      'totalAmount': instance.totalAmount,
      'type': _$InvoiceTypeEnumMap[instance.type]!,
      'paymentMethod': _$PaymentMethodEnumMap[instance.paymentMethod]!,
      'note': instance.note,
      'orderId': instance.orderId,
      'statusCodeId': instance.statusCodeId,
      'rootInvoiceId': instance.rootInvoiceId,
      'otherInfo': instance.otherInfo,
    };

const _$InvoiceTypeEnumMap = {
  InvoiceType.proForma: 'pro_forma',
  InvoiceType.regular: 'regular',
  InvoiceType.pastDue: 'past_due',
  InvoiceType.retainer: 'retainer',
  InvoiceType.interim: 'interim',
  InvoiceType.timesheet: 'timesheet',
  InvoiceType.final_: 'final',
  InvoiceType.credit: 'credit',
  InvoiceType.debit: 'debit',
  InvoiceType.mixed: 'mixed',
  InvoiceType.commercial: 'commercial',
  InvoiceType.recurring: 'recurring',
  InvoiceType.other: 'other',
};

const _$PaymentMethodEnumMap = {
  PaymentMethod.cash: 'cash',
  PaymentMethod.eft: 'eft',
  PaymentMethod.giftCard: 'gift_card',
  PaymentMethod.creditCard: 'credit_card',
  PaymentMethod.debitCard: 'debit_card',
  PaymentMethod.prepaidCard: 'prepaid_card',
  PaymentMethod.check: 'check',
  PaymentMethod.other: 'other',
};

_$InvoiceEditDtoImpl _$$InvoiceEditDtoImplFromJson(Map<String, dynamic> json) =>
    _$InvoiceEditDtoImpl(
      totalAmount: (json['totalAmount'] as num).toDouble(),
      type: $enumDecode(_$InvoiceTypeEnumMap, json['type']),
      paymentMethod: $enumDecode(_$PaymentMethodEnumMap, json['paymentMethod']),
      note: json['note'] as String?,
      orderId: json['orderId'] as String,
      statusCodeId: json['statusCodeId'] as String,
      rootInvoiceId: json['rootInvoiceId'] as String?,
      otherInfo: json['otherInfo'] as String?,
    );

Map<String, dynamic> _$$InvoiceEditDtoImplToJson(
    _$InvoiceEditDtoImpl instance) {
  final val = <String, dynamic>{
    'totalAmount': instance.totalAmount,
    'type': _$InvoiceTypeEnumMap[instance.type]!,
    'paymentMethod': _$PaymentMethodEnumMap[instance.paymentMethod]!,
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
  writeNotNull('otherInfo', instance.otherInfo);
  return val;
}
