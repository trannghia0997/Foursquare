import 'package:foursquare/shared/abstract_model.dart';
import 'package:foursquare/shared/json_nullable_type.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'order_status.freezed.dart';
part 'order_status.g.dart';

@freezed
class OrderStatus extends AbstractResourceModel with _$OrderStatus {
  @JsonSerializable(includeIfNull: false)
  const factory OrderStatus({
    int? id,
    String? statusCode,
    JsonNullableType<String>? description,
    String? createdBy,
    DateTime? createdDate,
    String? lastModifiedBy,
    DateTime? lastModifiedDate,
  }) = _OrderStatus;

  factory OrderStatus.fromJson(Map<String, Object?> json) =>
      _$OrderStatusFromJson(json);
}
