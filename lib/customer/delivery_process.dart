import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:foursquare_client/customer/payment.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'cart.dart';
import '../data/product.dart';

class DeliveryProcess extends HookConsumerWidget {
  const DeliveryProcess({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tabController = useTabController(initialLength: 4);
    var orderedProduct = ref.watch(orderedProductNotifierProvider);
    List<Product> products =
        orderedProduct.map((orderedProduct) => orderedProduct.product).toList();
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: 0,
        bottom: TabBar(
          controller: tabController,
          tabs: const <Widget>[
            Tab(
              icon: Icon(Icons.shopping_bag_outlined),
              text: 'Đã đặt',
            ),
            Tab(
              icon: Icon(Icons.shopping_cart_checkout_outlined),
              text: 'Đang chuẩn bị',
            ),
            Tab(
              icon: Icon(Icons.local_shipping_outlined),
              text: 'Đang vận chuyển',
            ),
            Tab(
              icon: Icon(Icons.playlist_add_check_outlined),
              text: 'Hoàn thành',
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: tabController,
        children: [
          buildProductList(Status.pending, products),
          buildProductList(Status.processing, products),
          buildProductList(Status.delivering, products),
          buildProductList(Status.completed, products),
        ],
      ),
    );
  }

  Widget buildProductList(Status status, List<Product> orderedProduct) {
    // Lọc danh sách sản phẩm dựa trên trạng thái
    List<Product> filteredProducts =
        orderedProduct.where((product) => product.status == status).toList();

    return ListView.builder(
      itemCount: filteredProducts.length,
      itemBuilder: (context, index) {
        Product product = filteredProducts[index];
        return Row(
          children: [
            SizedBox(
              width: 125,
              child: ProductImage(product: product),
            ),
            const SizedBox(
              width: 16,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    product.name,
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  // Add other information or widgets related to the product
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}
