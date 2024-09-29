import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:pocketbase/pocketbase.dart';

part 'tag.freezed.dart';
part 'tag.g.dart';

@freezed
class TagDto with _$TagDto {
  const factory TagDto({
    @JsonKey(name: "id") required String id,
    @JsonKey(name: "collectionId") required String collectionId,
    @JsonKey(name: "collectionName") required String collectionName,
    @JsonKey(name: "created") required DateTime created,
    @JsonKey(name: "updated") required DateTime updated,
    @JsonKey(name: "name") required String name,
  }) = _TagDto;

  factory TagDto.fromJson(Map<String, Object?> json) => _$TagDtoFromJson(json);

  factory TagDto.fromRecord(RecordModel obj) => TagDto.fromJson(obj.toJson());
}

@unfreezed
class TagEditDto with _$TagEditDto {
  @JsonSerializable(includeIfNull: false)
  factory TagEditDto({
    @JsonKey(name: "name") required String name,
  }) = _TagEditDto;

  factory TagEditDto.fromJson(Map<String, Object?> json) =>
      _$TagEditDtoFromJson(json);
}
