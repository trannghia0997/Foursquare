import 'package:decimal/decimal.dart';
import 'package:foursquare/shared/abstract_model.dart';
import 'package:foursquare/shared/json_nullable_type.dart';
import 'package:foursquare/shared/models/tag.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'product.freezed.dart';
part 'product.g.dart';

@freezed
class Product extends AbstractResourceModel with _$Product {
  @JsonSerializable(includeIfNull: false)
  const factory Product({
    String? id,
    String? name,
    JsonNullableType<String>? description,
    Decimal? price,
    JsonNullableType<String>? provider,
    String? createdBy,
    DateTime? createdDate,
    String? lastModifiedBy,
    DateTime? lastModifiedDate,
    JsonNullableType<List<Tag>>? tags,
  }) = _Product;

  factory Product.fromJson(Map<String, Object?> json) =>
      _$ProductFromJson(json);
}
