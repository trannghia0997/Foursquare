import 'package:foursquare/shared/abstract_model.dart';
import 'package:foursquare/shared/json_nullable_type.dart';
import 'package:foursquare/shared/models/order.dart';
import 'package:foursquare/shared/models/product_category.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'order_item.freezed.dart';
part 'order_item.g.dart';

@freezed
class OrderItem extends AbstractResourceModel with _$OrderItem {
  @JsonSerializable(includeIfNull: false)
  const factory OrderItem({
    String? id,
    int? orderedQty,
    int? receivedQty,
    double? unitPrice,
    JsonNullableType<String>? note,
    String? createdBy,
    DateTime? createdDate,
    String? lastModifiedBy,
    DateTime? lastModifiedDate,
    ProductCategory? productCategory,
    Order? order,
  }) = _OrderItem;

  factory OrderItem.fromJson(Map<String, Object?> json) =>
      _$OrderItemFromJson(json);
}
