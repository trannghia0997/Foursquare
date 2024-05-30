import 'package:foursquare_client/shared/base_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pocketbase/pocketbase.dart';
import 'package:flutter/foundation.dart';

part 'product.freezed.dart';
part 'product.g.dart';

@freezed
class Product with _$Product implements BaseModel {
  const factory Product({
    required String id,
    required DateTime created,
    required DateTime updated,
    required String name,
    required String description,
    required String provider,
    required String image,
    @JsonKey(includeFromJson: false, includeToJson: false) Uri? imageUri,
    @JsonKey(name: 'other_info') Map<String, Object?>? otherInfo,
    @JsonKey(includeFromJson: false, includeToJson: false) RecordModel? record,
  }) = _Product;

  factory Product.fromRecord(RecordModel record) =>
      Product.fromJson(record.toJson()).copyWith(record: record);

  factory Product.fromJson(Map<String, Object?> json) =>
      _$ProductFromJson(json);
}
