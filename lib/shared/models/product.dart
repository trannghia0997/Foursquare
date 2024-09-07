import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:pocketbase/pocketbase.dart';

part 'product.freezed.dart';
part 'product.g.dart';

@freezed
class ProductDto with _$ProductDto {
  const factory ProductDto({
    @JsonKey(name: "id") required String id,
    @JsonKey(name: "collectionId") required String collectionId,
    @JsonKey(name: "collectionName") required String collectionName,
    @JsonKey(name: "created") required DateTime created,
    @JsonKey(name: "updated") required DateTime updated,
    @JsonKey(name: "name") required String name,
    @JsonKey(name: "description") String? description,
    @JsonKey(name: "expectedPrice") int? expectedPrice,
    @JsonKey(name: "provider") String? provider,
    @JsonKey(name: "tagIds") List<String>? tagIds,
  }) = _ProductDto;

  factory ProductDto.fromJson(Map<String, Object?> json) =>
      _$ProductDtoFromJson(json);

  factory ProductDto.fromRecord(RecordModel obj) =>
      ProductDto.fromJson(obj.toJson());
}

@unfreezed
class ProductEditDto with _$ProductEditDto {
  @JsonSerializable(includeIfNull: false)
  factory ProductEditDto({
    @JsonKey(name: "name") required String name,
    @JsonKey(name: "description") String? description,
    @JsonKey(name: "expectedPrice") int? expectedPrice,
    @JsonKey(name: "provider") String? provider,
    @JsonKey(name: "tagIds") List<String>? tagIds,
  }) = _ProductEditDto;

  factory ProductEditDto.fromJson(Map<String, Object?> json) =>
      _$ProductEditDtoFromJson(json);
}
