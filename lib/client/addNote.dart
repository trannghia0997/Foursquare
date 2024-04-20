// ignore_for_file: file_names, use_key_in_widget_constructors

import 'package:flutter/material.dart';

class AddNote extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text("Thêm lưu ý về đơn hàng"),
      content: SizedBox(
        width: double.maxFinite,
        child: TextField(
          maxLines: null, // Cho phép nhiều dòng
          decoration: InputDecoration(
            hintText:
                "Nhập lưu ý về đơn hàng của bạn để chúng tôi có thể phục vụ bạn tốt hơn❤️",
            hintMaxLines: 3, // Số dòng tối đa cho hintText
            border: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.grey), // Màu viền
              borderRadius: BorderRadius.circular(10.0), // Bo tròn viền
            ),
            focusedBorder: OutlineInputBorder(
              borderSide:
                  const BorderSide(color: Colors.blue), // Màu viền khi focus
              borderRadius: BorderRadius.circular(10.0), // Bo tròn viền
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
            // Thực hiện các hành động khi người dùng nhấn nút lưu
            // Ví dụ: lưu lưu ý vào database hoặc thực hiện các xử lý khác
            Navigator.of(context).pop();
          },
        ),
      ],
    );
  }
}
