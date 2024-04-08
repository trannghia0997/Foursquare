// ignore_for_file: file_names, no_logic_in_create_state

import "package:flutter/material.dart";
import "package:foursquare_client/data/warehouse.dart";
import "package:foursquare_client/data/product.dart";
import 'package:foursquare_client/preparer/setQtyProduct.dart';

class WarehousePage extends StatelessWidget {
  const WarehousePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData.light(),
      child: Builder(
        builder: (context) => WarehouseScreen(warehouse: warehouses.first),
      ),
    );
  }
}

class WarehouseScreen extends StatefulWidget {
  const WarehouseScreen({required this.warehouse, super.key});
  final Warehouse warehouse;

  @override
  State<WarehouseScreen> createState() => _DetailWarehouseScreenScreenState();
}

class _DetailWarehouseScreenScreenState extends State<WarehouseScreen> {
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
