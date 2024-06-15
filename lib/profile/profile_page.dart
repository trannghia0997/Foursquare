import 'dart:async';

import 'package:flutter/material.dart';
import 'package:foursquare_client/profile/pages/edit_address.dart';
import 'package:foursquare_client/services/auth/service.dart';
import 'package:go_router/go_router.dart';
import 'pages/edit_email.dart';
import 'pages/edit_image.dart';
import 'pages/edit_name.dart';
import 'pages/edit_phone.dart';
import 'pages/edit_password.dart';
import './widgets/display_image_widget.dart';
import 'userData/user_data.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  ProfilePageState createState() => ProfilePageState();
}

class ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    final user = UserData.myUser;
    user.addresses;

    return Scaffold(
      body: Column(
        children: [
          AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            toolbarHeight: 10,
          ),
          InkWell(
            onTap: () {
              navigateSecondPage(const EditImagePage());
            },
            child: DisplayImage(
              imagePath: user.image,
              onPressed: () {},
            ),
          ),
          buildUserInfoDisplay(user.name, 'Tên', EditNameFormPage()),
          buildUserInfoDisplay(
              user.phone, 'Số điện thoại', EditPhoneFormPage()),
          buildUserInfoDisplay(user.email, 'Email', EditEmailFormPage()),
          buildUserInfoDisplay(
              user.addresses.first, 'Địa chỉ', EditAddressFormPage()),
          buildUserInfoDisplay(null, 'Mật khẩu', EditPasswordFormPage()),
          ElevatedButton.icon(
            onPressed: () async {
              final AuthService authService = AuthService();
              await authService.logout();
              if (!context.mounted) return;
              context.go('/login');
            },
            icon: const Icon(Icons.exit_to_app_outlined),
            label: const Text('Đăng xuất'),
          )
        ],
      ),
    );
  }

  // Widget builds the display item with the proper formatting to display the user's info
  Widget buildUserInfoDisplay(
          String? getValue, String title, Widget editPage) =>
      Padding(
        padding: const EdgeInsets.only(bottom: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w500,
                color: Colors.grey,
              ),
            ),
            const SizedBox(
              height: 1,
            ),
            Container(
              width: 350,
              height: 40,
              decoration: const BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Colors.grey,
                    width: 1,
                  ),
                ),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: TextButton(
                      onPressed: () {
                        navigateSecondPage(editPage);
                      },
                      child: Text(
                        getValue ??
                            "********", // If getValue is null, use an empty string
                        style: const TextStyle(fontSize: 16, height: 1.4),
                      ),
                    ),
                  ),
                  const Icon(
                    Icons.keyboard_arrow_right,
                    color: Colors.grey,
                    size: 40.0,
                  )
                ],
              ),
            ),
          ],
        ),
      );

  FutureOr onGoBack(dynamic value) {
    setState(() {});
  }

  // Handles navigation and prompts refresh.
  void navigateSecondPage(Widget editForm) {
    Route route = MaterialPageRoute(builder: (context) => editForm);
    Navigator.push(context, route).then(onGoBack);
  }
}
