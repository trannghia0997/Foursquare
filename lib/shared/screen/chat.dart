import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:foursquare/riverpod/chat.dart';
import 'package:foursquare/services/pb.dart';
import 'package:foursquare/shared/image.dart';
import 'package:foursquare/shared/models/enums/message_type.dart';
import 'package:foursquare/shared/models/message.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ChatScreen extends HookConsumerWidget {
  final ConversationInfo conversationInfo;

  const ChatScreen({super.key, required this.conversationInfo});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final messageController = useTextEditingController();
    final messageInfoByConversationState = ref.watch(
        messageInfoByConversationIdProvider(conversationInfo.conversation.id));
    late final List<MessageInfo> messageInfoList;
    messageInfoByConversationState.maybeWhen(
      data: (data) => messageInfoList = data,
      orElse: () => messageInfoList = [],
    );
    return Scaffold(
      appBar: AppBar(
        title: ListTile(
          contentPadding: const EdgeInsets.all(0),
          leading: CircleAvatar(
            backgroundImage: NetworkImage(
              generateRandomImageUrl(seed: conversationInfo.conversation.id),
            ),
          ),
          title: Text(conversationInfo.conversation.title),
          subtitle: Text(
            conversationInfo.participantList
                .take(5)
                .map((participant) => participant.user.name)
                .join(', '),
          ),
        ),
      ),
      body: RefreshIndicator.adaptive(
        onRefresh: () async {
          ref.invalidate(messageInfoByConversationIdProvider(
              conversationInfo.conversation.id));
        },
        child: Column(
          children: [
            Expanded(
              child: messageInfoList.isNotEmpty
                  ? ListView.builder(
                      reverse: true,
                      itemCount: messageInfoList.length,
                      itemBuilder: (context, index) {
                        final messageInfo = messageInfoList[index];
                        final isCurrentUser = messageInfo.sender.user.id ==
                            PBApp.instance.authStore.model?.id;
                        return ListTile(
                          tileColor: isCurrentUser
                              ? Colors.blue.withOpacity(0.1)
                              : Colors.white,
                          leading: CircleAvatar(
                            backgroundImage: NetworkImage(
                              generateRandomImageUrl(
                                  seed: messageInfo.sender.user.id),
                            ),
                          ),
                          title: Text(isCurrentUser
                              ? 'Bạn'
                              : messageInfo.sender.user.name),
                          subtitle: Text(messageInfo.message.content),
                        );
                      },
                    )
                  : const Center(
                      child: Text(
                        'Chưa có tin nhắn nào',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),
            ),
            buildMessageInput(ref, messageController),
          ],
        ),
      ),
    );
  }

  // Widget to build image messages
  Widget buildImageMessage(File image) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 16),
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.white, // Màu nền trắng
          borderRadius: BorderRadius.circular(15),
          border: Border.all(color: Colors.redAccent, width: 2),
        ),
        child: Image.file(image, height: 200),
      ),
    );
  }

  // Widget for message input
  Widget buildMessageInput(
      WidgetRef ref, TextEditingController messageController) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              controller: messageController,
              decoration: InputDecoration(
                hintText: 'Nhập tin nhắn...',
                hintStyle: const TextStyle(color: Colors.grey),
                contentPadding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25),
                  borderSide:
                      const BorderSide(color: Colors.redAccent, width: 2),
                ),
                filled: true,
                fillColor: Colors.white,
              ),
            ),
          ),
          const SizedBox(width: 10),
          IconButton(
            icon: const Icon(Icons.send, color: Colors.blue),
            onPressed: () async {
              if (messageController.text.isEmpty) return;
              final partipantId = conversationInfo.participantList
                  .firstWhere((participant) =>
                      participant.user.id == PBApp.instance.authStore.model?.id)
                  .participant
                  .id;
              final message = MessageEditDto(
                type: MessageType.text,
                content: messageController.text,
                participantId: partipantId,
              );
              await PBApp.instance.collection('messages').create(
                    body: message.toJson(),
                  );
              messageController.clear();
              ref.invalidate(messageInfoByConversationIdProvider(
                  conversationInfo.conversation.id));
            },
          ),
        ],
      ),
    );
  }
}
