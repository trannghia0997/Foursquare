import 'package:flutter/material.dart';
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

extension PaymentMethodExtension on PaymentMethod {
  IconData get icon {
    switch (this) {
      case PaymentMethod.cash:
        return Icons.money;
      case PaymentMethod.eft:
        return Icons.account_balance;
      case PaymentMethod.giftCard:
        return Icons.card_giftcard;
      case PaymentMethod.creditCard:
        return Icons.credit_card;
      case PaymentMethod.debitCard:
        return Icons.credit_card;
      case PaymentMethod.prepaidCard:
        return Icons.credit_card;
      case PaymentMethod.check:
        return Icons.money;
      case PaymentMethod.other:
        return Icons.miscellaneous_services;
    }
  }

  String get vietnameseLocalization {
    switch (this) {
      case PaymentMethod.cash:
        return 'Tiền mặt';
      case PaymentMethod.eft:
        return 'Chuyển khoản';
      case PaymentMethod.giftCard:
        return 'Thẻ quà tặng';
      case PaymentMethod.creditCard:
        return 'Thẻ tín dụng';
      case PaymentMethod.debitCard:
        return 'Thẻ ghi nợ';
      case PaymentMethod.prepaidCard:
        return 'Thẻ trả trước';
      case PaymentMethod.check:
        return 'Séc';
      case PaymentMethod.other:
        return 'Khác';
    }
  }
}
