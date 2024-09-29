import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:pocketbase/pocketbase.dart';

part 'comment.freezed.dart';
part 'comment.g.dart';

@freezed
class CommentDto with _$CommentDto {
  const factory CommentDto({
    @JsonKey(name: "id") required String id,
    @JsonKey(name: "collectionId") required String collectionId,
    @JsonKey(name: "collectionName") required String collectionName,
    @JsonKey(name: "created") required DateTime created,
    @JsonKey(name: "updated") required DateTime updated,
    @JsonKey(name: "rating") int? rating,
    @JsonKey(name: "content") String? content,
    @JsonKey(name: "productId") required String productId,
    @JsonKey(name: "userId") required String userId,
  }) = _CommentDto;

  factory CommentDto.fromJson(Map<String, Object?> json) =>
      _$CommentDtoFromJson(json);

  factory CommentDto.fromRecord(RecordModel obj) =>
      CommentDto.fromJson(obj.toJson());
}

@unfreezed
class CommentEditDto with _$CommentEditDto {
  @JsonSerializable(includeIfNull: false)
  factory CommentEditDto({
    @JsonKey(name: "rating") int? rating,
    @JsonKey(name: "content") String? content,
    @JsonKey(name: "productId") required String productId,
    @JsonKey(name: "userId") required String userId,
  }) = _CommentEditDto;

  factory CommentEditDto.fromJson(Map<String, Object?> json) =>
      _$CommentEditDtoFromJson(json);
}
