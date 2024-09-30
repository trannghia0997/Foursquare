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
}

extension Localization on InvoiceStatusCodeData {
  String get vietnameseLocalization {
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
