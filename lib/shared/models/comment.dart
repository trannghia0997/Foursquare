import 'package:foursquare/shared/abstract_model.dart';
import 'package:foursquare/shared/models/product.dart';
import 'package:foursquare/shared/models/user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'comment.freezed.dart';
part 'comment.g.dart';

@freezed
class Comment extends AbstractResourceModel with _$Comment {
  @JsonSerializable(includeIfNull: false)
  const factory Comment({
    String? id,
    int? rating,
    @JsonKey(includeIfNull: true) String? content,
    String? createdBy,
    DateTime? createdDate,
    String? lastModifiedBy,
    DateTime? lastModifiedDate,
    User? user,
    Product? product,
  }) = _Comment;

  factory Comment.fromJson(Map<String, Object?> json) =>
      _$CommentFromJson(json);
}
