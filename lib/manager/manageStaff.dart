// ignore_for_file: file_names, use_super_parameters, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:Foursquare/data/warehouse.dart'; // Import the file where 'warehouses' is defined
import 'package:Foursquare/manager/detailStaff.dart';
import 'package:Foursquare/profile/userData/user.dart';

class ManageStaffPage extends StatelessWidget {
  const ManageStaffPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData.light(),
      child: ManageStaffScreen(warehouse: warehouses),
    );
  }
}

class ManageStaffScreen extends StatefulWidget {
  final List<Warehouse> warehouse;

  const ManageStaffScreen({Key? key, required this.warehouse})
      : super(key: key);

  @override
  State<ManageStaffScreen> createState() => _ManageStaffScreenState();
}

class _ManageStaffScreenState extends State<ManageStaffScreen> {
  final TextEditingController _staffSearchController = TextEditingController();
  late List<User> _allStaff;
  late List<User> _filteredStaff;

  @override
  void initState() {
    super.initState();
    _allStaff = [];
    _filteredStaff = [];
    _populateStaffList();
  }

  void _populateStaffList() {
    for (var warehouse in widget.warehouse) {
      _allStaff.addAll(warehouse.staff);
    }
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

  const StaffList({Key? key, required this.staff}) : super(key: key);

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
