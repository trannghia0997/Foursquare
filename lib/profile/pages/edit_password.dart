import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import '../userData/user_data.dart';
import '../widgets/appbar_widget.dart';

class EditPasswordFormPage extends HookWidget {
  EditPasswordFormPage({super.key});
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final passwordController = useTextEditingController();
    var user = UserData.myUser;
    updateUserValue(String password) {
      user.password = password;
    }

    return Scaffold(
      appBar: buildAppBar(context),
      body: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            const SizedBox(
              width: 320,
              child: Text(
                "Đổi mật khẩu",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                textAlign: TextAlign.left,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 40),
              child: SizedBox(
                height: 100,
                width: 320,
                child: TextFormField(
                  // Handles Form Validation
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Hãy mật khẩu của bạn!';
                    }
                    return null;
                  },
                  decoration:
                      const InputDecoration(labelText: 'Mật khẩu của bạn'),
                  controller: passwordController,
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
                    onPressed: () {
                      // Validate returns true if the form is valid, or false otherwise.
                      updateUserValue(passwordController.text);
                      Navigator.pop(context);
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
