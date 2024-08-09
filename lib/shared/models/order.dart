import 'package:foursquare/shared/abstract_model.dart';
import 'package:foursquare/shared/json_nullable_type.dart';
import 'package:foursquare/shared/models/address.dart';
import 'package:foursquare/shared/models/enums/order_type.dart';
import 'package:foursquare/shared/models/order_status.dart';
import 'package:foursquare/shared/models/user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'order.freezed.dart';
part 'order.g.dart';

@freezed
class Order extends AbstractResourceModel with _$Order {
  @JsonSerializable(includeIfNull: false)
  const factory Order({
    String? id,
    OrderType? type,
    @JsonKey(defaultValue: 0) int? priority,
    @JsonKey(defaultValue: false) bool? isInternal,
    JsonNullableType<String>? note,
    JsonNullableType<String>? otherInfo,
    String? createdBy,
    DateTime? createdDate,
    String? lastModifiedBy,
    DateTime? lastModifiedDate,
    User? customer,
    OrderStatus? status,
    JsonNullableType<Address>? address,
    JsonNullableType<Order>? parentOrder,
  }) = _Order;

  factory Order.fromJson(Map<String, Object?> json) => _$OrderFromJson(json);
}
