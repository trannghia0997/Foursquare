// ignore_for_file: unnecessary_string_interpolations, use_key_in_widget_constructors, file_names

import 'package:flutter/material.dart';
import 'package:foursquare/manager/list_order.dart';
import 'package:foursquare/profile/profile_page.dart';
import 'package:foursquare/profile/userData/user_data.dart';

class MenuNav extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            child: UserAccountsDrawerHeader(
              accountName: Text(
                '${UserData.managerUser.name}',
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              accountEmail: Text(
                '${UserData.managerUser.email}',
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              // currentAccountPicture: CircleAvatar(
              //   backgroundImage:
              //       NetworkImage(UserData.managerUser.image.toString()),
              // ),
              otherAccountsPictures: [
                CircleAvatar(
                  radius: 40,
                  backgroundImage:
                      NetworkImage(UserData.managerUser.image.toString()),
                ),
              ],
            ),
          ),
          ListTile(
            title: const Text("Home"),
            leading: IconButton(
              icon: const Icon(Icons.home),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) => const ListOrderScreen()));
            },
          ),
          const Divider(
            color: Colors.grey,
          ),
          ListTile(
            title: const Text("Profile"),
            leading: IconButton(
              icon: const Icon(Icons.account_circle),
              onPressed: () {},
            ),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) => const ProfileScreen()));
            },
          ),
          const Divider(
            color: Colors.grey,
          ),
          ListTile(
            title: const Text("Contact"),
            leading: IconButton(
              icon: const Icon(Icons.contact_page),
              onPressed: () {},
            ),
            onTap: () {
              // Navigator.of(context).pop();
              // Navigator.of(context).push(MaterialPageRoute(
              //       builder: (BuildContext context) => contact()));
            },
          )
        ],
      ),
    );
  }
}
