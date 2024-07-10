// ignore_for_file: file_names, unused_import

import "package:foursquare/services/product/product.dart";
import "package:foursquare/services/warehouse/warehouse.dart";
import "package:flutter/material.dart";
import "package:foursquare/data/warehouse.dart";
import "package:foursquare/data/product.dart";
import 'package:foursquare/manager/detailStaff.dart';
import 'package:foursquare/manager/productComponent.dart';
import "package:foursquare/profile/userData/user.dart";

class DetailWarehouseScreen extends StatefulWidget {
  const DetailWarehouseScreen({required this.warehouse, super.key});
  final Warehouse warehouse;

  @override
  State<DetailWarehouseScreen> createState() => _DetailWarehouseScreenState();
}

class _DetailWarehouseScreenState extends State<DetailWarehouseScreen> {
  final TextEditingController _staffSearchController = TextEditingController();
  final TextEditingController _productSearchController =
      TextEditingController();
  List<Product> _filteredProducts = [];

  @override
  void initState() {
    _filteredProducts = widget.warehouse.products;
    super.initState();
  }

  @override
  void dispose() {
    _staffSearchController.dispose();
    _productSearchController.dispose();
    super.dispose();
  }

  void _filterProducts(String query) {
    setState(() {
      _filteredProducts = widget.warehouse.products
          .where((product) =>
              product.name.toLowerCase().contains(query.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('       Thông tin kho'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          TextField(
            controller: _productSearchController,
            onChanged: _filterProducts,
            decoration: const InputDecoration(
              labelText: 'Tìm kiếm mặt hàng',
              prefixIcon: Icon(Icons.search),
            ),
          ),
          const SizedBox(height: 16.0),
          Text(
            "Các mặt hàng ở kho",
            style: Theme.of(context).textTheme.titleLarge,
          ),
          ProductRow(products: _filteredProducts),
        ],
      ),
    );
  }
}
