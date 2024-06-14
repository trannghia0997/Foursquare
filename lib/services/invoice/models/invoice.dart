import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'invoice.freezed.dart';
part 'invoice.g.dart';

enum InvoiceType {
  @JsonValue('pro_forma')
  proForma,
  @JsonValue('regular')
  regular,
  @JsonValue('due')
  pastDue,
  @JsonValue('interim')
  interim,
  @JsonValue('timesheet')
  timesheet,
  @JsonValue('final')
  finalOrLast,
  @JsonValue('credit')
  credit,
  @JsonValue('debit')
  debit,
  @JsonValue('mixed')
  mixed,
  @JsonValue('commercial')
  commercial,
  @JsonValue('recurring')
  recurring,
  @JsonValue('other')
  other
}

enum PaymentMethod {
  @JsonValue('cash')
  cash,
  @JsonValue('eft')
  electronicFundsTransfer,
  @JsonValue('gift_card')
  giftCard,
  @JsonValue('credit_card')
  creditCard,
  @JsonValue('debit_card')
  debitCard,
  @JsonValue('prepaid_card')
  prepaidCard,
  @JsonValue('check')
  check,
  @JsonValue('other')
  other
}

@freezed
class Invoice with _$Invoice {
  const factory Invoice({
    @JsonKey(name: 'order_id') required String orderId,
    required double total,
    required InvoiceType type,
    @JsonKey(name: 'payment_method') required PaymentMethod paymentMethod,
    @JsonKey(name: 'status_id') required String statusId,
    String? note,
  }) = _Invoice;

  factory Invoice.fromJson(Map<String, Object?> json) =>
      _$InvoiceFromJson(json);
}
