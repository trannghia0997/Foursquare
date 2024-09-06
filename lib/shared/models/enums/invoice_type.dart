import 'package:json_annotation/json_annotation.dart';

enum InvoiceType {
  @JsonValue('pro_forma')
  proForma,
  @JsonValue('regular')
  regular,
  @JsonValue('past_due')
  pastDue,
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
