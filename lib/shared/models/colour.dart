import 'package:foursquare/shared/abstract_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'colour.freezed.dart';
part 'colour.g.dart';

@freezed
class Colour extends AbstractResourceModel with _$Colour {
  @JsonSerializable(includeIfNull: false)
  const factory Colour({
    String? id,
    String? name,
    String? hexCode,
    String? createdBy,
    DateTime? createdDate,
    String? lastModifiedBy,
    DateTime? lastModifiedDate,
  }) = _Colour;

  factory Colour.fromJson(Map<String, Object?> json) => _$ColourFromJson(json);
}
