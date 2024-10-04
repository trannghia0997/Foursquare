import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:foursquare/manager/detail_staff.dart';
import 'package:foursquare/riverpod/staff_info.dart';
import 'package:foursquare/shared/constants.dart';
import 'package:foursquare/shared/models/enums/staff_role.dart';
import 'package:foursquare/shared/models/enums/staff_status.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class StaffManagementScreen extends HookConsumerWidget {
  const StaffManagementScreen({super.key});

  Widget _buildBaseWidget(Widget child) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Quản lý nhân viên'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: child,
      ),
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final staffInfo = ref.watch(allWarehouseAndDeliveryStaffProvider);
    List<StaffInfo> staffs = [];
    switch (staffInfo) {
      case AsyncLoading():
        return _buildBaseWidget(
          const Center(
            child: CircularProgressIndicator(),
          ),
        );
      case AsyncData(value: []):
        return _buildBaseWidget(
          const Center(
            child: Text('Không có nhân viên nào'),
          ),
        );
      case AsyncData(:final value):
        staffs = value;
      case AsyncError(:final error):
        return _buildBaseWidget(
          Center(
            child: Text('Error: $error'),
          ),
        );
    }
    final staffSearchController = useTextEditingController();
    final filteredStaff = useState(staffs);
    void filterStaff(String query) {
      filteredStaff.value = staffs
          .where(
            (staff) =>
                staff.user.name.toLowerCase().contains(query.toLowerCase()),
          )
          .toList();
    }

    return _buildBaseWidget(
      Column(
        children: [
          TextField(
            controller: staffSearchController,
            onChanged: filterStaff,
            decoration: const InputDecoration(
              labelText: 'Tìm kiếm nhân viên',
              prefixIcon: Icon(Icons.search),
            ),
          ),
          const SizedBox(height: 16.0),
          Expanded(
            child: StaffList(staff: filteredStaff.value),
          ),
        ],
      ),
    );
  }
}

class StaffList extends HookWidget {
  final List<StaffInfo> staff;

  const StaffList({super.key, required this.staff});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: staff.length,
      itemBuilder: (context, index) {
        final item = staff[index];
        return Card(
          elevation: 2,
          margin: const EdgeInsets.symmetric(vertical: 8.0),
          child: Stack(
            children: [
              ListTile(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => StaffDetailsPage(
                        staff: item,
                      ),
                    ),
                  );
                },
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                    item.user.avatarUrl ?? defaultAvatarUrl,
                  ),
                ),
                title: Text(
                  item.user.name,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: _buildSubtitle(item.staff.role),
                trailing: Text(
                  item.staff.statusCode.localized.$2,
                  style: TextStyle(
                    color: (item.staff.statusCode.localized.$1),
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  Widget _buildSubtitle(StaffRole role) {
    switch (role) {
      case StaffRole.warehouse:
        return const Text('Nhân viên kho');
      case StaffRole.delivery:
        return const Text('Nhân viên vận chuyển');
      default:
        return const Text('Không rõ');
    }
  }
}
