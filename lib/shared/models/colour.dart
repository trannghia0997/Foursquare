import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:pocketbase/pocketbase.dart';

part 'colour.freezed.dart';
part 'colour.g.dart';

@freezed
class ColourDto with _$ColourDto {
  const factory ColourDto({
    @JsonKey(name: "id") required String id,
    @JsonKey(name: "collectionId") required String collectionId,
    @JsonKey(name: "collectionName") required String collectionName,
    @JsonKey(name: "created") required DateTime created,
    @JsonKey(name: "updated") required DateTime updated,
    @JsonKey(name: "name") required String name,
    @JsonKey(name: "hexCode") required String hexCode,
  }) = _ColourDto;

  factory ColourDto.fromJson(Map<String, Object?> json) =>
      _$ColourDtoFromJson(json);

  factory ColourDto.fromRecord(RecordModel obj) =>
      ColourDto.fromJson(obj.toJson());
}

@unfreezed
class ColourEditDto with _$ColourEditDto {
  @JsonSerializable(includeIfNull: false)
  factory ColourEditDto({
    @JsonKey(name: "name") required String name,
    @JsonKey(name: "hexCode") required String hexCode,
  }) = _ColourEditDto;

  factory ColourEditDto.fromJson(Map<String, Object?> json) =>
      _$ColourEditDtoFromJson(json);
}
