import 'package:json_annotation/json_annotation.dart';

enum InvoiceType {
  @JsonValue('pro_forma')
  proForma,
  @JsonValue('regular')
  regular,
  @JsonValue('past_due')
  pastDue,
  @JsonValue('retainer')
  retainer,
  @JsonValue('interim')
  interim,
  @JsonValue('timesheet')
  timesheet,
  @JsonValue('final')
  final_,
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
  other,
}

extension Localization on InvoiceType {
  String get vietnameseLocalization {
    switch (this) {
      case InvoiceType.proForma:
        return 'Báo giá';
      case InvoiceType.regular:
        return 'Thường';
      case InvoiceType.pastDue:
        return 'Quá hạn';
      case InvoiceType.retainer:
        return 'Đặt cọc';
      case InvoiceType.interim:
        return 'Tạm thời';
      case InvoiceType.timesheet:
        return 'Theo giờ';
      case InvoiceType.final_:
        return 'Cuối';
      case InvoiceType.credit:
        return 'Tín dụng';
      case InvoiceType.debit:
        return 'Nợ';
      case InvoiceType.mixed:
        return 'Kết hợp';
      case InvoiceType.commercial:
        return 'Thương mại';
      case InvoiceType.recurring:
        return 'Định kỳ';
      case InvoiceType.other:
        return 'Khác';
    }
  }
}
