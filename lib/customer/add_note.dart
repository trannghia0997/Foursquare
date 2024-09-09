import 'package:flutter/material.dart';
import 'package:foursquare/riverpod/cart.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class AddNote extends HookConsumerWidget {
  const AddNote({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final TextEditingController noteController = TextEditingController();

    return AlertDialog(
      title: const Text("Thêm lưu ý về đơn hàng"),
      content: SizedBox(
        width: double.maxFinite,
        child: TextField(
          controller: noteController,
          maxLines: null,
          decoration: InputDecoration(
            hintText:
                "Nhập lưu ý về đơn hàng của bạn để chúng tôi có thể phục vụ bạn tốt hơn❤️",
            hintMaxLines: 3,
            border: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.grey),
              borderRadius: BorderRadius.circular(10.0),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.blue),
              borderRadius: BorderRadius.circular(10.0),
            ),
            contentPadding: const EdgeInsets.symmetric(vertical: 20.0),
          ),
        ),
      ),
      actions: <Widget>[
        TextButton(
          child: const Text("Đóng"),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        TextButton(
          child: const Text("Lưu"),
          onPressed: () {
            final note = noteController.text;
            ref.read(cartNotifierProvider.notifier).updateOrder(
                ref.read(cartNotifierProvider).order.copyWith(note: note));
            Navigator.of(context).pop();
          },
        ),
      ],
    );
  }
}
