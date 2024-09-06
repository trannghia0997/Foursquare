import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:pocketbase/pocketbase.dart';

part 'tag.freezed.dart';
part 'tag.g.dart';

@freezed
class TagDTO with _$TagDTO {
  const factory TagDTO({
    @JsonKey(name: "id") required String id,
    @JsonKey(name: "collectionId") required String collectionId,
    @JsonKey(name: "collectionName") required String collectionName,
    @JsonKey(name: "created") required DateTime created,
    @JsonKey(name: "updated") required DateTime updated,
    @JsonKey(name: "name") required String name,
  }) = _TagDTO;

  factory TagDTO.fromJson(Map<String, Object?> json) => _$TagDTOFromJson(json);

  factory TagDTO.fromRecord(RecordModel obj) => TagDTO.fromJson(obj.toJson());
}

@unfreezed
class TagEditDTO with _$TagEditDTO {
  @JsonSerializable(includeIfNull: false)
  factory TagEditDTO({
    @JsonKey(name: "name") required String name,
  }) = _TagEditDTO;

  factory TagEditDTO.fromJson(Map<String, Object?> json) =>
      _$TagEditDTOFromJson(json);
}
