import 'package:foursquare/shared/widgets/order_tile.dart';
import 'package:foursquare/shopper/detail_order.dart';
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
              text: 'Đang chờ',
            ),
            Tab(
              icon: Icon(Icons.shopping_cart_checkout_outlined),
              text: 'Soạn hàng',
            ),
            Tab(
              icon: Icon(Icons.local_shipping_outlined),
              text: 'Vận chuyển',
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
          buildOrderList(
            initialOrderStatusCodes,
            context,
            ref,
          ),
          buildOrderList(
            warehouseOrderStatusCodes,
            context,
            ref,
          ),
          buildOrderList(
            deliveryOrderStatusCodes,
            context,
            ref,
          ),
          buildOrderList(
            completedOrderStatusCodes,
            context,
            ref,
          ),
          buildOrderList(
            dangerousOrderStatusCodes,
            context,
            ref,
          ),
        ],
      ),
    );
  }

  Widget buildOrderList(
      List<OrderStatusCodeData> status, BuildContext context, WidgetRef ref) {
    final order = ref.watch(allOrderInfoProvider);
    var orderList = <OrderInfo>[];
    switch (order) {
      case AsyncError(:final error):
        {
          return Center(
            child: Text('Error: $error'),
          );
        }
      case AsyncLoading():
        {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
      case AsyncData(:final value):
        {
          orderList = value;
          break;
        }
    }
    // Lọc danh sách sản phẩm dựa trên trạng thái
    List<OrderInfo> filteredOrder = orderList
        .where((element) => status
            .contains(OrderStatusCodeData.fromId(element.order.statusCodeId)))
        .toList();

    return RefreshIndicator(
      onRefresh: () async {
        ref.invalidate(allOrderInfoProvider);
      },
      child: Material(
        child: ListView.builder(
          itemCount: filteredOrder.length,
          itemBuilder: (context, index) {
            final currentOrder = filteredOrder[index];
            return OrderTile(
              orderInfo: currentOrder,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        ShopperDetailOrderScreen(orderInfo: currentOrder),
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
