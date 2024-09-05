// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'invoice.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$InvoiceImpl _$$InvoiceImplFromJson(Map<String, dynamic> json) =>
    _$InvoiceImpl(
      id: json['id'] as String?,
      totalAmount: (json['totalAmount'] as num?)?.toDouble(),
      type: $enumDecodeNullable(_$InvoiceTypeEnumMap, json['type']),
      paymentMethod:
          $enumDecodeNullable(_$PaymentMethodEnumMap, json['paymentMethod']),
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
          : InvoiceStatus.fromJson(json['status'] as Map<String, dynamic>),
      order: json['order'] == null
          ? null
          : Order.fromJson(json['order'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$InvoiceImplToJson(_$InvoiceImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('totalAmount', instance.totalAmount);
  writeNotNull('type', _$InvoiceTypeEnumMap[instance.type]);
  writeNotNull('paymentMethod', _$PaymentMethodEnumMap[instance.paymentMethod]);
  writeNotNull('note', instance.note);
  writeNotNull('createdBy', instance.createdBy);
  writeNotNull('createdDate', instance.createdDate?.toIso8601String());
  writeNotNull('lastModifiedBy', instance.lastModifiedBy);
  writeNotNull(
      'lastModifiedDate', instance.lastModifiedDate?.toIso8601String());
  writeNotNull('status', instance.status);
  writeNotNull('order', instance.order);
  return val;
}

const _$InvoiceTypeEnumMap = {
  InvoiceType.proForma: 'PRO_FORMA',
  InvoiceType.regular: 'REGULAR',
  InvoiceType.pastDue: 'PAST_DUE',
  InvoiceType.interim: 'INTERIM',
  InvoiceType.timesheet: 'TIMESHEET',
  InvoiceType.final_: 'FINAL',
  InvoiceType.credit: 'CREDIT',
  InvoiceType.debit: 'DEBIT',
  InvoiceType.mixed: 'MIXED',
  InvoiceType.commercial: 'COMMERCIAL',
  InvoiceType.recurring: 'RECURRING',
  InvoiceType.other: 'OTHER',
};

const _$PaymentMethodEnumMap = {
  PaymentMethod.cash: 'CASH',
  PaymentMethod.eft: 'EFT',
  PaymentMethod.giftCard: 'GIFT_CARD',
  PaymentMethod.creditCard: 'CREDIT_CARD',
  PaymentMethod.debitCard: 'DEBIT_CARD',
  PaymentMethod.prepaidCard: 'PREPAID_CARD',
  PaymentMethod.check: 'CHECK',
  PaymentMethod.other: 'OTHER',
};
