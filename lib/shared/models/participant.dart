import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:pocketbase/pocketbase.dart';

part 'participant.freezed.dart';
part 'participant.g.dart';

@freezed
class ParticipantDto with _$ParticipantDto {
  const factory ParticipantDto({
    @JsonKey(name: "id") required String id,
    @JsonKey(name: "collectionId") required String collectionId,
    @JsonKey(name: "collectionName") required String collectionName,
    @JsonKey(name: "created") required DateTime created,
    @JsonKey(name: "updated") required DateTime updated,
    @JsonKey(name: "conversationId") required String conversationId,
    @JsonKey(name: "userId") required String userId,
  }) = _ParticipantDto;

  factory ParticipantDto.fromJson(Map<String, Object?> json) =>
      _$ParticipantDtoFromJson(json);

  factory ParticipantDto.fromRecord(RecordModel obj) =>
      ParticipantDto.fromJson(obj.toJson());
}

@unfreezed
class ParticipantEditDto with _$ParticipantEditDto {
  @JsonSerializable(includeIfNull: false)
  factory ParticipantEditDto({
    @JsonKey(name: "conversationId") required String conversationId,
    @JsonKey(name: "userId") required String userId,
  }) = _ParticipantEditDto;

  factory ParticipantEditDto.fromJson(Map<String, Object?> json) =>
      _$ParticipantEditDtoFromJson(json);
}
