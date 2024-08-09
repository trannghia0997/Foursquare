import 'package:foursquare/shared/abstract_model.dart';
import 'package:foursquare/shared/json_nullable_type.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'invoice_status.freezed.dart';
part 'invoice_status.g.dart';

@freezed
class InvoiceStatus extends AbstractResourceModel with _$InvoiceStatus {
  @JsonSerializable(includeIfNull: false)
  const factory InvoiceStatus({
    int? id,
    String? statusCode,
    JsonNullableType<String>? description,
    String? createdBy,
    DateTime? createdDate,
    String? lastModifiedBy,
    DateTime? lastModifiedDate,
  }) = _InvoiceStatus;

  factory InvoiceStatus.fromJson(Map<String, Object?> json) =>
      _$InvoiceStatusFromJson(json);
}
