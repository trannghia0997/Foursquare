import "package:flutter/material.dart";
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:foursquare/preparer/product_component.dart';
import 'package:foursquare/riverpod/product.dart';
import 'package:foursquare/riverpod/staff_info.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class WarehousePage extends StatelessWidget {
  const WarehousePage({super.key, required this.staffInfo});

  final StaffInfo staffInfo;

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData.light(),
      child: Builder(
        builder: (context) => WarehouseScreen(
          staffInfo: staffInfo,
        ),
      ),
    );
  }
}

class WarehouseScreen extends HookConsumerWidget {
  const WarehouseScreen({super.key, required this.staffInfo});

  final StaffInfo staffInfo;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final productSearchController = useTextEditingController();
    final productList = ref.watch(productCategoryInfoByWorkingUnitIdProvider(
      staffInfo.staff.workingUnitId,
    ));
    List<ProductCategoryInfo> productInfoList = [];
    switch (productList) {
      case AsyncLoading():
        return const Center(
          child: CircularProgressIndicator(),
        );
      case AsyncError(:final error):
        return Center(
          child: Text('Error: $error'),
        );
      case AsyncData(:final value):
        productInfoList = value;
        break;
    }
    final filteredProducts = useState(productInfoList);
    void filterProducts(String query) {
      final filteredProductsList = productInfoList
          .where((product) =>
              product.product.name.toLowerCase().contains(query.toLowerCase()))
          .toList();
      filteredProducts.value = filteredProductsList;
    }

    return Scaffold(
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
            "Các mặt hàng ở kho ${staffInfo.workingUnit.name}",
            style: Theme.of(context).textTheme.titleLarge,
          ),
          ProductComponent(
            products: filteredProducts.value,
          ),
        ],
      ),
    );
  }
}
