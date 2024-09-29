import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:pocketbase/pocketbase.dart';

part 'product_quantity_summary.freezed.dart';
part 'product_quantity_summary.g.dart';

@freezed
class ProductQuantitySummaryView with _$ProductQuantitySummaryView {
  const factory ProductQuantitySummaryView({
    @JsonKey(name: "id") required String id,
    @JsonKey(name: "collectionId") required String collectionId,
    @JsonKey(name: "collectionName") required String collectionName,
    @JsonKey(name: "categoryId") required String categoryId,
    @JsonKey(name: "totalQty") required int totalQty,
  }) = _ProductQuantitySummaryView;

  factory ProductQuantitySummaryView.fromJson(Map<String, Object?> json) =>
      _$ProductQuantitySummaryViewFromJson(json);

  factory ProductQuantitySummaryView.fromRecord(RecordModel obj) =>
      ProductQuantitySummaryView.fromJson(obj.toJson());
}
