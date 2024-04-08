// ignore_for_file: file_names, override_on_non_overriding_member

import "package:flutter/material.dart";
import "package:foursquare_client/data/warehouse.dart";
import 'package:foursquare_client/manager/detailStaff.dart';
import "package:foursquare_client/profile/userData/user.dart";

class ManageStaffPage extends StatelessWidget {
  const ManageStaffPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData.light(),
      child: Builder(
        builder: (context) => ManageStaffScreen(warehouse: warehouses),
      ),
    );
  }
}

class ManageStaffScreen extends StatefulWidget {
  const ManageStaffScreen({super.key, required this.warehouse});
  final List<Warehouse> warehouse;

  @override
  State<ManageStaffScreen> createState() => _ManageStaffScreenState();
}

class _ManageStaffScreenState extends State<ManageStaffScreen> {
  final TextEditingController _staffSearchController = TextEditingController();
  final List<User> _allStaff = [];
  List<User> _filteredStaff = [];

  @override
  void initState() {
    super.initState();
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
    return Scaffold(
      body: ListView(
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
          Text(
            "Tất cả các nhân viên",
            style: Theme.of(context).textTheme.titleLarge,
          ),
          StaffListPage(staff: _filteredStaff),
          const SizedBox(height: 50),
        ],
      ),
    );
  }
}
