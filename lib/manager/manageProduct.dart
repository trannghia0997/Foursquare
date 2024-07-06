// ignore_for_file: file_names, unused_import

import "package:flutter/material.dart";
import "package:Foursquare/data/warehouse.dart";
import "package:Foursquare/data/product.dart";
import "package:Foursquare/manager/addProduct.dart";
import 'package:Foursquare/manager/detailStaff.dart';
import 'package:Foursquare/manager/productComponent.dart';
import "package:Foursquare/profile/userData/user.dart";

class ManageProductPage extends StatelessWidget {
  const ManageProductPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData.light(),
      child: Builder(
        builder: (context) => ManageProductScreen(products: products),
      ),
    );
  }
}

class ManageProductScreen extends StatefulWidget {
  const ManageProductScreen({required this.products, super.key});
  final List<Product> products;

  @override
  State<ManageProductScreen> createState() => _ManageProductScreenState();
}

class _ManageProductScreenState extends State<ManageProductScreen> {
  final TextEditingController _staffSearchController = TextEditingController();
  final TextEditingController _productSearchController =
      TextEditingController();
  List<Product> _filteredProducts = [];

  @override
  void initState() {
    _filteredProducts = widget.products;
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
      _filteredProducts = widget.products
          .where((product) =>
              product.name.toLowerCase().contains(query.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: ListView(
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
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const AddProductScreen()),
          );
        },
        shape: const CircleBorder(),
        child: const Icon(Icons.add),
      ),
    );
  }
}
