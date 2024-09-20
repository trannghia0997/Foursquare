import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:foursquare/services/pb.dart';
import 'package:foursquare/shared/models/user.dart';
import 'package:string_validator/string_validator.dart';
import '../widgets/appbar_widget.dart';

class EditPhoneFormPage extends HookWidget {
  const EditPhoneFormPage({super.key});

  @override
  Widget build(BuildContext context) {
    final phoneController = useTextEditingController();
    final formKey = useMemoized(() => GlobalKey<FormState>());
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
                    } else if (isAlpha(value)) {
                      return 'Hãy chỉ điền số.';
                    } else if (value.length < 10) {
                      return 'Hãy điền đúng số điện thoại!';
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
                      if (formKey.currentState!.validate() &&
                          isNumeric(phoneController.text)) {
                        final phoneNumber =
                            "+84${phoneController.text.substring(1)}";
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
