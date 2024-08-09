import 'package:foursquare/shared/abstract_model.dart';
import 'package:foursquare/shared/json_nullable_type.dart';
import 'package:foursquare/shared/models/conversation.dart';
import 'package:foursquare/shared/models/message.dart';
import 'package:foursquare/shared/models/user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'participant.freezed.dart';
part 'participant.g.dart';

@freezed
class Participant extends AbstractResourceModel with _$Participant {
  @JsonSerializable(includeIfNull: false)
  const factory Participant({
    String? id,
    @JsonKey(defaultValue: false) bool? isAdmin,
    String? createdBy,
    DateTime? createdDate,
    String? lastModifiedBy,
    DateTime? lastModifiedDate,
    User? user,
    Conversation? conversation,
    JsonNullableType<List<Message>>? seenMessages,
  }) = _Participant;

  factory Participant.fromJson(Map<String, Object?> json) =>
      _$ParticipantFromJson(json);
}
