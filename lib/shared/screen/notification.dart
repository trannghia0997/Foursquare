import 'package:flutter/material.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.check),
      ),
      body: const Center(
        child: Text(
          'Không có thông báo',
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
