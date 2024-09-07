import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:pocketbase/pocketbase.dart';

part 'product_image.freezed.dart';
part 'product_image.g.dart';

@freezed
class ProductImageDto with _$ProductImageDto {
  const factory ProductImageDto({
    @JsonKey(name: "id") required String id,
    @JsonKey(name: "collectionId") required String collectionId,
    @JsonKey(name: "collectionName") required String collectionName,
    @JsonKey(name: "created") required DateTime created,
    @JsonKey(name: "updated") required DateTime updated,
    @JsonKey(name: "imageUrl") required String imageUrl,
    @JsonKey(name: "altText") String? altText,
    @JsonKey(name: "productId") required String productId,
  }) = _ProductImageDto;

  factory ProductImageDto.fromJson(Map<String, Object?> json) =>
      _$ProductImageDtoFromJson(json);

  factory ProductImageDto.fromRecord(RecordModel obj) =>
      ProductImageDto.fromJson(obj.toJson());
}

@unfreezed
class ProductImageEditDto with _$ProductImageEditDto {
  @JsonSerializable(includeIfNull: false)
  factory ProductImageEditDto({
    @JsonKey(name: "imageUrl") required String imageUrl,
    @JsonKey(name: "altText") String? altText,
    @JsonKey(name: "productId") required String productId,
  }) = _ProductImageEditDto;

  factory ProductImageEditDto.fromJson(Map<String, Object?> json) =>
      _$ProductImageEditDtoFromJson(json);
}
