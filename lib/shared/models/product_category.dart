import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:pocketbase/pocketbase.dart';

part 'product_category.freezed.dart';
part 'product_category.g.dart';

@freezed
class ProductCategoryDto with _$ProductCategoryDto {
  const factory ProductCategoryDto({
    @JsonKey(name: "id") required String id,
    @JsonKey(name: "collectionId") required String collectionId,
    @JsonKey(name: "collectionName") required String collectionName,
    @JsonKey(name: "created") required DateTime created,
    @JsonKey(name: "updated") required DateTime updated,
    @JsonKey(name: "name") String? name,
    @JsonKey(name: "productId") required String productId,
    @JsonKey(name: "colourId") required String colourId,
  }) = _ProductCategoryDto;

  factory ProductCategoryDto.fromJson(Map<String, Object?> json) =>
      _$ProductCategoryDtoFromJson(json);

  factory ProductCategoryDto.fromRecord(RecordModel obj) =>
      ProductCategoryDto.fromJson(obj.toJson());
}

@unfreezed
class ProductCategoryEditDto with _$ProductCategoryEditDto {
  @JsonSerializable(includeIfNull: false)
  factory ProductCategoryEditDto({
    @JsonKey(name: "name") String? name,
    @JsonKey(name: "productId") required String productId,
    @JsonKey(name: "colourId") required String colourId,
  }) = _ProductCategoryEditDto;

  factory ProductCategoryEditDto.fromJson(Map<String, Object?> json) =>
      _$ProductCategoryEditDtoFromJson(json);
}
