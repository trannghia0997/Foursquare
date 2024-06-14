import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'product_qty.freezed.dart';
part 'product_qty.g.dart';

@freezed
class ProductQuantity with _$ProductQuantity {
  const factory ProductQuantity({
    @JsonKey(name: 'work_unit_id') required String workUnitId,
    @JsonKey(name: 'product_variant_id') required String productVariantId,
    @JsonKey(name: 'qty') required double quantity,
  }) = _ProductQuantity;

  factory ProductQuantity.fromJson(Map<String, Object?> json) =>
      _$ProductQuantityFromJson(json);
}
