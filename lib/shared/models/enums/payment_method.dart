import 'package:json_annotation/json_annotation.dart';

enum PaymentMethod {
  @JsonValue('cash')
  cash,
  @JsonValue('eft')
  eft,
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
  other,
}
