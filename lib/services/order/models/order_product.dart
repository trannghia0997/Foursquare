import 'package:foursquare/services/product/colour.dart';
import 'package:foursquare/services/product/product.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'order_product.freezed.dart';
part 'order_product.g.dart';

// Chỉnh sửa được
@freezed
class OrderProduct with _$OrderProduct {
  const factory OrderProduct({
    // @JsonKey(name: 'order_id') required String orderId,
    // @JsonKey(name: 'product_variant_id') required String productVariantId,
    required String id,
    required Product product,
    required int orderedQuantity,
    required Colour colourChoosed,
    @Default(0) int receivedQuantity,
    required String statusId,
    String? note,
  }) = _OrderProduct;

  factory OrderProduct.fromJson(Map<String, Object?> json) =>
      _$OrderProductFromJson(json);
}

// Không chỉnh sửa được
@unfreezed
class OrderProductCreation with _$OrderProductCreation {
  factory OrderProductCreation({
    /// Must be a valid ID of an existing order.
    @JsonKey(name: 'order_id') String? orderId,
    @JsonKey(name: 'product_variant_id') required String productVariantId,
    @JsonKey(name: 'ordered_qty') @Default(0) double orderedQuantity,
    @JsonKey(name: 'received_qty') @Default(0) double receivedQuantity,
    @JsonKey(name: 'price_per_unit') @Default(0) double pricePerUnit,
    @JsonKey(name: 'status_id') required String statusId,
    String? note,
  }) = _OrderProductCreation;

  factory OrderProductCreation.fromJson(Map<String, Object?> json) =>
      _$OrderProductCreationFromJson(json);
}

// dòng nào thay đổi sẽ thay lại
// dart run build_runner watch lib/ --delete-conflicting-outputs
// build 1 lần r thoát ra
// dart run build_runner build lib/ --delete-conflicting-outputs
