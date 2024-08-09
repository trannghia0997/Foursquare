import 'package:foursquare/shared/abstract_model.dart';
import 'package:foursquare/shared/json_nullable_type.dart';
import 'package:foursquare/shared/models/product.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'tag.freezed.dart';
part 'tag.g.dart';

@freezed
class Tag extends AbstractResourceModel with _$Tag {
  @JsonSerializable(includeIfNull: false)
  const factory Tag({
    String? id,
    String? name,
    String? createdBy,
    DateTime? createdDate,
    String? lastModifiedBy,
    DateTime? lastModifiedDate,
    JsonNullableType<List<Product>>? products,
  }) = _Tag;

  factory Tag.fromJson(Map<String, Object?> json) => _$TagFromJson(json);
}
