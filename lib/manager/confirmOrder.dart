// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter/services.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../client/cart.dart';
import '../data/product.dart';
import '../data/order.dart';
import './detailTask.dart';

class ConfirmOrder extends HookConsumerWidget {
  const ConfirmOrder({super.key});

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
              icon: Icon(Icons.playlist_add_outlined),
              text: 'Xác nhận',
            ),
            Tab(
              icon: Icon(Icons.shopping_cart_checkout_outlined),
              text: 'Đang chuẩn bị',
            ),
            Tab(
              icon: Icon(Icons.airport_shuttle_outlined),
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
          buildOrderList(Status.pending),
          buildOrderList(Status.processing),
          buildOrderList(Status.delivering),
          buildOrderList(Status.completed),
        ],
      ),
    );
  }

  Widget buildOrderList(Status status) {
    // Lọc danh sách sản phẩm dựa trên trạng thái
    List<Order> filteredOrder =
        orders.where((order) => order.status == status).toList();

    return ListView.builder(
      itemCount: filteredOrder.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            SystemSound.play(SystemSoundType.click);
            _pushScreen(context: context, order: filteredOrder[index]);
          },
          child: SizedBox(
            child: Row(
              children: [
                SizedBox(
                  width: 125,
                  child: ProductImage(
                      product: filteredOrder[index].products.first),
                ),
                const SizedBox(
                  width: 16,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "ID: ${filteredOrder[index].id}",
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Text(
                        filteredOrder[index].clientName,
                      ),
                      Text(
                        filteredOrder[index].clientAddress,
                      ),
                      // Add other information or widgets related to the product
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

void _pushScreen({required BuildContext context, required Order order}) {
  ThemeData themeData = Theme.of(context);
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (_) =>
          Theme(data: themeData, child: DetailTaskScreen(order: order)),
    ),
  );
}
