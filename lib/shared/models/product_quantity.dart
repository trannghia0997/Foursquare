import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:pocketbase/pocketbase.dart';

part 'product_quantity.freezed.dart';
part 'product_quantity.g.dart';

@freezed
class ProductQuantityDto with _$ProductQuantityDto {
  const factory ProductQuantityDto({
    @JsonKey(name: "id") required String id,
    @JsonKey(name: "collectionId") required String collectionId,
    @JsonKey(name: "collectionName") required String collectionName,
    @JsonKey(name: "created") required DateTime created,
    @JsonKey(name: "updated") required DateTime updated,
    @JsonKey(name: "priority") required int priority,
    @JsonKey(name: "qty") int? qty,
    @JsonKey(name: "categoryId") required String categoryId,
    @JsonKey(name: "workingUnitId") required String workingUnitId,
  }) = _ProductQuantityDto;

  factory ProductQuantityDto.fromJson(Map<String, Object?> json) =>
      _$ProductQuantityDtoFromJson(json);

  factory ProductQuantityDto.fromRecord(RecordModel obj) =>
      ProductQuantityDto.fromJson(obj.toJson());
}

@unfreezed
class ProductQuantityEditDto with _$ProductQuantityEditDto {
  @JsonSerializable(includeIfNull: false)
  factory ProductQuantityEditDto({
    @JsonKey(name: "priority") required int priority,
    @JsonKey(name: "qty") int? qty,
    @JsonKey(name: "categoryId") required String categoryId,
    @JsonKey(name: "workingUnitId") required String workingUnitId,
  }) = _ProductQuantityEditDto;

  factory ProductQuantityEditDto.fromJson(Map<String, Object?> json) =>
      _$ProductQuantityEditDtoFromJson(json);
}
