import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:foursquare/riverpod/user_address.dart';
import 'package:foursquare/services/pb.dart';
import 'package:foursquare/shared/models/address.dart';
import 'package:foursquare/shared/models/enums/address_type.dart';
import 'package:foursquare/shared/models/user_address.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class AddressForm extends HookConsumerWidget {
  const AddressForm({
    super.key,
    this.userAddressWithAddress,
  });

  final (UserAddressDto, AddressDto)? userAddressWithAddress;

  TextFormField buildTextFormField({
    required String labelText,
    required TextEditingController controller,
    bool required = false,
  }) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        labelText: labelText,
      ),
      validator: (value) {
        if (required && (value == null || value.isEmpty)) {
          return 'Vui lòng nhập $labelText';
        }
        return null;
      },
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final formKey = useMemoized(() => GlobalKey<FormState>());
    final line1Controller = useTextEditingController.fromValue(
      TextEditingValue(
        text: userAddressWithAddress?.$2.line1 ?? '',
      ),
    );
    final line2Controller = useTextEditingController.fromValue(
      TextEditingValue(
        text: userAddressWithAddress?.$2.line2 ?? '',
      ),
    );
    final cityController = useTextEditingController.fromValue(
      TextEditingValue(
        text: userAddressWithAddress?.$2.city ?? '',
      ),
    );
    final stateController = useTextEditingController.fromValue(
      TextEditingValue(
        text: userAddressWithAddress?.$2.state ?? '',
      ),
    );
    final countryController = useTextEditingController.fromValue(
      TextEditingValue(
        text: userAddressWithAddress?.$2.country ?? 'Việt Nam',
      ),
    );
    final postalCodeController = useTextEditingController.fromValue(
      TextEditingValue(
        text: userAddressWithAddress?.$2.zipOrPostcode ?? '',
      ),
    );
    final friendlyNameController = useTextEditingController.fromValue(
      TextEditingValue(
        text: userAddressWithAddress?.$1.friendlyName ?? '',
      ),
    );
    final isDefault = useState(userAddressWithAddress?.$1.isDefault ?? false);
    final addressType =
        useState(userAddressWithAddress?.$1.type ?? AddressType.home);
    return Scaffold(
      appBar: AppBar(
        title: userAddressWithAddress == null
            ? const Text('Thêm địa chỉ')
            : const Text('Xem và sửa địa chỉ'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(
          left: 16.0,
          right: 16.0,
          top: 16.0,
          bottom: 80.0,
        ),
        child: Form(
          autovalidateMode: AutovalidateMode.onUserInteraction,
          key: formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              buildTextFormField(
                labelText: 'Dòng 1',
                controller: line1Controller,
                required: true,
              ),
              buildTextFormField(
                labelText: 'Dòng 2',
                controller: line2Controller,
                required: false,
              ),
              buildTextFormField(
                labelText: 'Quận/Huyện/Thành phố',
                controller: cityController,
                required: true,
              ),
              buildTextFormField(
                labelText: 'Tỉnh/Thành phố',
                controller: stateController,
                required: true,
              ),
              buildTextFormField(
                labelText: 'Quốc gia',
                controller: countryController,
                required: true,
              ),
              buildTextFormField(
                labelText: 'Mã bưu chính',
                controller: postalCodeController,
                required: false,
              ),
              buildTextFormField(
                labelText: 'Tên gợi nhớ',
                controller: friendlyNameController,
                required: false,
              ),
              Material(
                child: CheckboxListTile(
                  title: const Text('Đặt làm địa chỉ mặc định'),
                  value: isDefault.value,
                  onChanged: (value) {
                    isDefault.value = value!;
                  },
                ),
              ),
              ListTile(
                title: const Text('Loại địa chỉ'),
                trailing: DropdownButton<AddressType>(
                  value: addressType.value,
                  onChanged: (value) {
                    addressType.value = value!;
                  },
                  items: AddressType.values
                      .map((e) => DropdownMenuItem(
                            value: e,
                            child: Text(switch (e) {
                              AddressType.home => "Nhà",
                              AddressType.work => "Công ty",
                              AddressType.billing => "Hóa đơn",
                              AddressType.shipping => "Giao hàng",
                              _ => "Khác",
                            }),
                          ))
                      .toList(),
                ),
              ),
              const SizedBox(height: 16.0),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: SizedBox(
        width: MediaQuery.of(context).size.width * 0.9,
        child: FloatingActionButton.extended(
          onPressed: () async {
            if (!formKey.currentState!.validate()) {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Vui lòng điền đầy đủ thông tin')),
              );
              return;
            }
            final address = AddressEditDto(
              line1: line1Controller.text,
              line2: line2Controller.text.isEmpty ? null : line2Controller.text,
              city: cityController.text,
              state: stateController.text,
              country: countryController.text,
            );
            final record = await PBApp.instance
                .collection('addresses')
                .create(body: address.toJson());
            final userAddress = UserAddressEditDto(
              type: addressType.value,
              friendlyName: friendlyNameController.text.isEmpty
                  ? null
                  : friendlyNameController.text,
              isDefault: isDefault.value,
              userId: PBApp.instance.authStore.model.id,
              addressId: record.id,
            );
            await PBApp.instance
                .collection('user_addresses')
                .create(body: userAddress.toJson());
            if (userAddressWithAddress != null) {
              await PBApp.instance
                  .collection('user_addresses')
                  .delete(userAddressWithAddress!.$1.id);
              try {
                await PBApp.instance
                    .collection('addresses')
                    .delete(userAddressWithAddress!.$2.id);
              } catch (e) {
                // Ignore but print the error in debug mode
                if (kDebugMode) {
                  debugPrint(e.toString());
                }
              }
              ref.invalidate(currentUserAddressWithAddressProvider);
              if (!context.mounted) return;
              Navigator.pop(context);
            }
          },
          label: const Text('Lưu và thoát'),
          icon: const Icon(Icons.save),
        ),
      ),
    );
  }
}
