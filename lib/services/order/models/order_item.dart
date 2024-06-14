import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'order_item.freezed.dart';
part 'order_item.g.dart';

@freezed
class OrderItem with _$OrderItem {
  const factory OrderItem({
    @JsonKey(name: 'order_id') required String orderId,
    @JsonKey(name: 'product_variant_id') required String productVariantId,
    @JsonKey(name: 'ordered_qty') @Default(0) double orderedQuantity,
    @JsonKey(name: 'received_qty') @Default(0) double receivedQuantity,
    @JsonKey(name: 'price_per_unit') @Default(0) double pricePerUnit,
    @JsonKey(name: 'status_id') required String statusId,
    String? note,
  }) = _OrderItem;

  factory OrderItem.fromJson(Map<String, Object?> json) =>
      _$OrderItemFromJson(json);
}

@unfreezed
class OrderItemCreation with _$OrderItemCreation {
  factory OrderItemCreation({
    /// Must be a valid ID of an existing order.
    @JsonKey(name: 'order_id') String? orderId,
    @JsonKey(name: 'product_variant_id') required String productVariantId,
    @JsonKey(name: 'ordered_qty') @Default(0) double orderedQuantity,
    @JsonKey(name: 'received_qty') @Default(0) double receivedQuantity,
    @JsonKey(name: 'price_per_unit') @Default(0) double pricePerUnit,
    @JsonKey(name: 'status_id') required String statusId,
    String? note,
  }) = _OrderItemCreation;

  factory OrderItemCreation.fromJson(Map<String, Object?> json) =>
      _$OrderItemCreationFromJson(json);
}
