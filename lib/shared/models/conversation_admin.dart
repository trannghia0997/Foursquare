import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:pocketbase/pocketbase.dart';

part 'conversation_admin.freezed.dart';
part 'conversation_admin.g.dart';

@freezed
class ConversationAdminDTO with _$ConversationAdminDTO {
  const factory ConversationAdminDTO({
    @JsonKey(name: "id") required String id,
    @JsonKey(name: "collectionId") required String collectionId,
    @JsonKey(name: "collectionName") required String collectionName,
    @JsonKey(name: "created") required DateTime created,
    @JsonKey(name: "updated") required DateTime updated,
    @JsonKey(name: "conversationId") required String conversationId,
    @JsonKey(name: "userId") required String userId,
  }) = _ConversationAdminDTO;

  factory ConversationAdminDTO.fromJson(Map<String, Object?> json) =>
      _$ConversationAdminDTOFromJson(json);

  factory ConversationAdminDTO.fromRecord(RecordModel obj) =>
      ConversationAdminDTO.fromJson(obj.toJson());
}

@unfreezed
class ConversationAdminEditDTO with _$ConversationAdminEditDTO {
  @JsonSerializable(includeIfNull: false)
  factory ConversationAdminEditDTO({
    @JsonKey(name: "conversationId") required String conversationId,
    @JsonKey(name: "userId") required String userId,
  }) = _ConversationAdminEditDTO;

  factory ConversationAdminEditDTO.fromJson(Map<String, Object?> json) =>
      _$ConversationAdminEditDTOFromJson(json);
}
