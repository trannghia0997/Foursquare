import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:pocketbase/pocketbase.dart';

part 'conversation_admin.freezed.dart';
part 'conversation_admin.g.dart';

@freezed
class ConversationAdminDto with _$ConversationAdminDto {
  const factory ConversationAdminDto({
    @JsonKey(name: "id") required String id,
    @JsonKey(name: "collectionId") required String collectionId,
    @JsonKey(name: "collectionName") required String collectionName,
    @JsonKey(name: "created") required DateTime created,
    @JsonKey(name: "updated") required DateTime updated,
    @JsonKey(name: "conversationId") required String conversationId,
    @JsonKey(name: "userId") required String userId,
  }) = _ConversationAdminDto;

  factory ConversationAdminDto.fromJson(Map<String, Object?> json) =>
      _$ConversationAdminDtoFromJson(json);

  factory ConversationAdminDto.fromRecord(RecordModel obj) =>
      ConversationAdminDto.fromJson(obj.toJson());
}

@unfreezed
class ConversationAdminEditDto with _$ConversationAdminEditDto {
  @JsonSerializable(includeIfNull: false)
  factory ConversationAdminEditDto({
    @JsonKey(name: "conversationId") required String conversationId,
    @JsonKey(name: "userId") required String userId,
  }) = _ConversationAdminEditDto;

  factory ConversationAdminEditDto.fromJson(Map<String, Object?> json) =>
      _$ConversationAdminEditDtoFromJson(json);
}
