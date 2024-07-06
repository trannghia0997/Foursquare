// ignore_for_file: library_private_types_in_public_api

import 'package:Foursquare/services/address/models/address.dart';
import 'package:flutter/material.dart';
import 'package:Foursquare/customer/add_address.dart';

String selectedLocation = listAddresses.first.line1 + listAddresses.first.city;

// Trong phần onPressed của TextButton
class SelectAddress extends StatefulWidget {
  const SelectAddress({super.key});

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
            children: listAddresses.map((location) {
              return RadioListTile<String>(
                title: Text(
                    '${location.line1} ${location.country} ${location.country}'),
                value: location.line1,
                groupValue: selectedLocation,
                onChanged: (String? value) {
                  setState(() {
                    selectedLocation = value;
                  });
                },
              );
            }).toList(),
          ),
          // Thêm địa chỉ
          ElevatedButton.icon(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const AddAddress()),
              );
            },
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
