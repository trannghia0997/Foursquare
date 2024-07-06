import 'package:Foursquare/services/order/models/order.dart';
import 'package:Foursquare/shared/product_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class DeliveryProcess extends HookConsumerWidget {
  const DeliveryProcess({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tabController = useTabController(initialLength: 4);
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
          buildOrderList(OrderStatus.pending),
          buildOrderList(OrderStatus.inProgress),
          buildOrderList(OrderStatus.assigned),
          buildOrderList(OrderStatus.completed),
        ],
      ),
    );
  }

  Widget buildOrderList(OrderStatus status) {
    // Lọc danh sách sản phẩm dựa trên trạng thái
    List<Order> filteredOrder =
        orders.where((order) => order.orderStatus == status).toList();

    return ListView.builder(
      itemCount: filteredOrder.length,
      itemBuilder: (context, index) {
        Order orderItem = filteredOrder[index];
        return Row(
          children: [
            SizedBox(
              width: 125,
              child: ProductImage(
                  product: orderItem.listOrderProduct.first.product),
            ),
            const SizedBox(
              width: 16,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    orderItem.listOrderProduct.first.product.name,
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
