// ignore_for_file: file_names, use_key_in_widget_constructors, library_private_types_in_public_api, unnecessary_to_list_in_spreads

import 'package:flutter/material.dart';

String selectedLocation = locations.first;
List<String> locations = [
  'KTX Bách Khoa',
  'KTX Khu B',
  'KTX Khu C',
  'KTX Khu D',
];

// Trong phần onPressed của TextButton
class SelectAddress extends StatefulWidget {
  @override
  _SelectAddressState createState() => _SelectAddressState();
}

class _SelectAddressState extends State<SelectAddress> {
  String? selectedLocation;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Địa điểm giao hàng'),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Column(
            children: locations.map((location) {
              return RadioListTile<String>(
                title: Text(location),
                value: location,
                groupValue: selectedLocation,
                onChanged: (String? value) {
                  setState(() {
                    selectedLocation = value;
                  });
                },
              );
            }).toList(),
          ),
          ElevatedButton.icon(
            onPressed: () {},
            icon: const Icon(Icons.add),
            label: const Text('Thêm địa chỉ...'),
          )
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
