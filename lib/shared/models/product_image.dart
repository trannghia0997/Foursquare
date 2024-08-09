import 'package:foursquare/shared/abstract_model.dart';
import 'package:foursquare/shared/json_nullable_type.dart';
import 'package:foursquare/shared/models/product.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'product_image.freezed.dart';
part 'product_image.g.dart';

@freezed
class ProductImage extends AbstractResourceModel with _$ProductImage {
  @JsonSerializable(includeIfNull: false)
  const factory ProductImage({
    String? id,
    String? imageUri,
    JsonNullableType<String>? altText,
    String? createdBy,
    DateTime? createdDate,
    String? lastModifiedBy,
    DateTime? lastModifiedDate,
    Product? product,
  }) = _ProductImage;

  factory ProductImage.fromJson(Map<String, Object?> json) =>
      _$ProductImageFromJson(json);
}
