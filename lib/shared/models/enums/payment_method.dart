import 'package:json_annotation/json_annotation.dart';

enum PaymentMethod {
  @JsonValue('CASH')
  cash,
  @JsonValue('EFT')
  eft,
  @JsonValue('GIFT_CARD')
  giftCard,
  @JsonValue('CREDIT_CARD')
  creditCard,
  @JsonValue('DEBIT_CARD')
  debitCard,
  @JsonValue('PREPAID_CARD')
  prepaidCard,
  @JsonValue('CHECK')
  check,
  @JsonValue('OTHER')
  other,
}
