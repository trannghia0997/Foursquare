import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:foursquare/services/pb.dart';
import 'package:foursquare/shared/constants.dart';
import 'package:foursquare/shared/models/user.dart';
import '../widgets/appbar_widget.dart';

class EditPhoneFormPage extends HookWidget {
  const EditPhoneFormPage({super.key});

  @override
  Widget build(BuildContext context) {
    final userData = UserDto.fromRecord(PBApp.instance.authStore.model);
    final formKey = useMemoized(() => GlobalKey<FormState>());
    final phoneController = useTextEditingController(text: userData.phone);
    return Scaffold(
      appBar: buildAppBar(context),
      body: Form(
        key: formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            const SizedBox(
              width: 320,
              child: Text(
                "Số điện thoại của bạn là?",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 40),
              child: SizedBox(
                height: 80,
                width: 320,
                child: TextFormField(
                  // Handles Form Validation
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Hãy điền số điện thoại của bạn.';
                    } else if (!RegExp(validVietnamesePhoneNumberPattern)
                            .hasMatch(value) &&
                        !RegExp(validInternationalPhoneNumberPattern)
                            .hasMatch(value)) {
                      if (!RegExp(validInternationalPhoneNumberPattern)
                          .hasMatch(value)) {
                        return 'Hãy điền số điện thoại hợp lệ theo mẫu +84xxxxxxxxx';
                      }
                      return 'Hãy điền số điện thoại hợp lệ theo mẫu 0xxxxxxxxx';
                    }
                    return null;
                  },
                  controller: phoneController,
                  decoration: const InputDecoration(
                    labelText: 'Số điện thoại của bạn',
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 150),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: SizedBox(
                  width: 320,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () async {
                      // Validate returns true if the form is valid, or false otherwise.
                      if (formKey.currentState!.validate()) {
                        final phoneNumber = phoneController.text[0] == "0"
                            ? "+84${phoneController.text.substring(1)}"
                            : phoneController.text;
                        await PBApp.instance.collection("users").update(
                              PBApp.instance.authStore.model.id,
                              body: UserUpdateDto.fromJson(
                                PBApp.instance.authStore.model.toJson(),
                              )
                                  .copyWith(
                                    phone: phoneNumber,
                                  )
                                  .toJson(),
                            );
                        if (!context.mounted) return;
                        Navigator.pop(context);
                      }
                    },
                    child: const Text(
                      'Cập nhật',
                      style: TextStyle(fontSize: 15),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
