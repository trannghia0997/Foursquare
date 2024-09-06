import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:pocketbase/pocketbase.dart';

part 'conversation.freezed.dart';
part 'conversation.g.dart';

@freezed
class ConversationDTO with _$ConversationDTO {
  const factory ConversationDTO({
    @JsonKey(name: "id") required String id,
    @JsonKey(name: "collectionId") required String collectionId,
    @JsonKey(name: "collectionName") required String collectionName,
    @JsonKey(name: "created") required DateTime created,
    @JsonKey(name: "updated") required DateTime updated,
    @JsonKey(name: "title") required String title,
  }) = _ConversationDTO;

  factory ConversationDTO.fromJson(Map<String, Object?> json) =>
      _$ConversationDTOFromJson(json);

  factory ConversationDTO.fromRecord(RecordModel obj) =>
      ConversationDTO.fromJson(obj.toJson());
}

@unfreezed
class ConversationEditDTO with _$ConversationEditDTO {
  @JsonSerializable(includeIfNull: false)
  factory ConversationEditDTO({
    @JsonKey(name: "title") String? title,
  }) = _ConversationEditDTO;

  factory ConversationEditDTO.fromJson(Map<String, Object?> json) =>
      _$ConversationEditDTOFromJson(json);
}
