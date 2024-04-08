// ignore_for_file: file_names, unrelated_type_equality_checks

import 'package:flutter/material.dart';
import 'package:foursquare_client/client/homepage.dart';
import 'package:foursquare_client/preparer/Phomepage.dart';
import 'package:foursquare_client/shipper/Shomepage.dart';
import '../manager/Mhomepage.dart';
import '../profile/userData/user_data.dart';
import '../profile/userData/user.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    final bool isSmallScreen = MediaQuery.of(context).size.width < 600;
    return Scaffold(
      body: Center(
        child: isSmallScreen
            ? const Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  _Logo(),
                  _FormContent(),
                ],
              )
            : Container(
                padding: const EdgeInsets.all(32.0),
                constraints: const BoxConstraints(maxWidth: 800),
                child: const Row(
                  children: [
                    Expanded(child: _Logo()),
                    Expanded(
                      child: Center(child: _FormContent()),
                    ),
                  ],
                ),
              ),
      ),
    );
  }
}

class _Logo extends StatelessWidget {
  const _Logo();

  @override
  Widget build(BuildContext context) {
    final bool isSmallScreen = MediaQuery.of(context).size.width < 600;

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ClipRRect(
          borderRadius:
              BorderRadius.circular(12.0), // Adjust the radius as needed
          child: Image.network(
            'https://i.ibb.co/JFh4D7K/Screenshot-2023-11-02-092122.png',
            height: isSmallScreen ? 100 : 200,
          ),
        ),
        const SizedBox(
          height: 16,
        )
      ],
    );
  }
}

class _FormContent extends StatefulWidget {
  const _FormContent();

  @override
  State<_FormContent> createState() => __FormContentState();
}

class __FormContentState extends State<_FormContent> {
  bool _isPasswordVisible = false;
  bool _rememberMe = false;

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController emailOrPhoneController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  String? _emailOrPhoneError;
  String? _passwordError;

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(maxWidth: 300),
      child: Form(
        key: _formKey,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            /// Email hoặc số điện thoại
            TextFormField(
              controller: emailOrPhoneController,
              validator: (value) {
                // add email validation
                if (value == null || value.isEmpty) {
                  return 'Hãy điền email hoặc số điện thoại';
                }

                /// check email
                bool emailValid = RegExp(
                        r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                    .hasMatch(value);

                /// check phone number
                // bool phonenumberValid = RegExp(r"^[0-9]+").hasMatch(value);
                if (!emailValid) {
                  return 'Hãy điền đúng email/số điện thoại';
                }
                _emailOrPhoneError = null;

                return null;
              },
              decoration: InputDecoration(
                labelText: 'Email/Số điện thoại',
                hintText: 'Email hoặc số điện thoại',
                prefixIcon: const Icon(Icons.email_outlined),
                border: const OutlineInputBorder(),
                errorText: _emailOrPhoneError,
              ),
            ),
            _gap(),

            /// Password
            TextFormField(
              controller: passwordController,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Hãy điền mật khẩu';
                }

                if (value.length < 8) {
                  return 'Mật khẩu phải có ít nhất 8 kí tự';
                }

                _passwordError = null;
                return null;
              },
              obscureText: !_isPasswordVisible,
              decoration: InputDecoration(
                labelText: 'Mật khẩu',
                hintText: 'Mật khẩu',
                prefixIcon: const Icon(Icons.lock_outline_rounded),
                border: const OutlineInputBorder(),
                suffixIcon: IconButton(
                  icon: Icon(_isPasswordVisible
                      ? Icons.visibility_off
                      : Icons.visibility),
                  onPressed: () {
                    setState(() {
                      _isPasswordVisible = !_isPasswordVisible;
                    });
                  },
                ),
                errorText: _passwordError,
              ),
            ),
            _gap(),
            CheckboxListTile(
              value: _rememberMe,
              onChanged: (value) {
                if (value == null) return;
                setState(() {
                  _rememberMe = value;
                });
              },
              title: const Text('Ghi nhớ tài khoản'),
              controlAffinity: ListTileControlAffinity.leading,
              dense: true,
              contentPadding: const EdgeInsets.all(0),
            ),
            _gap(),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4)),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text(
                    'Đăng nhập',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),
                onPressed: () async {
                  if (_formKey.currentState?.validate() ?? false) {
                    // Successful validation, proceed with login

                    // Get the entered email/phone and password
                    String enteredEmailOrPhone = emailOrPhoneController.text;
                    String enteredPassword = passwordController.text;

                    // Retrieve the stored user data
                    User storedUser = UserData.getUser();

                    // Check if the entered credentials match the stored user data
                    if (enteredEmailOrPhone == storedUser.email ||
                        enteredEmailOrPhone == storedUser.phone) {
                      if (enteredPassword == storedUser.password) {
                        switch (storedUser.role) {
                          case Role.client:
                            // Navigate to client screen
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Homepage()),
                            );
                            break;
                          case Role.preparer:
                            // Navigate to preparer screen
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Phomepage()),
                            );
                            break;
                          case Role.shipper:
                            // Navigate to shipper screen
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Shomepage()),
                            );
                            break;
                          case Role.manager:
                            // Navigate to manager screen
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Mhomepage()),
                            );
                            break;
                        }
                      } else {
                        setState(() {
                          _passwordError = 'Mật khẩu không đúng';
                        });
                      }
                    } else {
                      setState(() {
                        _emailOrPhoneError = 'Người dùng không tồn tại';
                      });
                    }
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _gap() => const SizedBox(height: 16);
}
