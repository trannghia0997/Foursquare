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

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final staffInfo = ref.watch(warehouseAndDeliveryStaffProvider);
    List<StaffInfoModel> staffs = [];
    switch (staffInfo) {
      case AsyncLoading():
        return const Center(child: CircularProgressIndicator());
      case AsyncData(value: []):
        return const Center(child: Text('Không có nhân viên nào'));
      case AsyncData(:final value):
        staffs = value;
      case AsyncError(:final error):
        return Center(child: Text('Error: $error'));
    }
    final staffSearchController = useTextEditingController();
    final filteredStaff = useState(staffs);
    void filterStaff(String query) {
      filteredStaff.value = staffs
          .where(
            (staff) =>
                staff.userInfo.name
                    ?.toLowerCase()
                    .contains(query.toLowerCase()) ??
                false,
          )
          .toList();
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Quản lý nhân viên'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
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
      ),
    );
  }
}

class StaffList extends HookWidget {
  final List<StaffInfoModel> staff;

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
                      builder: (context) => EditStaffPage(
                        staff: item,
                      ),
                    ),
                  );
                },
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                    item.userInfo.avatarUrl ?? defaultAvatarUrl,
                  ),
                ),
                title: Text(
                  item.userInfo.name ?? 'Unknown',
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: _buildSubtitle(item.staff.role),
              ),
              Positioned(
                top: 8,
                right: 8,
                child: _buildStatusChip(item.staff.statusCode),
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
        return const Text('Unknown role');
    }
  }

  Widget _buildStatusChip(StaffStatus? status) {
    Color color;
    String text;

    switch (status) {
      case StaffStatus.active:
        color = Colors.blue;
        text = 'Rảnh';
      case StaffStatus.inactive:
        color = Colors.grey;
        text = 'Không hoạt động';
      case StaffStatus.suspended:
        color = Colors.green;
        text = 'Đang nghỉ';
      case StaffStatus.terminated:
        color = Colors.red;
        text = 'Đã nghỉ';
      default:
        color = Colors.grey;
        text = 'Không rõ';
    }

    return Chip(
      label: Text(
        text,
        style: const TextStyle(color: Colors.white),
      ),
      backgroundColor: color,
    );
  }
}
