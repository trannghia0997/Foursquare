import 'package:foursquare_client/shared/base_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pocketbase/pocketbase.dart';
import 'package:flutter/foundation.dart';

part 'product_qty.freezed.dart';
part 'product_qty.g.dart';

@freezed
class ProductQuantity with _$ProductQuantity implements BaseModel {
  const factory ProductQuantity({
    required String id,
    required DateTime created,
    required DateTime updated,
    @JsonKey(name: 'work_unit_id') required String workUnitId,
    @JsonKey(name: 'product_variant_id') required String productVariantId,
    @JsonKey(name: 'qty') required double quantity,
  }) = _ProductQuantity;

  factory ProductQuantity.fromRecord(RecordModel record) =>
      ProductQuantity.fromJson(record.toJson());

  factory ProductQuantity.fromJson(Map<String, Object?> json) =>
      _$ProductQuantityFromJson(json);
}
