// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'invoice.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$InvoiceImpl _$$InvoiceImplFromJson(Map<String, dynamic> json) =>
    _$InvoiceImpl(
      id: json['id'] as String,
      created: DateTime.parse(json['created'] as String),
      updated: DateTime.parse(json['updated'] as String),
      orderId: json['order_id'] as String,
      total: (json['total'] as num).toDouble(),
      type: $enumDecode(_$InvoiceTypeEnumMap, json['type']),
      paymentMethod:
          $enumDecode(_$PaymentMethodEnumMap, json['payment_method']),
      statusId: json['status_id'] as String,
      note: json['note'] as String?,
    );

Map<String, dynamic> _$$InvoiceImplToJson(_$InvoiceImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'created': instance.created.toIso8601String(),
      'updated': instance.updated.toIso8601String(),
      'order_id': instance.orderId,
      'total': instance.total,
      'type': _$InvoiceTypeEnumMap[instance.type]!,
      'payment_method': _$PaymentMethodEnumMap[instance.paymentMethod]!,
      'status_id': instance.statusId,
      'note': instance.note,
    };

const _$InvoiceTypeEnumMap = {
  InvoiceType.proForma: 'pro_forma',
  InvoiceType.regular: 'regular',
  InvoiceType.pastDue: 'due',
  InvoiceType.interim: 'interim',
  InvoiceType.timesheet: 'timesheet',
  InvoiceType.finalOrLast: 'final',
  InvoiceType.credit: 'credit',
  InvoiceType.debit: 'debit',
  InvoiceType.mixed: 'mixed',
  InvoiceType.commercial: 'commercial',
  InvoiceType.recurring: 'recurring',
  InvoiceType.other: 'other',
};

const _$PaymentMethodEnumMap = {
  PaymentMethod.cash: 'cash',
  PaymentMethod.electronicFundsTransfer: 'eft',
  PaymentMethod.giftCard: 'gift_card',
  PaymentMethod.creditCard: 'credit_card',
  PaymentMethod.debitCard: 'debit_card',
  PaymentMethod.prepaidCard: 'prepaid_card',
  PaymentMethod.check: 'check',
  PaymentMethod.other: 'other',
};
