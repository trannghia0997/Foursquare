import 'package:foursquare/services/order/models/order.dart';
import 'package:foursquare/services/order/models/order_notifier.dart';
import 'package:foursquare/shared/numeric.dart';
import 'package:foursquare/shared/product_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter/services.dart';
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
          buildOrderList(ref, OrderStatus.pending, context),
          buildOrderList(ref, OrderStatus.inProgress, context),
          buildOrderList(ref, OrderStatus.assigned, context),
          buildOrderList(ref, OrderStatus.completed, context),
          buildOrderList(ref, OrderStatus.cancelled, context)
        ],
      ),
    );
  }

  Widget buildOrderList(
      WidgetRef ref, OrderStatus status, BuildContext context) {
    final orderState = ref.watch(orderProvider);
    List<Order> filteredOrder = orderState.orders
        .where((order) => order.orderStatus == status)
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
                      product:
                          filteredOrder[index].listOrderProduct.first.product),
                ),
                const SizedBox(
                  width: 16,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        filteredOrder[index]
                            .listOrderProduct
                            .first
                            .product
                            .name,
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      Text(
                        'Số lượng: ${filteredOrder[index].listOrderProduct.first.orderedQuantity}',
                        style: Theme.of(context).textTheme.titleSmall!.copyWith(
                              color: Theme.of(context).colorScheme.secondary,
                            ),
                      ),
                      Row(children: [
                        Text(
                          'Màu sắc: ${filteredOrder[index].listOrderProduct.first.colourChoosed.name} ',
                          style: Theme.of(context)
                              .textTheme
                              .titleSmall!
                              .copyWith(
                                color: Theme.of(context).colorScheme.secondary,
                              ),
                        ),
                        Container(
                          width: 15,
                          height: 15,
                          color: Color(int.parse(
                              'FF${filteredOrder[index].listOrderProduct.first.colourChoosed.hex.replaceFirst('#', '')}',
                              radix: 16)),
                        )
                      ]),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              'Giá ước tính',
                              style: Theme.of(context).textTheme.titleMedium,
                            ),
                            Text(
                              '${formatNumber(filteredOrder[index].toltalCost)} ₫',
                              style: Theme.of(context)
                                  .textTheme
                                  .titleMedium!
                                  .copyWith(
                                    color:
                                        Theme.of(context).colorScheme.primary,
                                    fontWeight: FontWeight.bold,
                                  ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 8),
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
