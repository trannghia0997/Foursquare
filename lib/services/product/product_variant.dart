import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'product_variant.freezed.dart';
part 'product_variant.g.dart';

@freezed
class ProductVariant with _$ProductVariant {
  const factory ProductVariant({
    @JsonKey(name: 'product_id') required String productId,
    @JsonKey(name: 'colour_id') required String colourId,
    required double price,
    required String image,
  }) = _ProductVariant;

  factory ProductVariant.fromJson(Map<String, Object?> json) =>
      _$ProductVariantFromJson(json);
}
