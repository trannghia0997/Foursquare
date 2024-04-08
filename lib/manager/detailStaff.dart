// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:foursquare_client/profile/userData/user.dart';

class StaffListPage extends StatelessWidget {
  const StaffListPage({super.key, required this.staff});
  final List<User> staff;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Danh sách nhân viên'),
      ),
      body: StaffList(staff: staff),
    );
  }
}

class StaffList extends StatelessWidget {
  const StaffList({required this.staff, super.key});
  final List<User> staff;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: staff.length,
      itemBuilder: (context, index) {
        return StaffTile(staff: staff[index]);
      },
    );
  }
}

class StaffTile extends StatelessWidget {
  const StaffTile({required this.staff, super.key});

  final User staff;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: StaffImage(staff: staff),
      title: Text(
        staff.name,
        style: Theme.of(context).textTheme.titleMedium,
      ),
      subtitle: Text(
        staff.role as String,
        style: Theme.of(context).textTheme.titleSmall,
      ),
      // onTap: () {
      //   // Add your onTap logic here
      // },
    );
  }
}

class StaffImage extends StatelessWidget {
  const StaffImage({
    super.key,
    required this.staff,
  });

  final User staff;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundImage: NetworkImage(staff.image),
    );
  }
}
