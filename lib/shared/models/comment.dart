import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:pocketbase/pocketbase.dart';

part 'comment.freezed.dart';
part 'comment.g.dart';

@freezed
class CommentDTO with _$CommentDTO {
  const factory CommentDTO({
    @JsonKey(name: "id") required String id,
    @JsonKey(name: "collectionId") required String collectionId,
    @JsonKey(name: "collectionName") required String collectionName,
    @JsonKey(name: "created") required DateTime created,
    @JsonKey(name: "updated") required DateTime updated,
    @JsonKey(name: "rating") int? rating,
    @JsonKey(name: "content") String? content,
    @JsonKey(name: "productId") required String productId,
    @JsonKey(name: "userId") required String userId,
  }) = _CommentDTO;

  factory CommentDTO.fromJson(Map<String, Object?> json) =>
      _$CommentDTOFromJson(json);

  factory CommentDTO.fromRecord(RecordModel obj) =>
      CommentDTO.fromJson(obj.toJson());
}

@unfreezed
class CommentEditDTO with _$CommentEditDTO {
  @JsonSerializable(includeIfNull: false)
  factory CommentEditDTO({
    @JsonKey(name: "rating") int? rating,
    @JsonKey(name: "content") String? content,
    @JsonKey(name: "productId") required String productId,
    @JsonKey(name: "userId") required String userId,
  }) = _CommentEditDTO;

  factory CommentEditDTO.fromJson(Map<String, Object?> json) =>
      _$CommentEditDTOFromJson(json);
}
