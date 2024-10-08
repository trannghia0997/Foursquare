import 'package:flutter/foundation.dart';
import 'package:foursquare/services/pb.dart';
import 'package:foursquare/shared/models/conversation.dart';
import 'package:foursquare/shared/models/conversation_admin.dart';
import 'package:foursquare/shared/models/message.dart';
import 'package:foursquare/shared/models/participant.dart';
import 'package:foursquare/shared/models/user.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat.g.dart';
part 'chat.freezed.dart';

@freezed
class ConversationInfo with _$ConversationInfo {
  const factory ConversationInfo({
    required ConversationDto conversation,
    required List<ConversationAdminInfo> adminList,
    required List<ParticipantInfo> participantList,
  }) = _ConversationInfo;
}

@freezed
class ParticipantInfo with _$ParticipantInfo {
  const factory ParticipantInfo({
    required ParticipantDto participant,
    required UserDto user,
  }) = _ParticipantInfo;
}

@freezed
class ConversationAdminInfo with _$ConversationAdminInfo {
  const factory ConversationAdminInfo({
    required ConversationAdminDto admin,
    required UserDto user,
  }) = _ConversationAdminInfo;
}

@freezed
class MessageInfo with _$MessageInfo {
  const factory MessageInfo({
    required MessageDto message,
    required ParticipantInfo sender,
    required int readCount,
  }) = _MessageInfo;
}

@riverpod
Future<List<ConversationInfo>> currentConversationInfo(
    CurrentConversationInfoRef ref) async {
  final records = await PBApp.instance.collection('conversations').getFullList(
        expand: 'conversation_admins_via_conversationId.userId,'
            'participants_via_conversationId.userId',
        sort: '-updated',
        batch: 100,
      );
  return records.map((records) {
    final conversation = ConversationDto.fromRecord(records);
    final admins = records.expand['conversation_admins_via_conversationId']
            ?.map(
              (e) => ConversationAdminInfo(
                admin: ConversationAdminDto.fromRecord(e),
                user: UserDto.fromRecord(e.expand['userId']!.first),
              ),
            )
            .toList() ??
        [];
    final participants = records.expand['participants_via_conversationId']
            ?.map(
              (e) => ParticipantInfo(
                participant: ParticipantDto.fromRecord(e),
                user: UserDto.fromRecord(e.expand['userId']!.first),
              ),
            )
            .toList() ??
        [];
    return ConversationInfo(
      conversation: conversation,
      adminList: admins,
      participantList: participants,
    );
  }).toList();
}

@riverpod
Future<List<MessageInfo>> messageInfoByConversationId(
    MessageInfoByConversationIdRef ref, String conversationId) async {
  final records = await PBApp.instance.collection('messages').getFullList(
        filter: 'participantId.conversationId = "$conversationId"',
        expand: 'participantId.userId',
        sort: '-created',
        batch: 100,
      );
  return records.map((records) {
    final message = MessageDto.fromRecord(records);
    final sender = ParticipantInfo(
      participant:
          ParticipantDto.fromRecord(records.expand['participantId']!.first),
      user: UserDto.fromRecord(
          records.expand['participantId']!.first.expand['userId']!.first),
    );
    return MessageInfo(
      message: message,
      sender: sender,
      readCount: message.recipientIds?.length ?? 0,
    );
  }).toList();
}
