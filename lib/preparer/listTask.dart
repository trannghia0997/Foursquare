// ignore_for_file: unused_import, file_names

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../customer/cart.dart';
import '../data/product.dart';
import '../data/order.dart';
import './detailTask.dart';

class ListTaskScreen extends HookConsumerWidget {
  const ListTaskScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tabController = useTabController(initialLength: 4);
    // var orderedProduct = ref.watch(orderedProductNotifierProvider);
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: 0,
        bottom: TabBar(
          controller: tabController,
          tabs: const <Widget>[
            Tab(
              icon: Icon(Icons.shopping_bag_outlined),
              text: 'Chưa soạn',
            ),
            Tab(
              icon: Icon(Icons.shopping_cart_checkout_outlined),
              text: 'Đang chuẩn bị',
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
          buildOrderList(Status.processing, ProcessingStatus.nonProcessing),
          buildOrderList(Status.processing, ProcessingStatus.isProcessing),
          buildOrderList(
              Status.processing, ProcessingStatus.completedProcessing),
        ],
      ),
    );
  }

  Widget buildOrderList(Status status, ProcessingStatus processingStatus) {
    // Lọc danh sách sản phẩm dựa trên trạng thái
    List<Order> filteredOrder = orders
        .where((order) => order.processingStatus == processingStatus)
        .toList();

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
                      product: filteredOrder[index].orderProducts.first.product),
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
