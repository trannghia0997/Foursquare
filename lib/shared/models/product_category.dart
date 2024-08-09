import 'package:foursquare/shared/abstract_model.dart';
import 'package:foursquare/shared/json_nullable_type.dart';
import 'package:foursquare/shared/models/colour.dart';
import 'package:foursquare/shared/models/product.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'product_category.freezed.dart';
part 'product_category.g.dart';

@freezed
class ProductCategory extends AbstractResourceModel with _$ProductCategory {
  @JsonSerializable(includeIfNull: false)
  const factory ProductCategory({
    String? id,
    JsonNullableType<String>? name,
    String? imageUri,
    String? createdBy,
    DateTime? createdDate,
    String? lastModifiedBy,
    DateTime? lastModifiedDate,
    Colour? colour,
    Product? product,
  }) = _ProductCategory;

  factory ProductCategory.fromJson(Map<String, Object?> json) =>
      _$ProductCategoryFromJson(json);
}
