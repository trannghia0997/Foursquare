import 'package:foursquare/services/address/models/address_notifier.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:foursquare/services/address/models/address.dart';
import 'package:foursquare/customer/add_address.dart';

class SelectAddress extends ConsumerStatefulWidget {
  const SelectAddress({super.key});

  @override
  ConsumerState<SelectAddress> createState() => _SelectAddressState();
}

class _SelectAddressState extends ConsumerState<SelectAddress> {
  late Address selectedAddress;

  @override
  void initState() {
    super.initState();
    if (listAddresses.isNotEmpty) {
      selectedAddress = listAddresses.first;
    }
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Địa điểm giao hàng'),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Column(
            children: listAddresses.map((location) {
              return RadioListTile<Address>(
                title: Text(
                    '${location.line1}, ${location.city}, ${location.country}'),
                value: location,
                groupValue: selectedAddress,
                onChanged: (Address? location) {
                  setState(() {
                    selectedAddress = location!;
                  });
                },
              );
            }).toList(),
          ),
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
    Navigator.of(context).pop();
  }

  void _selectLocation() {
    ref.read(addressProvider.notifier).selectAddress(selectedAddress);
    Navigator.of(context).pop();
  }
}
