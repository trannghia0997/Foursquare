import "package:flutter/material.dart";
import 'package:foursquare/shared/widgets/product_component.dart';
import 'package:foursquare/preparer/add_product.dart';
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
    final productQuantityInfoByWarehouse = ref.watch(
      productQuantityInfoByWorkingUnitProvider(staffInfo.workingUnit.id),
    );
    List<ProductQuantityInfo> productList = [];
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

    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add your onPressed code here!
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => const AddProductScreen(),
            ),
          );
        },
        child: const Icon(Icons.add),
      ),
      body: RefreshIndicator.adaptive(
        onRefresh: () async {
          ref.invalidate(
            productQuantityInfoByWorkingUnitProvider(staffInfo.workingUnit.id),
          );
        },
        child: ListView(
          padding: const EdgeInsets.all(16.0),
          children: [
            const SizedBox(height: 16.0),
            Text(
              "Các mặt hàng ở kho ${staffInfo.workingUnit.name}",
              style: Theme.of(context).textTheme.titleLarge,
            ),
            ProductCategoryGrid(
              productQtyInfo: productList,
            ),
          ],
        ),
      ),
    );
  }
}
