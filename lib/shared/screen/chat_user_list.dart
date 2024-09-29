import 'package:flutter/material.dart';
import './chat.dart';

class User {
  final String name;
  final String lastMessage;
  final String avatarUrl;
  final String date;
  final int unreadMessages;

  User({
    required this.name,
    required this.lastMessage,
    required this.avatarUrl,
    required this.date,
    required this.unreadMessages,
  });
}

class ChatUserListScreen extends StatelessWidget {
  final List<User> users = [
    User(
      name: "Nguyễn Văn A",
      lastMessage: "Tin nhắn cuối cùng từ người này...",
      avatarUrl: "https://via.placeholder.com/150",
      date: "27/09/2024",
      unreadMessages: 3,
    ),
    User(
      name: "Trần Thị B",
      lastMessage: "Chào bạn!",
      avatarUrl: "https://via.placeholder.com/150",
      date: "27/09/2024",
      unreadMessages: 0,
    ),
  ];

  ChatUserListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Chat'),
        backgroundColor: Colors.blue,
      ),
      body: ListView.builder(
        itemCount: users.length,
        itemBuilder: (context, index) {
          return _buildUserTile(context, users[index]);
        },
      ),
    );
  }

  Widget _buildUserTile(BuildContext context, User user) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ChatScreen(UserName: user.name),
          ),
        );
      },
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
        child: Row(
          children: [
            CircleAvatar(
              radius: 30,
              backgroundImage: NetworkImage(user.avatarUrl),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    user.name,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    user.lastMessage,
                    style: const TextStyle(
                      fontSize: 14,
                      color: Colors.grey,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  user.date,
                  style: const TextStyle(
                    fontSize: 12,
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(height: 5),
                if (user.unreadMessages > 0)
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Text(
                      "${user.unreadMessages}",
                      style: const TextStyle(
                        fontSize: 12,
                        color: Colors.white,
                      ),
                    ),
                  ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
