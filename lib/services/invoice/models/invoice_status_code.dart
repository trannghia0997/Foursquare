import 'package:foursquare_client/shared/base_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pocketbase/pocketbase.dart';
import 'package:flutter/foundation.dart';

part 'invoice_status_code.freezed.dart';
part 'invoice_status_code.g.dart';

@freezed
class InvoiceStatusCode with _$InvoiceStatusCode implements BaseModel {
  const factory InvoiceStatusCode({
    required String description,
    @JsonKey(includeFromJson: false, includeToJson: false) RecordModel? record,
  }) = _InvoiceStatusCode;

  factory InvoiceStatusCode.fromRecord(RecordModel record) =>
      InvoiceStatusCode.fromJson(record.toJson()).copyWith(record: record);

  factory InvoiceStatusCode.fromJson(Map<String, Object?> json) =>
      _$InvoiceStatusCodeFromJson(json);
}
