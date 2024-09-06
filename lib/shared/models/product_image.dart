import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:pocketbase/pocketbase.dart';

part 'product_image.freezed.dart';
part 'product_image.g.dart';

@freezed
class ProductImageDTO with _$ProductImageDTO {
  const factory ProductImageDTO({
    @JsonKey(name: "id") required String id,
    @JsonKey(name: "collectionId") required String collectionId,
    @JsonKey(name: "collectionName") required String collectionName,
    @JsonKey(name: "created") required DateTime created,
    @JsonKey(name: "updated") required DateTime updated,
    @JsonKey(name: "image_url") required String imageUrl,
    @JsonKey(name: "alt_text") String? altText,
    @JsonKey(name: "product_id") required String productId,
  }) = _ProductImageDTO;

  factory ProductImageDTO.fromJson(Map<String, Object?> json) =>
      _$ProductImageDTOFromJson(json);

  factory ProductImageDTO.fromRecord(RecordModel obj) =>
      ProductImageDTO.fromJson(obj.toJson());
}

@unfreezed
class ProductImageEditDTO with _$ProductImageEditDTO {
  @JsonSerializable(includeIfNull: false)
  factory ProductImageEditDTO({
    @JsonKey(name: "image_url") String? imageUrl,
    @JsonKey(name: "alt_text") String? altText,
    @JsonKey(name: "product_id") String? productId,
  }) = _ProductImageEditDTO;

  factory ProductImageEditDTO.fromJson(Map<String, Object?> json) =>
      _$ProductImageEditDTOFromJson(json);
}
