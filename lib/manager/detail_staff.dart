import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:foursquare/riverpod/staff_info.dart';
import 'package:foursquare/shared/constants.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class StaffDetailsPage extends HookConsumerWidget {
  const StaffDetailsPage({super.key, required this.staff});

  final StaffInfo staff;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final nameController = useTextEditingController(text: staff.user.name);
    final emailController = useTextEditingController(text: staff.user.email);
    final phoneController = useTextEditingController(text: staff.user.phone);
    final image = useState(staff.user.avatarUrl ?? defaultAvatarUrl);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Thông tin nhân viên'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 80,
              backgroundColor: Colors.grey[200],
              backgroundImage: NetworkImage(image.value),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextField(
                    controller: nameController,
                    readOnly: true,
                    decoration: const InputDecoration(
                      labelText: 'Họ và tên',
                    ),
                  ),
                  const SizedBox(height: 12),
                  TextField(
                    controller: emailController,
                    readOnly: true,
                    decoration: const InputDecoration(
                      labelText: 'Email',
                    ),
                  ),
                  const SizedBox(height: 12),
                  TextField(
                    controller: phoneController,
                    readOnly: true,
                    decoration: const InputDecoration(
                      labelText: 'Số điện thoại',
                    ),
                  ),
                  const SizedBox(height: 12),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
