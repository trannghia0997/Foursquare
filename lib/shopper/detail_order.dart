import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:foursquare/services/pb.dart';
import 'package:foursquare/shared/extension.dart';
import 'package:foursquare/shared/widgets/expansion_tile.dart';
import 'package:foursquare/shopper/order_history.dart';
import 'package:foursquare/riverpod/order.dart';
import 'package:foursquare/riverpod/product.dart';
import 'package:foursquare/shared/custom_list.dart';
import 'package:foursquare/shared/models/address.dart';
import 'package:foursquare/shared/models/data/order_status_code.dart';
import 'package:foursquare/shared/models/order_item.dart';
import 'package:flutter/material.dart';
import 'package:foursquare/shared/widgets/order_item_tile.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ShopperDetailOrderScreen extends HookConsumerWidget {
  const ShopperDetailOrderScreen({required this.orderInfo, super.key});
  final OrderInfo orderInfo;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final productCategoryInfo = ref.watch(batchProductCategoryInfoProvider(
      orderInfo.orderItems.map((e) => e.productCategoryId).toCustomList(),
    ));
    var productCategoryList = <ProductCategoryInfo>[];
    switch (productCategoryInfo) {
      case AsyncLoading():
        return const Center(child: CircularProgressIndicator());
      case AsyncData(value: []):
        return const Center(child: Text('Không có sản phẩm nào'));
      case AsyncData(:final value):
        productCategoryList = value;
      case AsyncError(:final error):
        return Center(child: Text('Error: $error'));
    }
    final orderEditDtoList = orderInfo.orderItems.map((e) {
      return OrderItemEditDto.fromJson(
        e.toJson(),
      );
    }).toList();
    final orderStatus =
        OrderStatusCodeData.fromId(orderInfo.order.statusCodeId);
    final statusText = orderStatus.vietnameseLocalizationString;
    final statusBackgroundAndForegroundColor =
        orderStatus.backgroundAndForegroundColor;
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: // User cancel order if order status is pending
          (orderStatus == OrderStatusCodeData.pending)
              ? SizedBox(
                  width: MediaQuery.of(context).size.width * 0.9,
                  child: FloatingActionButton.extended(
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return HookBuilder(
                            builder: (context) {
                              final reasonController =
                                  useTextEditingController();
                              return AlertDialog(
                                title: const Text('Lý do hủy đơn hàng'),
                                content: TextField(
                                  controller: reasonController,
                                  decoration: const InputDecoration(
                                      hintText: "Nhập lý do hủy"),
                                ),
                                actions: [
                                  TextButton(
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                    child: const Text('Hủy'),
                                  ),
                                  TextButton(
                                    onPressed: () async {
                                      final reason = reasonController.text;
                                      if (reason.isNotEmpty) {
                                        // Call the function to cancel the order with the reason
                                        await PBApp.instance
                                            .collection('orders')
                                            .update(
                                              orderInfo.order.id,
                                              body: orderInfo.order
                                                  .copyWith(
                                                    statusCodeId:
                                                        OrderStatusCodeData
                                                            .cancelled.id,
                                                    otherInfo: reason,
                                                  )
                                                  .toJson(),
                                            );
                                        if (!context.mounted) return;
                                        Navigator.of(context).pop();
                                      }
                                    },
                                    child: const Text('Xác nhận'),
                                  ),
                                ],
                              );
                            },
                          );
                        },
                      );
                    },
                    label: const Text(
                      'Hủy đơn hàng',
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    icon: const Icon(Icons.cancel, color: Colors.white),
                    backgroundColor: Colors.red,
                  ),
                )
              : null,
      appBar: AppBar(
        actions: [
          IconButton(
            icon: const Icon(Icons.history),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => OrderHistoryScreen(
                    order: orderInfo.order,
                  ),
                ),
              );
            },
          ),
        ],
        title: const Row(
          children: [
            Text(
              'Thông tin đơn hàng',
            ),
          ],
        ),
      ),
      body: RefreshIndicator.adaptive(
        onRefresh: () async {
          ref.invalidate(allOrderInfoProvider);
        },
        child: Padding(
          padding: const EdgeInsets.only(
            left: 16.0,
            right: 16.0,
            top: 16.0,
            bottom: 80.0,
          ),
          child: ListView(
            children: [
              ListTile(
                tileColor: statusBackgroundAndForegroundColor.$1,
                title: Text(
                  'Trạng thái: $statusText',
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        color: statusBackgroundAndForegroundColor.$2,
                      ),
                ),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Cập nhật lần cuối: ${orderInfo.order.updated.formattedDateTime}",
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                            color: statusBackgroundAndForegroundColor.$2,
                          ),
                    ),
                    if (orderStatus == OrderStatusCodeData.cancelled)
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Text(
                          "Lý do hủy: ${orderInfo.order.otherInfo ?? 'Không có'}",
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium
                              ?.copyWith(
                                color: statusBackgroundAndForegroundColor.$2,
                              ),
                        ),
                      ),
                  ],
                ),
              ),
              if (orderStatus == OrderStatusCodeData.delivered) ...[
                const SizedBox(height: 8),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Đánh giá đơn hàng:",
                      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                            color: Colors.grey[700],
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                    HookBuilder(
                      builder: (context) {
                        final rating = useState(orderInfo.order.rating ?? 0);
                        return Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: List.generate(5, (index) {
                            return IconButton(
                              icon: Icon(
                                index < rating.value
                                    ? Icons.star
                                    : Icons.star_border,
                                color: Colors.amber,
                              ),
                              onPressed: () async {
                                rating.value = index + 1;
                                await PBApp.instance
                                    .collection('orders')
                                    .update(
                                      orderInfo.order.id,
                                      body: orderInfo.order
                                          .copyWith(rating: rating.value)
                                          .toJson(),
                                    );
                              },
                            );
                          }),
                        );
                      },
                    ),
                  ],
                ),
              ],
              const SizedBox(height: 8),
              Text(
                "ID: ${orderInfo.order.id.toUpperCase()}",
                style: Theme.of(context)
                    .textTheme
                    .titleMedium
                    ?.copyWith(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              Text(
                "Địa chỉ giao hàng: ${orderInfo.address.fullAddress}",
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              const SizedBox(height: 8),
              Text(
                "Ngày tạo: ${orderInfo.order.created.formattedDateTime}",
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              const SizedBox(height: 8),
              Text(
                "Lưu ý của khách hàng:",
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                      color: Colors.grey[700],
                      fontWeight: FontWeight.bold,
                    ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 4.0),
                child: Text(
                  orderInfo.order.note?.isNotEmpty == true
                      ? orderInfo.order.note!
                      : 'Không có',
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        color: Colors.grey[700],
                      ),
                ),
              ),
              const SizedBox(height: 16),
              ContactExpansionTile(orderInfo: orderInfo),
              ExpansionTile(
                title: const Row(
                  children: [
                    Icon(Icons.list),
                    SizedBox(width: 8),
                    Text("Chi tiết đơn hàng"),
                  ],
                ),
                children: [
                  ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: orderInfo.orderItems.length,
                    itemBuilder: (context, index) {
                      return OrderItemTile(
                        isPriceVisible: false,
                        productCategoryInfo: productCategoryList[index],
                        orderItemEdit: orderEditDtoList[index],
                      );
                    },
                  ),
                ],
              ),
              InvoiceExpansionTile(orderInfo: orderInfo),
              ShipmentExpansionTile(orderInfo: orderInfo),
            ],
          ),
        ),
      ),
    );
  }
}
