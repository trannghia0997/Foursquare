import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:foursquare/services/pb.dart';
import 'package:foursquare/shared/models/user.dart';
import '../widgets/appbar_widget.dart';

class EditNameFormPage extends HookWidget {
  const EditNameFormPage({super.key});

  @override
  Widget build(BuildContext context) {
    final userData = UserDto.fromRecord(PBApp.instance.authStore.model);
    final formKey = useMemoized(() => GlobalKey<FormState>());
    final nameController = useTextEditingController(text: userData.name);
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
                "Bạn muốn được gọi như thế nào?",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 40, 16, 0),
                  child: SizedBox(
                    height: 100,
                    width: 320,
                    child: TextFormField(
                      // Handles Form Validation for First Name
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Hãy điền tên gọi của bạn.';
                        } else if (!RegExp(r'^\w+$').hasMatch(value)) {
                          return 'Chỉ chấp nhận chữ cái.';
                        }
                        return null;
                      },
                      decoration: const InputDecoration(labelText: 'Tên gọi'),
                      controller: nameController,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 150),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: SizedBox(
                  width: 330,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () async {
                      if (formKey.currentState!.validate()) {
                        await PBApp.instance.collection("users").update(
                              PBApp.instance.authStore.model.id,
                              body: UserUpdateDto.fromJson(
                                PBApp.instance.authStore.model.toJson(),
                              )
                                  .copyWith(
                                    name: nameController.text,
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
            )
          ],
        ),
      ),
    );
  }
}
