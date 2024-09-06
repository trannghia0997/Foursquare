import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:pocketbase/pocketbase.dart';

part 'product_quantity.freezed.dart';
part 'product_quantity.g.dart';

@freezed
class ProductQuantityDTO with _$ProductQuantityDTO {
  const factory ProductQuantityDTO({
    @JsonKey(name: "id") required String id,
    @JsonKey(name: "collectionId") required String collectionId,
    @JsonKey(name: "collectionName") required String collectionName,
    @JsonKey(name: "created") required DateTime created,
    @JsonKey(name: "updated") required DateTime updated,
    @JsonKey(name: "qty") int? qty,
    @JsonKey(name: "category_id") required String categoryId,
    @JsonKey(name: "working_unit_id") required String workingUnitId,
  }) = _ProductQuantityDTO;

  factory ProductQuantityDTO.fromJson(Map<String, Object?> json) =>
      _$ProductQuantityDTOFromJson(json);

  factory ProductQuantityDTO.fromRecord(RecordModel obj) =>
      ProductQuantityDTO.fromJson(obj.toJson());
}

@unfreezed
class ProductQuantityEditDTO with _$ProductQuantityEditDTO {
  @JsonSerializable(includeIfNull: false)
  factory ProductQuantityEditDTO({
    @JsonKey(name: "qty") int? qty,
    @JsonKey(name: "category_id") String? categoryId,
    @JsonKey(name: "working_unit_id") String? workingUnitId,
  }) = _ProductQuantityEditDTO;

  factory ProductQuantityEditDTO.fromJson(Map<String, Object?> json) =>
      _$ProductQuantityEditDTOFromJson(json);
}
