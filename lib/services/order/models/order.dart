import 'package:foursquare_client/shared/base_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pocketbase/pocketbase.dart';
import 'package:flutter/foundation.dart';

part 'order.freezed.dart';
part 'order.g.dart';

enum OrderType {
  @JsonValue('sale')
  sale,
  @JsonValue('return')
  return_,
  @JsonValue('exchange')
  exchange,
  @JsonValue('transfer')
  transfer,
  @JsonValue('other')
  other
}

@freezed
class Order with _$Order implements BaseModel {
  const factory Order({
    @JsonKey(name: 'creator_id') required String creatorId,
    @JsonKey(name: 'customer_id') String? customerId,
    required OrderType type,
    @JsonKey(name: 'address_id') String? addressId,
    @Default(0) int priority,
    @JsonKey(name: 'is_internal') @Default(false) bool isInternal,
    @JsonKey(name: 'parent_order_id') String? parentOrderId,
    @JsonKey(name: 'status_id') required String statusId,
    String? note,
    @JsonKey(includeFromJson: false, includeToJson: false) RecordModel? record,
  }) = _Order;

  factory Order.fromRecord(RecordModel record) =>
      Order.fromJson(record.toJson()).copyWith(record: record);

  factory Order.fromJson(Map<String, Object?> json) => _$OrderFromJson(json);
}

@unfreezed
class OrderCreation with _$OrderCreation {
  factory OrderCreation({
    @JsonKey(name: 'creator_id') required String creatorId,
    @JsonKey(name: 'customer_id') String? customerId,
    @Default(OrderType.sale) OrderType type,
    @JsonKey(name: 'address_id') String? addressId,
    @Default(0) int priority,
    @JsonKey(name: 'is_internal') @Default(false) bool isInternal,
    @JsonKey(name: 'parent_order_id') String? parentOrderId,
    @JsonKey(name: 'status_id') required String statusId,
    String? note,
  }) = _OrderCreation;

  factory OrderCreation.fromJson(Map<String, Object?> json) =>
      _$OrderCreationFromJson(json);
}
