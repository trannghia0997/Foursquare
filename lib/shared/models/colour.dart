import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:pocketbase/pocketbase.dart';

part 'colour.freezed.dart';
part 'colour.g.dart';

@freezed
class ColourDTO with _$ColourDTO {
  const factory ColourDTO({
    @JsonKey(name: "id") required String id,
    @JsonKey(name: "collectionId") required String collectionId,
    @JsonKey(name: "collectionName") required String collectionName,
    @JsonKey(name: "created") required DateTime created,
    @JsonKey(name: "updated") required DateTime updated,
    @JsonKey(name: "name") required String name,
    @JsonKey(name: "hexCode") required String hexCode,
  }) = _ColourDTO;

  factory ColourDTO.fromJson(Map<String, Object?> json) =>
      _$ColourDTOFromJson(json);

  factory ColourDTO.fromRecord(RecordModel obj) =>
      ColourDTO.fromJson(obj.toJson());
}

@unfreezed
class ColourEditDTO with _$ColourEditDTO {
  @JsonSerializable(includeIfNull: false)
  factory ColourEditDTO({
    @JsonKey(name: "name") required String name,
    @JsonKey(name: "hexCode") required String hexCode,
  }) = _ColourEditDTO;

  factory ColourEditDTO.fromJson(Map<String, Object?> json) =>
      _$ColourEditDTOFromJson(json);
}
