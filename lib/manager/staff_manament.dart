import 'package:flutter/material.dart';
import 'package:foursquare/manager/detailStaff.dart';
import 'package:foursquare/profile/userData/user.dart';

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
    _allStaff = [];
    _filteredStaff = [];
    // _populateStaffList();
  }

  // void _populateStaffList() {
  //   for (var warehouse in widget.warehouse) {
  //     _allStaff.addAll(warehouse.staff);
  //   }
  //   _filteredStaff = List.from(_allStaff);
  // }

  @override
  void dispose() {
    _staffSearchController.dispose();
    super.dispose();
  }

  void _filterStaff(String query) {
    setState(() {
      _filteredStaff = _allStaff
          .where(
              (staff) => staff.name.toLowerCase().contains(query.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16.0),
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
        StaffList(staff: _filteredStaff),
        const SizedBox(height: 50),
      ],
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
          elevation: 2, // Add some elevation for a slight shadow effect
          margin: const EdgeInsets.symmetric(vertical: 8.0),
          child: ListTile(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => EditStaffPage(staff: user),
                ),
              );
            },
            leading: CircleAvatar(
              backgroundImage: NetworkImage(user.image),
            ),
            title: Text(
              user.name,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: _buildSubtitle(user.role),
          ),
        );
      },
    );
  }

  Widget _buildSubtitle(Role role) {
    switch (role) {
      case Role.preparer:
        return const Text('Nhân viên kho');
      case Role.shipper:
        return const Text('Nhân viên vận chuyển');
      case Role.manager:
        return const Text('Nhân viên quản lý');
      default:
        return const Text('Unknown role');
    }
  }
}
