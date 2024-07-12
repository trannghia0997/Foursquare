import 'package:foursquare/shared/models/enums/message_type.dart';
import 'package:foursquare/shared/models/participant.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'message.freezed.dart';
part 'message.g.dart';

@freezed
class Message with _$Message {
  @JsonSerializable(includeIfNull: false)
  const factory Message({
    String? id,
    MessageType? type,
    @JsonKey(includeIfNull: true) String? content,
    @JsonKey(defaultValue: false) bool? isSeen,
    String? createdBy,
    DateTime? createdDate,
    String? lastModifiedBy,
    DateTime? lastModifiedDate,
    Participant? participant,
  }) = _Message;

  factory Message.fromJson(Map<String, Object?> json) =>
      _$MessageFromJson(json);
}
