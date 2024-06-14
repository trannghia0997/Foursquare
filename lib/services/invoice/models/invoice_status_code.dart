import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'invoice_status_code.freezed.dart';
part 'invoice_status_code.g.dart';

@freezed
class InvoiceStatusCode with _$InvoiceStatusCode {
  const factory InvoiceStatusCode({
    required String description,
  }) = _InvoiceStatusCode;

  factory InvoiceStatusCode.fromJson(Map<String, Object?> json) =>
      _$InvoiceStatusCodeFromJson(json);
}
