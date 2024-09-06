import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:pocketbase/pocketbase.dart';

part 'participant.freezed.dart';
part 'participant.g.dart';

@freezed
class ParticipantDTO with _$ParticipantDTO {
  const factory ParticipantDTO({
    @JsonKey(name: "id") required String id,
    @JsonKey(name: "collectionId") required String collectionId,
    @JsonKey(name: "collectionName") required String collectionName,
    @JsonKey(name: "created") required DateTime created,
    @JsonKey(name: "updated") required DateTime updated,
    @JsonKey(name: "conversation_id") required String conversationId,
    @JsonKey(name: "user_id") required String userId,
  }) = _ParticipantDTO;

  factory ParticipantDTO.fromJson(Map<String, Object?> json) =>
      _$ParticipantDTOFromJson(json);

  factory ParticipantDTO.fromRecord(RecordModel obj) =>
      ParticipantDTO.fromJson(obj.toJson());
}

@unfreezed
class ParticipantEditDTO with _$ParticipantEditDTO {
  @JsonSerializable(includeIfNull: false)
  factory ParticipantEditDTO({
    @JsonKey(name: "conversation_id") String? conversationId,
    @JsonKey(name: "user_id") String? userId,
  }) = _ParticipantEditDTO;

  factory ParticipantEditDTO.fromJson(Map<String, Object?> json) =>
      _$ParticipantEditDTOFromJson(json);
}
