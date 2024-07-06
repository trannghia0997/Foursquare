import 'dart:math';

import 'package:Foursquare/services/product/colour.dart';
import 'package:Foursquare/services/product/product.dart';
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
    @Default(_generateOrderProductId) String id,
    required Product product,
    required int orderedQuantity,
    required Colour colourChoosed,
    @Default(0) int receivedQuantity,
    @Default(0) int pricePerUnit,
    required String statusId,
    String? note,
  }) = _OrderProduct;

  factory OrderProduct.fromJson(Map<String, Object?> json) =>
      _$OrderProductFromJson(json);

  static String _generateOrderProductId() {
    const chars = 'abcdefghijklmnopqrstuvwxyz0123456789';
    const length = 10;
    final random = Random();
    return String.fromCharCodes(Iterable.generate(
      length,
      (_) => chars.codeUnitAt(random.nextInt(chars.length)),
    ));
  }
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