import 'package:foursquare_client/shared/base_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pocketbase/pocketbase.dart';
import 'package:flutter/foundation.dart';

part 'product_variant.freezed.dart';
part 'product_variant.g.dart';

@freezed
class ProductVariant with _$ProductVariant implements BaseModel {
  const factory ProductVariant({
    required String id,
    required DateTime created,
    required DateTime updated,
    @JsonKey(name: 'product_id') required String productId,
    @JsonKey(name: 'colour_id') required String colourId,
    required double price,
    required String image,
  }) = _ProductVariant;

  factory ProductVariant.fromRecord(RecordModel record) =>
      ProductVariant.fromJson(record.toJson());

  factory ProductVariant.fromJson(Map<String, Object?> json) =>
      _$ProductVariantFromJson(json);
}
