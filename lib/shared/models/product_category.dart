import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:pocketbase/pocketbase.dart';

part 'product_category.freezed.dart';
part 'product_category.g.dart';

@freezed
class ProductCategoryDTO with _$ProductCategoryDTO {
  const factory ProductCategoryDTO({
    @JsonKey(name: "id") required String id,
    @JsonKey(name: "collectionId") required String collectionId,
    @JsonKey(name: "collectionName") required String collectionName,
    @JsonKey(name: "created") required DateTime created,
    @JsonKey(name: "updated") required DateTime updated,
    @JsonKey(name: "name") String? name,
    @JsonKey(name: "product_id") required String productId,
    @JsonKey(name: "colour_id") required String colourId,
  }) = _ProductCategoryDTO;

  factory ProductCategoryDTO.fromJson(Map<String, Object?> json) =>
      _$ProductCategoryDTOFromJson(json);

  factory ProductCategoryDTO.fromRecord(RecordModel obj) =>
      ProductCategoryDTO.fromJson(obj.toJson());
}

@unfreezed
class ProductCategoryEditDTO with _$ProductCategoryEditDTO {
  @JsonSerializable(includeIfNull: false)
  factory ProductCategoryEditDTO({
    @JsonKey(name: "name") String? name,
    @JsonKey(name: "product_id") String? productId,
    @JsonKey(name: "colour_id") String? colourId,
  }) = _ProductCategoryEditDTO;

  factory ProductCategoryEditDTO.fromJson(Map<String, Object?> json) =>
      _$ProductCategoryEditDTOFromJson(json);
}
