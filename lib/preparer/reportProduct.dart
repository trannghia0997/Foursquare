// ignore_for_file: file_names, use_key_in_widget_constructors, library_private_types_in_public_api

import 'package:flutter/material.dart';

String selectedProblem = problems.first;
List<String> problems = [
  'Không đủ số lượng mặt hàng này trong kho',
  'Yêu cầu của khách về loại không thể đáp ứng',
  'Cần thêm thông tin để hoàn thiện mặt hàng',
];

class ReportProduct extends StatefulWidget {
  @override
  _ReportProductState createState() => _ReportProductState();
}

class _ReportProductState extends State<ReportProduct> {
  String? selectedProblem;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Vấn đề với mặt hàng'),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Column(
            children: problems.map((location) {
              return RadioListTile<String>(
                title: Text(location),
                value: location,
                groupValue: selectedProblem,
                onChanged: (String? value) {
                  setState(() {
                    selectedProblem = value;
                  });
                },
              );
            }).toList(),
          ),
          TextField(
            maxLines: null,
            decoration: InputDecoration(
              hintText: "Nhập lý do về mặt hàng không thể hoàn thiện ❤️",
              hintMaxLines: 3,
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
        ],
      ),
      actions: <Widget>[
        TextButton(
          onPressed: _cancel,
          child: const Text('Hủy'),
        ),
        TextButton(
          onPressed: _selectLocation,
          child: const Text('Chọn'),
        ),
      ],
    );
  }

  void _cancel() {
    Navigator.of(context).pop(); // Đóng AlertDialog
  }

  void _selectLocation() {
    // Xử lý khi người dùng chọn xong địa điểm
    Navigator.of(context).pop(); // Đóng AlertDialog
  }
}
