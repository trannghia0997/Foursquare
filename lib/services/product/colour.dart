import 'package:foursquare_client/shared/base_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pocketbase/pocketbase.dart';
import 'package:flutter/foundation.dart';

part 'colour.freezed.dart';
part 'colour.g.dart';

@freezed
class Colour with _$Colour implements BaseModel {
  const factory Colour({
    required String name,
    required String hex,
    @JsonKey(includeFromJson: false, includeToJson: false) RecordModel? record,
  }) = _Colour;

  factory Colour.fromRecord(RecordModel record) =>
      Colour.fromJson(record.toJson()).copyWith(record: record);

  factory Colour.fromJson(Map<String, Object?> json) => _$ColourFromJson(json);
}
