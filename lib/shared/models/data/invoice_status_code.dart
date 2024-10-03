import 'package:flutter/material.dart';

enum InvoiceStatusCodeData {
  draft("000000000000001"),
  active("000000000000002"),
  sent("000000000000003"),
  disputed("000000000000004"),
  overdue("000000000000005"),
  partial("000000000000006"),
  paid("000000000000007"),
  void_("000000000000008"),
  debt("000000000000009"),
  reserved("000000000000010");

  const InvoiceStatusCodeData(this.id);

  final String id;

  static InvoiceStatusCodeData fromId(String id) {
    return InvoiceStatusCodeData.values.firstWhere(
      (element) => element.id == id,
      orElse: () => InvoiceStatusCodeData.draft,
    );
  }
}

extension Localization on InvoiceStatusCodeData {
  String get vietnameseLocalizationString {
    switch (this) {
      case InvoiceStatusCodeData.draft:
        return "Nháp";
      case InvoiceStatusCodeData.active:
        return "Hoạt động";
      case InvoiceStatusCodeData.sent:
        return "Đã gửi";
      case InvoiceStatusCodeData.disputed:
        return "Tranh chấp";
      case InvoiceStatusCodeData.overdue:
        return "Quá hạn";
      case InvoiceStatusCodeData.partial:
        return "Một phần";
      case InvoiceStatusCodeData.paid:
        return "Đã thanh toán";
      case InvoiceStatusCodeData.void_:
        return "Hủy bỏ";
      case InvoiceStatusCodeData.debt:
        return "Nợ";
      case InvoiceStatusCodeData.reserved:
        return "Lưu trữ";
    }
  }
}

extension BackgroundAndForegroundColor on InvoiceStatusCodeData {
  (Color, Color) get backgroundAndForegroundColor {
    switch (this) {
      case InvoiceStatusCodeData.draft:
        return (Colors.grey, Colors.white);
      case InvoiceStatusCodeData.active:
        return (Colors.green, Colors.white);
      case InvoiceStatusCodeData.sent:
        return (Colors.blue, Colors.white);
      case InvoiceStatusCodeData.disputed:
        return (Colors.orange, Colors.white);
      case InvoiceStatusCodeData.overdue:
        return (Colors.red, Colors.white);
      case InvoiceStatusCodeData.partial:
        return (Colors.purple, Colors.white);
      case InvoiceStatusCodeData.paid:
        return (Colors.teal, Colors.white);
      case InvoiceStatusCodeData.void_:
        return (Colors.brown, Colors.white);
      case InvoiceStatusCodeData.debt:
        return (Colors.redAccent, Colors.white);
      case InvoiceStatusCodeData.reserved:
        return (Colors.yellow, Colors.white);
    }
  }
}
