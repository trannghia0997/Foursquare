import 'package:flutter/material.dart';
import 'package:foursquare/riverpod/chat.dart';
import 'package:foursquare/shared/image.dart';
import 'package:foursquare/shared/screen/chat.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ConversationScreen extends HookConsumerWidget {
  const ConversationScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final conversationInfoState = ref.watch(currentConversationInfoProvider);
    return Scaffold(
      body: RefreshIndicator.adaptive(
        onRefresh: () async {
          ref.invalidate(currentConversationInfoProvider);
        },
        child: conversationInfoState.when(
          data: (data) => ListView.builder(
            itemCount: data.length,
            itemBuilder: (context, index) {
              final conversationInfo = data[index];
              return _buildConversationTile(context, conversationInfo);
            },
          ),
          loading: () => const Center(
            child: CircularProgressIndicator(),
          ),
          error: (error, _) => Center(
            child: Text('Error: $error'),
          ),
        ),
      ),
    );
  }

  Widget _buildConversationTile(
      BuildContext context, ConversationInfo conversationInfo) {
    return Column(
      children: [
        ListTile(
          leading: CircleAvatar(
            radius: 32,
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
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => ChatScreen(
                  conversationInfo: conversationInfo,
                ),
              ),
            );
          },
        ),
        const Divider(),
      ],
    );
  }
}
