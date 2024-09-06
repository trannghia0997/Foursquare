import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:pocketbase/pocketbase.dart';

part 'message.freezed.dart';
part 'message.g.dart';

@freezed
class MessageDTO with _$MessageDTO {
  const factory MessageDTO({
    @JsonKey(name: "id") required String id,
    @JsonKey(name: "collectionId") required String collectionId,
    @JsonKey(name: "collectionName") required String collectionName,
    @JsonKey(name: "created") required DateTime created,
    @JsonKey(name: "updated") required DateTime updated,
    @JsonKey(name: "type") required String type,
    @JsonKey(name: "content") required String content,
    @JsonKey(name: "participant_id") required String participantId,
    @JsonKey(name: "recipient_ids") List<String>? recipientIds,
  }) = _MessageDTO;

  factory MessageDTO.fromJson(Map<String, Object?> json) =>
      _$MessageDTOFromJson(json);

  factory MessageDTO.fromRecord(RecordModel obj) =>
      MessageDTO.fromJson(obj.toJson());
}

@unfreezed
class MessageEditDTO with _$MessageEditDTO {
  @JsonSerializable(includeIfNull: false)
  factory MessageEditDTO({
    @JsonKey(name: "type") String? type,
    @JsonKey(name: "content") String? content,
    @JsonKey(name: "participant_id") String? participantId,
    @JsonKey(name: "recipient_ids") List<String>? recipientIds,
  }) = _MessageEditDTO;

  factory MessageEditDTO.fromJson(Map<String, Object?> json) =>
      _$MessageEditDTOFromJson(json);
}
