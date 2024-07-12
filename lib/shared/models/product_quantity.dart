import 'package:foursquare/shared/models/product_category.dart';
import 'package:foursquare/shared/models/working_unit.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'product_quantity.freezed.dart';
part 'product_quantity.g.dart';

@freezed
class ProductQuantity with _$ProductQuantity {
  @JsonSerializable(includeIfNull: false)
  const factory ProductQuantity({
    String? id,
    int? qty,
    String? createdBy,
    DateTime? createdDate,
    String? lastModifiedBy,
    DateTime? lastModifiedDate,
    WorkingUnit? workingUnit,
    ProductCategory? productCategory,
  }) = _ProductQuantity;

  factory ProductQuantity.fromJson(Map<String, Object?> json) =>
      _$ProductQuantityFromJson(json);
}
