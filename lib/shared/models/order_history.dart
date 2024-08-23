import 'package:foursquare/shared/abstract_model.dart';
import 'package:foursquare/shared/json_nullable_type.dart';
import 'package:foursquare/shared/models/order.dart';
import 'package:foursquare/shared/models/order_status.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'order_history.freezed.dart';
part 'order_history.g.dart';

@freezed
class OrderHistory extends AbstractResourceModel with _$OrderHistory {
  @JsonSerializable(includeIfNull: false)
  const factory OrderHistory({
    String? id,
    JsonNullableType<String>? comments,
    String? createdBy,
    String? createdDate,
    String? lastModifiedBy,
    String? lastModifiedDate,
    OrderStatus? status,
    Order? order,
  }) = _OrderHistory;

  factory OrderHistory.fromJson(Map<String, Object?> json) =>
      _$OrderHistoryFromJson(json);
}
