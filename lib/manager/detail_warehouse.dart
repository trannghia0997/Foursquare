import "package:flutter/material.dart";
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:foursquare/manager/product_component.dart';
import 'package:foursquare/riverpod/product.dart';
import 'package:foursquare/riverpod/working_unit.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class DetailWarehouseScreen extends HookConsumerWidget {
  const DetailWarehouseScreen({required this.warehouse, super.key});
  final WorkingUnitInfo warehouse;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final TextEditingController productSearchController =
        useTextEditingController();
    final productQuantityInfoByWarehouse = ref.watch(
      productQuantityInfoByWarehouseProvider(warehouse.workingUnit.id),
    );
    List<ProductQuantityInfoModel> productList = [];
    switch (productQuantityInfoByWarehouse) {
      case AsyncLoading():
        return const Center(child: CircularProgressIndicator());
      case AsyncError(:final error):
        return Center(child: Text('Error: $error'));
      case AsyncData(:final value):
        productList = value;
        break;
      default:
        return const Center(child: Text('Something went wrong'));
    }
    final filteredProducts = useState(productList);

    void filterProducts(String query) {
      filteredProducts.value = productList.where((product) {
        final productName = product.categoryInfo.product.name.toLowerCase();
        final queryLower = query.toLowerCase();
        return productName.contains(queryLower);
      }).toList();
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('       Thông tin kho'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          TextField(
            controller: productSearchController,
            onChanged: filterProducts,
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
          ProductRow(productQtyInfo: filteredProducts.value),
        ],
      ),
    );
  }
}
