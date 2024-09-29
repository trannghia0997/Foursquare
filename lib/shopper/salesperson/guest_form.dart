import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:foursquare/riverpod/cart.dart';
import 'package:foursquare/riverpod/guest_info.dart';
import 'package:foursquare/services/pb.dart';
import 'package:foursquare/shared/constants.dart';
import 'package:foursquare/shared/models/address.dart';
import 'package:foursquare/shared/models/guest_info.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class GuestEditFormPage extends HookConsumerWidget {
  const GuestEditFormPage({this.guestInfo, super.key});

  final GuestInfo? guestInfo;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final formKey = useMemoized(() => GlobalKey<FormState>());

    final nameController = useTextEditingController.fromValue(
      TextEditingValue(
        text: guestInfo?.guest.name ?? '',
      ),
    );
    final phoneController = useTextEditingController.fromValue(
      TextEditingValue(
        text: guestInfo?.guest.phone ?? '',
      ),
    );
    final emailController = useTextEditingController.fromValue(
      TextEditingValue(
        text: guestInfo?.guest.email ?? '',
      ),
    );
    final line1Controller = useTextEditingController.fromValue(
      TextEditingValue(
        text: guestInfo?.address.line1 ?? '',
      ),
    );
    final line2Controller = useTextEditingController.fromValue(
      TextEditingValue(
        text: guestInfo?.address.line2 ?? '',
      ),
    );
    final cityController = useTextEditingController.fromValue(
      TextEditingValue(
        text: guestInfo?.address.city ?? '',
      ),
    );
    final stateController = useTextEditingController.fromValue(
      TextEditingValue(
        text: guestInfo?.address.state ?? '',
      ),
    );
    final countryController = useTextEditingController.fromValue(
      TextEditingValue(
        text: guestInfo?.address.country ?? '',
      ),
    );
    final zipOrPostcodeController = useTextEditingController.fromValue(
      TextEditingValue(
        text: guestInfo?.address.zipOrPostcode ?? '',
      ),
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text('Thêm khách hàng'),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(
            left: 16,
            right: 16,
            top: 16,
            bottom: MediaQuery.of(context).size.height * 0.1,
          ),
          child: Form(
            autovalidateMode: AutovalidateMode.onUserInteraction,
            key: formKey,
            child: ListView(
              children: <Widget>[
                TextFormField(
                  controller: nameController,
                  decoration: const InputDecoration(labelText: 'Tên'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Vui lòng nhập tên';
                    }
                    if (value.length > 256) {
                      return 'Tên không được quá 256 ký tự';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  controller: phoneController,
                  decoration: const InputDecoration(labelText: 'Số điện thoại'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Vui lòng nhập số điện thoại';
                    }
                    if (!RegExp(validVietnamesePhoneNumberPattern)
                            .hasMatch(value) &&
                        !RegExp(validInternationalPhoneNumberPattern)
                            .hasMatch(value)) {
                      return 'Đinh dạng số điện thoại không hợp lệ';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  controller: emailController,
                  decoration:
                      const InputDecoration(labelText: 'Email (nếu có)'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return null;
                    }
                    if (!RegExp(validEmailPattern).hasMatch(value)) {
                      return 'Định dạng email không hợp lệ';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  controller: line1Controller,
                  decoration:
                      const InputDecoration(labelText: 'Địa chỉ dòng 1'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Vui lòng nhập địa chỉ dòng 1';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  controller: line2Controller,
                  decoration: const InputDecoration(
                      labelText: 'Địa chỉ dòng 2 (nếu có)'),
                ),
                TextFormField(
                  controller: cityController,
                  decoration:
                      const InputDecoration(labelText: 'Quận/Huyện/Thành phố'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Vui lòng nhập quận/huyện/thành phố';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  controller: stateController,
                  decoration:
                      const InputDecoration(labelText: 'Tỉnh/Thành phố'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Vui lòng nhập tỉnh/thành phố';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  controller: countryController,
                  decoration: const InputDecoration(labelText: 'Quốc gia'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Vui lòng nhập quốc gia';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  controller: zipOrPostcodeController,
                  decoration:
                      const InputDecoration(labelText: 'Mã bưu chính (nếu có)'),
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: SizedBox(
        width: MediaQuery.of(context).size.width * 0.9,
        child: FloatingActionButton.extended(
          onPressed: () async {
            if (formKey.currentState!.validate()) {
              final addressEdit = AddressEditDto(
                line1: line1Controller.text,
                line2: line2Controller.text,
                city: cityController.text,
                state: stateController.text,
                country: countryController.text,
                zipOrPostcode: zipOrPostcodeController.text,
              );
              final address =
                  await PBApp.instance.collection('addresses').create(
                        body: addressEdit.toJson(),
                      );
              final guestEdit = GuestInfoEditDto(
                name: nameController.text,
                phone: phoneController.text,
                email: emailController.text,
                addressId: address.id,
              );
              ref.invalidate(singleGuestInfoOrNullProvider);
              if (guestInfo == null) {
                await PBApp.instance.collection('guest_info').create(
                      body: guestEdit.toJson(),
                    );
              } else {
                await PBApp.instance.collection('guest_info').update(
                      guestInfo!.guest.id,
                      body: guestEdit.toJson(),
                    );
                try {
                  await PBApp.instance.collection('addresses').delete(
                        guestInfo!.address.id,
                      );
                } catch (e) {
                  if (kDebugMode) {
                    debugPrint(e.toString());
                  }
                }
              }
              ref.read(cartNotifierProvider.notifier).updateOrder(
                    ref.read(cartNotifierProvider).order.copyWith(
                          guestId: guestInfo?.guest.id ?? '',
                          addressId: address.id,
                        ),
                  );
              if (!context.mounted) return;
              await showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: const Text('Thành công'),
                    content: const Text(
                        'Thông tin khách hàng đã được thêm thành công.'),
                    actions: <Widget>[
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                          Navigator.of(context).pop();
                        },
                        child: const Text('Đi đến thanh toán'),
                      ),
                    ],
                  );
                },
              );
            }
          },
          icon: guestInfo == null
              ? const Icon(Icons.add)
              : const Icon(Icons.save),
          label: guestInfo == null
              ? const Text(
                  'Thêm thông tin khách hàng',
                )
              : const Text(
                  'Cập nhật thông tin khách hàng',
                ),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        ),
      ),
    );
  }
}
