import 'package:foursquare/riverpod/order.dart';
import 'package:foursquare/shared/extension.dart';
import 'package:foursquare/shared/image.dart';
import 'package:foursquare/shared/models/data/order_status_code.dart';
import 'package:foursquare/shared/models/order.dart';
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
          buildOrderList(ref, OrderStatusCodeData.pending, context),
          buildOrderList(ref, OrderStatusCodeData.processing, context),
          buildOrderList(ref, OrderStatusCodeData.shipped, context),
          buildOrderList(ref, OrderStatusCodeData.delivered, context),
          buildOrderList(ref, OrderStatusCodeData.cancelled, context)
        ],
      ),
    );
  }

  Widget buildOrderList(
      WidgetRef ref, OrderStatusCodeData status, BuildContext context) {
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
        .where(
          (item) => item.order.statusCodeId == status.id,
        )
        .toList();
    return RefreshIndicator.adaptive(
      onRefresh: () async {
        ref.invalidate(allOrderInfoProvider);
      },
      child: ListView.builder(
        itemCount: filteredOrder.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              SystemSound.play(SystemSoundType.click);
              _pushScreen(context: context, order: filteredOrder[index].order);
            },
            child: SizedBox(
              child: Row(
                children: [
                  SizedBox(
                    width: 125,
                    child: ProductImage(
                      imageUrl: generateRandomImage(
                        seed: filteredOrder[index].order.id,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '#${filteredOrder[index].order.id.excerpt(
                                maxLength: 6,
                                withEllipsis: false,
                              )}',
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                        Text(
                          'Ngày đặt: ${filteredOrder[index].order.created.formatDateTime()}',
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                        Text(
                          'Khách hàng: ${filteredOrder[index].guest?.name ?? filteredOrder[index].creator.name}',
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
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
                                '${formatNumber(filteredOrder[index].totalAmount.toInt())} ₫',
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
          Theme(data: themeData, child: DetailOrderScreen(order: order)),
    ),
  );
}
