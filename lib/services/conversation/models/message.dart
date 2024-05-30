import 'package:foursquare_client/shared/base_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pocketbase/pocketbase.dart';
import 'package:flutter/foundation.dart';

part 'message.freezed.dart';
part 'message.g.dart';

enum MessageType {
  @JsonValue('text')
  text,
  @JsonValue('image')
  image,
  @JsonValue('other')
  other,
}

@freezed
class Message with _$Message implements BaseModel {
  const factory Message({
    @JsonKey(name: 'conversation_id') required String conversationId,
    @JsonKey(name: 'user_id') required String userId,
    required MessageType type,
    String? file,
    String? content,
    @JsonKey(name: 'is_seen') required bool isSeen,
    @JsonKey(includeFromJson: false, includeToJson: false) RecordModel? record,
  }) = _Message;

  factory Message.fromRecord(RecordModel record) =>
      Message.fromJson(record.toJson()).copyWith(record: record);

  factory Message.fromJson(Map<String, Object?> json) =>
      _$MessageFromJson(json);
}
