import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:pocketbase/pocketbase.dart';

part 'product_quantity_history.freezed.dart';
part 'product_quantity_history.g.dart';

@freezed
class ProductQuantityHistoryDto with _$ProductQuantityHistoryDto {
  const factory ProductQuantityHistoryDto({
    @JsonKey(name: "id") required String id,
    @JsonKey(name: "collectionId") required String collectionId,
    @JsonKey(name: "collectionName") required String collectionName,
    @JsonKey(name: "created") required DateTime created,
    @JsonKey(name: "updated") required DateTime updated,
    @JsonKey(name: "categoryId") required String categoryId,
    @JsonKey(name: "amountOfChange") required int amountOfChange,
  }) = _ProductQuantityHistoryDto;

  factory ProductQuantityHistoryDto.fromJson(Map<String, Object?> json) =>
      _$ProductQuantityHistoryDtoFromJson(json);

  factory ProductQuantityHistoryDto.fromRecord(RecordModel obj) =>
      ProductQuantityHistoryDto.fromJson(obj.toJson());
}
