import 'package:json_annotation/json_annotation.dart';

enum InvoiceType {
  @JsonValue('PRO_FORMA')
  proForma,
  @JsonValue('REGULAR')
  regular,
  @JsonValue('PAST_DUE')
  pastDue,
  @JsonValue('INTERIM')
  interim,
  @JsonValue('TIMESHEET')
  timesheet,
  @JsonValue('FINAL')
  final_,
  @JsonValue('CREDIT')
  credit,
  @JsonValue('DEBIT')
  debit,
  @JsonValue('MIXED')
  mixed,
  @JsonValue('COMMERCIAL')
  commercial,
  @JsonValue('RECURRING')
  recurring,
  @JsonValue('OTHER')
  other,
}
