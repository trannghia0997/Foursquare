import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:foursquare/profile/pages/add_address.dart';
import 'package:foursquare/riverpod/user_address.dart';
import 'package:foursquare/services/pb.dart';
import 'package:foursquare/shared/models/address.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../widgets/appbar_widget.dart';

class EditAddressFormPage extends HookConsumerWidget {
  const EditAddressFormPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userAddressList = ref.watch(currentUserAddressWithAddressProvider);
    return userAddressList.when(
      data: (value) => Scaffold(
        appBar: buildAppBar(context),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              const Text(
                "Các địa chỉ của bạn",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                textAlign: TextAlign.left,
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: value.length,
                  itemBuilder: (context, index) {
                    final address = value[index];
                    return ListTile(
                      title: Text(address.$2.fullAddress),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          IconButton(
                            icon: const Icon(Icons.edit),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => AddressForm(
                                    userAddressWithAddress: address,
                                  ),
                                ),
                              );
                            },
                          ),
                          IconButton(
                            icon: const Icon(Icons.delete),
                            onPressed: () async {
                              showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return AlertDialog(
                                    title: const Text('Xác nhận'),
                                    content: const Text(
                                        'Bạn có chắc chắn muốn xóa địa chỉ này không?'),
                                    actions: <Widget>[
                                      TextButton(
                                        onPressed: () {
                                          Navigator.of(context).pop();
                                        },
                                        child: const Text('Hủy'),
                                      ),
                                      TextButton(
                                        onPressed: () async {
                                          Navigator.of(context).pop();
                                          await PBApp.instance
                                              .collection('user_addresses')
                                              .delete(address.$1.id);
                                          try {
                                            await PBApp.instance
                                                .collection('addresses')
                                                .delete(address.$2.id);
                                          } catch (e) {
                                            // Ignore but print the error in debug mode
                                            if (kDebugMode) {
                                              debugPrint(e.toString());
                                            }
                                          } finally {
                                            ref.invalidate(
                                                currentUserAddressWithAddressProvider);
                                          }
                                        },
                                        child: const Text('Xóa'),
                                      ),
                                    ],
                                  );
                                },
                              );
                            },
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const AddressForm(),
                        ),
                      );
                    },
                    child: const Text(
                      'Thêm địa chỉ',
                      style: TextStyle(fontSize: 15),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      error: (error, stack) => Scaffold(
        appBar: buildAppBar(context),
        body: Center(
          child: Text('Error: $error'),
        ),
      ),
      loading: () => Scaffold(
        appBar: buildAppBar(context),
        body: const Center(
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }
}
