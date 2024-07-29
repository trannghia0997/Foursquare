import 'package:foursquare/customer/detail_order.dart';
import 'package:foursquare/services/order/models/order.dart';
import 'package:foursquare/services/order/models/order_notifier.dart';
import 'package:foursquare/shared/numeric.dart';
import 'package:foursquare/shared/product_image.dart';
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
          buildOrderList(OrderStatus.pending, context, ref),
          buildOrderList(OrderStatus.inProgress, context, ref),
          buildOrderList(OrderStatus.assigned, context, ref),
          buildOrderList(OrderStatus.completed, context, ref),
          buildOrderList(OrderStatus.cancelled, context, ref),
        ],
      ),
    );
  }

  Widget buildOrderList(
      OrderStatus status, BuildContext context, WidgetRef ref) {
    OrderState orderState = ref.watch(orderProvider);
    // Lọc danh sách sản phẩm dựa trên trạng thái
    List<Order> filteredOrder = orderState.orders
        .where((order) => order.orderStatus == status)
        .toList();

    return ListView.builder(
      itemCount: filteredOrder.length,
      itemBuilder: (context, index) {
        Order orderItem = filteredOrder[index];
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
                Row(
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
                            height: 4,
                          ),
                          Text(
                            'Số lượng: ${orderItem.listOrderProduct.first.orderedQuantity}',
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall!
                                .copyWith(
                                  color:
                                      Theme.of(context).colorScheme.secondary,
                                ),
                          ),
                          Row(children: [
                            Text(
                              'Màu sắc: ${orderItem.listOrderProduct.first.colourChoosed.name} ',
                              style: Theme.of(context)
                                  .textTheme
                                  .titleSmall!
                                  .copyWith(
                                    color:
                                        Theme.of(context).colorScheme.secondary,
                                  ),
                            ),
                            Container(
                              width: 15,
                              height: 15,
                              color: Color(int.parse(
                                  'FF${orderItem.listOrderProduct.first.colourChoosed.hex.replaceFirst('#', '')}',
                                  radix: 16)),
                            )
                          ]),
                          Align(
                            alignment: Alignment.centerRight,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  'Tổng cộng',
                                  style:
                                      Theme.of(context).textTheme.titleMedium,
                                ),
                                Text(
                                  '${formatNumber(orderItem.toltalCost)} VNĐ',
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleMedium!
                                      .copyWith(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .primary,
                                        fontWeight: FontWeight.bold,
                                      ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                InkWell(
                  onTap: () {
                    // Xử lý điều hướng tới màn hình chi tiết đơn hàng ở đây
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            DetailOrderScreen(order: orderItem),
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
                // LinearProgressIndicator(
                //   value: _getProgressValue(orderItem.orderStatus),
                //   backgroundColor: Colors.grey[200],
                //   valueColor: AlwaysStoppedAnimation<Color>(
                //     Theme.of(context).colorScheme.primary,
                //   ),
                // ),
              ],
            ),
          ),
        );
      },
    );
  }

  // double _getProgressValue(OrderStatus status) {
  //   switch (status) {
  //     case OrderStatus.pending:
  //       return 0.25;
  //     case OrderStatus.inProgress:
  //       return 0.5;
  //     case OrderStatus.assigned:
  //       return 0.75;
  //     case OrderStatus.completed:
  //       return 1.0;
  //     default:
  //       return 0.0;
  //   }
  // }
}
