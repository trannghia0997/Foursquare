import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:pocketbase/pocketbase.dart';

part 'conversation.freezed.dart';
part 'conversation.g.dart';

@freezed
class ConversationDto with _$ConversationDto {
  const factory ConversationDto({
    @JsonKey(name: "id") required String id,
    @JsonKey(name: "collectionId") required String collectionId,
    @JsonKey(name: "collectionName") required String collectionName,
    @JsonKey(name: "created") required DateTime created,
    @JsonKey(name: "updated") required DateTime updated,
    @JsonKey(name: "title") required String title,
  }) = _ConversationDto;

  factory ConversationDto.fromJson(Map<String, Object?> json) =>
      _$ConversationDtoFromJson(json);

  factory ConversationDto.fromRecord(RecordModel obj) =>
      ConversationDto.fromJson(obj.toJson());
}

@unfreezed
class ConversationEditDto with _$ConversationEditDto {
  @JsonSerializable(includeIfNull: false)
  factory ConversationEditDto({
    @JsonKey(name: "title") required String title,
  }) = _ConversationEditDto;

  factory ConversationEditDto.fromJson(Map<String, Object?> json) =>
      _$ConversationEditDtoFromJson(json);
}
