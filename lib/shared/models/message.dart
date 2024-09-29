import 'package:foursquare/shared/models/enums/message_type.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:pocketbase/pocketbase.dart';

part 'message.freezed.dart';
part 'message.g.dart';

@freezed
class MessageDto with _$MessageDto {
  const factory MessageDto({
    @JsonKey(name: "id") required String id,
    @JsonKey(name: "collectionId") required String collectionId,
    @JsonKey(name: "collectionName") required String collectionName,
    @JsonKey(name: "created") required DateTime created,
    @JsonKey(name: "updated") required DateTime updated,
    @JsonKey(name: "type") required MessageType type,
    @JsonKey(name: "content") required String content,
    @JsonKey(name: "participantId") required String participantId,
    @JsonKey(name: "recipientIds") List<String>? recipientIds,
  }) = _MessageDto;

  factory MessageDto.fromJson(Map<String, Object?> json) =>
      _$MessageDtoFromJson(json);

  factory MessageDto.fromRecord(RecordModel obj) =>
      MessageDto.fromJson(obj.toJson());
}

@unfreezed
class MessageEditDto with _$MessageEditDto {
  @JsonSerializable(includeIfNull: false)
  factory MessageEditDto({
    @JsonKey(name: "type") required MessageType type,
    @JsonKey(name: "content") required String content,
    @JsonKey(name: "participantId") required String participantId,
    @JsonKey(name: "recipientIds") List<String>? recipientIds,
  }) = _MessageEditDto;

  factory MessageEditDto.fromJson(Map<String, Object?> json) =>
      _$MessageEditDtoFromJson(json);
}
