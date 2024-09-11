import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:foursquare/riverpod/cart.dart';
import 'package:foursquare/riverpod/user_address.dart';
import 'package:foursquare/shared/extension.dart';
import 'package:foursquare/shared/models/address.dart';
import 'package:foursquare/shared/models/user_address.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:foursquare/customer/add_address.dart';

class SelectAddress extends HookConsumerWidget {
  const SelectAddress({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var userAddress = ref.watch(userAddressWithAddressProvider);
    var listAddresses = <(UserAddressDto, AddressDto)>[];
    switch (userAddress) {
      case AsyncLoading():
        return const Center(child: CircularProgressIndicator());
      case AsyncData(:final value):
        listAddresses = value;
      case AsyncError(:final error):
        return Center(child: Text('Error: $error'));
    }
    final selectedAddress =
        useState(listAddresses.isNotEmpty ? listAddresses.first.$2 : null);

    return AlertDialog(
      title: const Text('Địa điểm giao hàng'),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Column(
            children: listAddresses.map((location) {
              return RadioListTile<AddressDto>(
                title: Text(
                  location.$2.fullAddress.excerpt(maxLength: 50),
                ),
                value: location.$2,
                groupValue: selectedAddress.value,
                onChanged: (AddressDto? location) {
                  selectedAddress.value = location!;
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
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: const Text('Hủy'),
        ),
        TextButton(
          onPressed: () {
            ref
                .read(cartNotifierProvider.notifier)
                .selectAddress(selectedAddress.value!.id);
            Navigator.of(context).pop();
          },
          child: const Text('Chọn'),
        ),
      ],
    );
  }
}
