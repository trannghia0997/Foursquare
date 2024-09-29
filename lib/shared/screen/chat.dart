import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ChatScreen extends StatefulWidget {
  final String UserName;

  ChatScreen({required this.UserName});

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final TextEditingController _messageController = TextEditingController();
  List<File> images = [];
  final ImagePicker _picker = ImagePicker();

  // Function to send an image
  Future<void> _sendImage() async {
    final XFile? image = await _picker.pickImage(source: ImageSource.gallery);
    if (image != null) {
      setState(() {
        images.add(File(image.path));
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.UserName),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          Expanded(
            child: images.isNotEmpty
                ? ListView.builder(
                    itemCount: images.length,
                    itemBuilder: (context, index) {
                      return _buildImageMessage(images[index]);
                    },
                  )
                : const Center(
                    child: Text(
                      'Chưa có tin nhắn nào',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
          ),
          _buildMessageInput(),
        ],
      ),
    );
  }

  // Widget to build image messages
  Widget _buildImageMessage(File image) {
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
  Widget _buildMessageInput() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          IconButton(
            icon: const Icon(Icons.image, color: Colors.blue),
            onPressed: _sendImage,
          ),
          Expanded(
            child: TextField(
              controller: _messageController,
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
            icon: const Icon(Icons.send, color: Colors.red),
            onPressed: () {
              // Optional: Send message logic
            },
          ),
        ],
      ),
    );
  }
}
