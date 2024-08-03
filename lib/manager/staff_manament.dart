import 'package:flutter/material.dart';
import 'package:foursquare/manager/detail_staff.dart';
import 'package:foursquare/services/auth/models/user.dart';

class StaffManamentScreen extends StatefulWidget {
  final List<User> staffs;

  const StaffManamentScreen({super.key, required this.staffs});

  @override
  State<StaffManamentScreen> createState() => _StaffManamentScreenState();
}

class _StaffManamentScreenState extends State<StaffManamentScreen> {
  final TextEditingController _staffSearchController = TextEditingController();
  late List<User> _allStaff;
  late List<User> _filteredStaff;

  @override
  void initState() {
    super.initState();
    _allStaff = widget.staffs;
    _filteredStaff = List.from(_allStaff);
  }

  @override
  void dispose() {
    _staffSearchController.dispose();
    super.dispose();
  }

  void _filterStaff(String query) {
    setState(() {
      _filteredStaff = _allStaff
          .where((staff) =>
              staff.name!.toLowerCase().contains(query.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Quản lý nhân viên'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _staffSearchController,
              onChanged: _filterStaff,
              decoration: const InputDecoration(
                labelText: 'Tìm kiếm nhân viên',
                prefixIcon: Icon(Icons.search),
              ),
            ),
            const SizedBox(height: 16.0),
            Expanded(
              child: StaffList(staff: _filteredStaff),
            ),
          ],
        ),
      ),
    );
  }
}

class StaffList extends StatelessWidget {
  final List<User> staff;

  const StaffList({super.key, required this.staff});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: staff.length,
      itemBuilder: (context, index) {
        final user = staff[index];
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
                      builder: (context) => EditStaffPage(staff: user),
                    ),
                  );
                },
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(user.avatar!),
                ),
                title: Text(
                  user.name!,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: _buildSubtitle(user.role),
              ),
              Positioned(
                top: 8,
                right: 8,
                child: _buildStatusChip(user.staffStatus),
              ),
            ],
          ),
        );
      },
    );
  }

  Widget _buildSubtitle(Role role) {
    switch (role) {
      case Role.warehouse:
        return const Text('Nhân viên kho');
      case Role.shipper:
        return const Text('Nhân viên vận chuyển');
      default:
        return const Text('Unknown role');
    }
  }

  Widget _buildStatusChip(StaffStatus? status) {
    Color color;
    String text;

    switch (status) {
      case StaffStatus.working:
        color = Colors.blue;
        text = 'Đang làm việc';
        break;
      case StaffStatus.absent:
        color = Colors.grey;
        text = 'Vắng mặt';
        break;
      case StaffStatus.free:
        color = Colors.green;
        text = 'Chưa có đơn';
        break;
      default:
        color = Colors.red;
        text = 'Đã nghĩ việc';
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
