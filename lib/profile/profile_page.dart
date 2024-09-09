import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:foursquare/profile/pages/edit_address.dart';
import 'package:foursquare/services/pb.dart';
import 'package:foursquare/shared/constants.dart';
import 'package:foursquare/shared/models/user.dart';
import 'package:go_router/go_router.dart';
import 'pages/edit_name.dart';
import 'pages/edit_phone.dart';
import './widgets/display_image_widget.dart';

class ProfileScreen extends StatefulHookWidget {
  const ProfileScreen({super.key});

  @override
  ProfileScreenState createState() => ProfileScreenState();
}

class ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    final user = useState(UserDto.fromRecord(PBApp.instance.authStore.model));
    useEffect(() {
      final sub = PBApp.instance.authStore.onChange.listen((event) {
        user.value = UserDto.fromRecord(event.model);
      });
      return sub.cancel;
    }, [PBApp.instance.authStore.onChange]);
    return Scaffold(
      body: Column(
        children: [
          AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            toolbarHeight: 10,
          ),
          DisplayImage(
            imagePath: user.value.avatarUrl ?? defaultAvatarUrl,
            onPressed: () {},
          ),
          buildUserInfoDisplay(user.value.name, 'Tên', EditNameFormPage()),
          buildUserInfoDisplay(
              user.value.phone, 'Số điện thoại', EditPhoneFormPage()),
          buildUserInfoDisplay(
              "268 Lý Thường Kiệt", 'Địa chỉ', EditAddressFormPage()),
          ElevatedButton.icon(
            onPressed: () {
              PBApp.instance.authStore.clear();
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
