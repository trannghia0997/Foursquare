import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:pocketbase/pocketbase.dart';

part 'product.freezed.dart';
part 'product.g.dart';

@freezed
class ProductDTO with _$ProductDTO {
  const factory ProductDTO({
    @JsonKey(name: "id") required String id,
    @JsonKey(name: "collectionId") required String collectionId,
    @JsonKey(name: "collectionName") required String collectionName,
    @JsonKey(name: "created") required DateTime created,
    @JsonKey(name: "updated") required DateTime updated,
    @JsonKey(name: "name") required String name,
    @JsonKey(name: "description") String? description,
    @JsonKey(name: "expected_price") int? expectedPrice,
    @JsonKey(name: "provider") String? provider,
    @JsonKey(name: "tag_ids") List<String>? tagIds,
  }) = _ProductDTO;

  factory ProductDTO.fromJson(Map<String, Object?> json) =>
      _$ProductDTOFromJson(json);

  factory ProductDTO.fromRecord(RecordModel obj) =>
      ProductDTO.fromJson(obj.toJson());
}

@unfreezed
class ProductEditDTO with _$ProductEditDTO {
  @JsonSerializable(includeIfNull: false)
  factory ProductEditDTO({
    @JsonKey(name: "name") String? name,
    @JsonKey(name: "description") String? description,
    @JsonKey(name: "expected_price") int? expectedPrice,
    @JsonKey(name: "provider") String? provider,
    @JsonKey(name: "tag_ids") List<String>? tagIds,
  }) = _ProductEditDTO;

  factory ProductEditDTO.fromJson(Map<String, Object?> json) =>
      _$ProductEditDTOFromJson(json);
}
