import 'package:foursquare/customer/detail_order.dart';
import 'package:foursquare/riverpod/order.dart';
import 'package:foursquare/shared/models/data/order_status_code.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class DeliveryProcess extends HookConsumerWidget {
  const DeliveryProcess({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tabController = useTabController(initialLength: 5);
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
            Tab(
              icon: Icon(Icons.cancel_presentation_outlined),
              text: 'Hủy',
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: tabController,
        children: [
          buildOrderList(OrderStatusCodeData.pending, context, ref),
          buildOrderList(OrderStatusCodeData.processing, context, ref),
          buildOrderList(OrderStatusCodeData.shipped, context, ref),
          buildOrderList(OrderStatusCodeData.delivered, context, ref),
          buildOrderList(OrderStatusCodeData.cancelled, context, ref),
        ],
      ),
    );
  }

  Widget buildOrderList(
      OrderStatusCodeData status, BuildContext context, WidgetRef ref) {
    final order = ref.watch(orderWithItemsProvider);
    var orderList = <OrderWithItems>[];
    switch (order) {
      case AsyncError(:final error):
        {
          return Center(
            child: Text('Error: $error'),
          );
        }
      case AsyncLoading():
        {
          return const Center(child: CircularProgressIndicator());
        }
      case AsyncData(:final value):
        {
          orderList = value;
          break;
        }
    }
    // Lọc danh sách sản phẩm dựa trên trạng thái
    List<OrderWithItems> filteredOrder =
        orderList.where((obj) => obj.order.statusCodeId == status.id).toList();

    return ListView.builder(
      itemCount: filteredOrder.length,
      itemBuilder: (context, index) {
        final currentOrder = filteredOrder[index];
        return Card(
          margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
          elevation: 4,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                // TODO: Add common information about an order
                const SizedBox(height: 8),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            DetailOrderScreen(orderWithItems: currentOrder),
                      ),
                    );
                  },
                  child: Text(
                    'Xem chi tiết đơn hàng của bạn',
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.primary,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline,
                    ),
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
