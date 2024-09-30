import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:foursquare/manager/list_order.dart';
import 'package:foursquare/profile/profile_page.dart';
import 'package:foursquare/services/pb.dart';
import 'package:foursquare/shared/constants.dart';
import 'package:foursquare/shared/models/user.dart';

class MenuNav extends HookWidget {
  const MenuNav({super.key});

  @override
  Widget build(BuildContext context) {
    final managerAuthInfo =
        useState(UserDto.fromRecord(PBApp.instance.authStore.model));
    useEffect(() {
      final sub = PBApp.instance.authStore.onChange.listen((event) {
        managerAuthInfo.value = UserDto.fromRecord(event.model);
      });
      return sub.cancel;
    }, [PBApp.instance.authStore.onChange]);
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            child: UserAccountsDrawerHeader(
              accountName: Text(
                managerAuthInfo.value.name,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              accountEmail: Text(
                '${managerAuthInfo.value.email}',
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              otherAccountsPictures: [
                CircleAvatar(
                  radius: 40,
                  backgroundImage: NetworkImage(
                      managerAuthInfo.value.avatarUrl ?? defaultAvatarUrl),
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
