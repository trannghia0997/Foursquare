import 'package:foursquare_client/shared/base_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pocketbase/pocketbase.dart';
import 'package:flutter/foundation.dart';

part 'conversation.freezed.dart';
part 'conversation.g.dart';

@freezed
class Conversation with _$Conversation implements BaseModel {
  const factory Conversation({
    required String title,
    required String user1,
    required String user2,
    @JsonKey(includeFromJson: false, includeToJson: false) RecordModel? record,
  }) = _Conversation;

  factory Conversation.fromRecord(RecordModel record) =>
      Conversation.fromJson(record.toJson()).copyWith(record: record);

  factory Conversation.fromJson(Map<String, Object?> json) =>
      _$ConversationFromJson(json);
}
