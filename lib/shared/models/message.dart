import 'package:foursquare/shared/abstract_model.dart';
import 'package:foursquare/shared/models/enums/message_type.dart';
import 'package:foursquare/shared/models/participant.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'message.freezed.dart';
part 'message.g.dart';

@freezed
class Message extends AbstractResourceModel with _$Message {
  @JsonSerializable(includeIfNull: false)
  const factory Message({
    String? id,
    MessageType? type,
    String? content,
    @JsonKey(defaultValue: false) bool? isSeen,
    String? createdBy,
    DateTime? createdDate,
    String? lastModifiedBy,
    DateTime? lastModifiedDate,
    @JsonKey(includeIfNull: true) Participant? participant,
  }) = _Message;

  factory Message.fromJson(Map<String, Object?> json) =>
      _$MessageFromJson(json);
}
