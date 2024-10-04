import 'package:foursquare/riverpod/order.dart';
import 'package:foursquare/shared/models/data/order_status_code.dart';
import 'package:foursquare/shared/models/order.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:foursquare/shared/widgets/order_tile.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'detail_task.dart';

class ListOrderScreen extends HookConsumerWidget {
  const ListOrderScreen({super.key});

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
    final orderState = ref.watch(allOrderInfoProvider);
    List<OrderInfo> allOrders = [];
    switch (orderState) {
      case AsyncLoading():
        return const Center(child: CircularProgressIndicator());
      case AsyncData(value: []):
        return const Center(child: Text('Không có đơn hàng nào'));
      case AsyncData(:final value):
        allOrders = value;
      case AsyncError(:final error):
        return Center(child: Text('Error: $error'));
    }
    List<OrderInfo> filteredOrder = allOrders
        .where((element) => status
            .contains(OrderStatusCodeData.fromId(element.order.statusCodeId)))
        .toList();
    return RefreshIndicator.adaptive(
      onRefresh: () async {
        ref.invalidate(allOrderInfoProvider);
      },
      child: ListView.builder(
        itemCount: filteredOrder.length,
        itemBuilder: (context, index) {
          final currentOrder = filteredOrder[index];
          return OrderTile(
            isManager: true,
            orderInfo: currentOrder,
            onTap: () {
              _pushScreen(context: context, order: currentOrder.order);
            },
          );
        },
      ),
    );
  }
}

void _pushScreen({required BuildContext context, required OrderDto order}) {
  ThemeData themeData = Theme.of(context);
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (_) =>
          Theme(data: themeData, child: ManagerDetailOrderScreen(order: order)),
    ),
  );
}
