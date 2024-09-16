import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:foursquare/riverpod/user_address.dart';
import 'package:foursquare/services/pb.dart';
import 'package:foursquare/shared/models/address.dart';
import 'package:foursquare/shared/models/enums/address_type.dart';
import 'package:foursquare/shared/models/user_address.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class AddAddress extends HookConsumerWidget {
  const AddAddress({super.key});

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
    final line1Controller = useTextEditingController();
    final line2Controller = useTextEditingController();
    final cityController = useTextEditingController();
    final stateController = useTextEditingController();
    final countryController = useTextEditingController(text: 'Việt Nam');
    final postalCodeController = useTextEditingController();
    final friendlyNameController = useTextEditingController();
    final isDefault = useState(false);
    final addressType = useState(AddressType.home);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Address'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
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
              CheckboxListTile(
                title: const Text('Đặt làm địa chỉ mặc định'),
                value: isDefault.value,
                onChanged: (value) {
                  isDefault.value = value!;
                },
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
              const SizedBox(height: 20.0),
              ElevatedButton(
                onPressed: () async {
                  if (formKey.currentState!.validate()) {
                    final address = AddressEditDto(
                      line1: line1Controller.text,
                      line2: line2Controller.text.isEmpty
                          ? null
                          : line2Controller.text,
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
                    // Refresh the list of addresses
                    ref.invalidate(currentUserAddressWithAddressProvider);
                  }
                },
                child: const Text('Save Address'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
