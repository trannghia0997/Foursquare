import 'package:flutter/material.dart';
import 'package:foursquare/riverpod/assignment.dart';
import 'package:foursquare/riverpod/order.dart';
import 'package:foursquare/riverpod/product.dart';
import 'package:foursquare/shared/custom_list.dart';
import 'package:foursquare/shared/extension.dart';
import 'package:foursquare/shared/models/address.dart';
import 'package:foursquare/shared/models/data/order_status_code.dart';
import 'package:foursquare/shared/models/order.dart';
import 'package:foursquare/shared/models/order_item.dart';
import 'package:foursquare/shared/screen/cancel_order.dart';
import 'package:foursquare/shared/widgets/order_item_tile.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ManagerDetailOrderScreen extends HookConsumerWidget {
  const ManagerDetailOrderScreen({super.key, required this.order});
  final OrderDto order;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final orderInfo = ref.watch(singleOrderInfoProvider(order.id));
    final assignmentInfo = ref.watch(AssignmentInfoByOrderProvider(order.id));
    return orderInfo.when(
      data: (orderInfoValue) {
        return assignmentInfo.when(
          data: (assignmentInfoValue) {
            return _buildOrderInfo(
              context,
              ref,
              orderInfo: orderInfoValue,
              warehouseAssignments: assignmentInfoValue.$1,
              shipmentAssignments: assignmentInfoValue.$2,
            );
          },
          loading: () => _buildBaseWidget(const Center(
            child: CircularProgressIndicator(),
          )),
          error: (error, _) => _buildBaseWidget(
            Center(
              child: Text(
                'Error: $error',
              ),
            ),
          ),
        );
      },
      loading: () => _buildBaseWidget(const Center(
        child: CircularProgressIndicator(),
      )),
      error: (error, _) => _buildBaseWidget(
        Center(
          child: Text(
            'Error: $error',
          ),
        ),
      ),
    );
  }

  Widget _buildBaseWidget(Widget? widget) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Thông tin đơn hàng',
          style: TextStyle(fontSize: 18),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: widget,
      ),
    );
  }

  Widget _buildOrderInfo(
    BuildContext context,
    WidgetRef ref, {
    required OrderInfo orderInfo,
    required List<WarehouseAssignmentInfo> warehouseAssignments,
    required List<ShipmentAssignmentInfo> shipmentAssignments,
  }) {
    final statusText = OrderStatusCodeData.values
        .firstWhere((element) => element.id == orderInfo.order.statusCodeId)
        .toVietnameseText();
    final statusBackgroundAndForegroundColor = OrderStatusCodeData.values
        .firstWhere((element) => element.id == orderInfo.order.statusCodeId)
        .backgroundAndForegroundColor;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Thông tin đơn hàng',
          style: TextStyle(fontSize: 18),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: // User cancel order if order status is pending
          (orderInfo.order.statusCodeId == OrderStatusCodeData.pending.id)
              ? SizedBox(
                  width: MediaQuery.of(context).size.width * 0.9,
                  child: FloatingActionButton.extended(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CancelOrderScreen(
                            order: orderInfo.order,
                          ),
                        ),
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
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
                    "Cập nhật lần cuối: ${orderInfo.order.updated.formatDateTime()}",
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color: statusBackgroundAndForegroundColor.$2,
                        ),
                  ),
                  if (orderInfo.order.statusCodeId ==
                      OrderStatusCodeData.cancelled.id)
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Text(
                        "Lý do hủy: ${orderInfo.order.otherInfo ?? 'Không có'}",
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                              color: statusBackgroundAndForegroundColor.$2,
                            ),
                      ),
                    ),
                ],
              ),
            ),
            Text(
              "ID: ${order.id}",
              style: Theme.of(context)
                  .textTheme
                  .titleMedium!
                  .copyWith(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Text(
                "Tên khách hàng: ${orderInfo.guest?.name ?? orderInfo.creator.name}",
                style: const TextStyle(fontSize: 16)),
            Text("Địa chỉ giao hàng: ${orderInfo.address.fullAddress}",
                style: const TextStyle(fontSize: 16)),
            if (order.note != null)
              Text(
                "Lưu ý của khách: ${order.note}",
                style: const TextStyle(fontStyle: FontStyle.italic),
              ),
            const SizedBox(height: 16),
            ManagerOrderItemsExpansionTile(
              orderInfo: orderInfo,
            ),
          ],
        ),
      ),
    );
  }
}

class ManagerOrderItemsExpansionTile extends HookConsumerWidget {
  const ManagerOrderItemsExpansionTile({super.key, required this.orderInfo});

  final OrderInfo orderInfo;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final categoryId =
        orderInfo.orderItems.map((e) => e.productCategoryId).toCustomList();
    final productCategoryInfo =
        ref.watch(batchProductCategoryInfoProvider(categoryId));
    List<ProductCategoryInfo> productCategoryInfoList = [];
    switch (productCategoryInfo) {
      case AsyncLoading():
        return const Center(child: CircularProgressIndicator());
      case AsyncData(:final value):
        productCategoryInfoList = value;
        break;
      case AsyncError(:final error):
        return Center(child: Text('Error: $error'));
    }

    final orderItemEditList = orderInfo.orderItems
        .map((e) => OrderItemEditDto.fromJson(e.toJson()))
        .toList();
    return Expanded(
      child: ListView.builder(
        itemCount: orderInfo.orderItems.length,
        itemBuilder: (context, index) {
          final productCategoryItem = productCategoryInfoList[index];
          final orderItem = orderItemEditList[index];
          return OrderItemTile(
            isManager: true,
            isPriceVisible: false,
            productCategoryInfo: productCategoryItem,
            orderItemEdit: orderItem,
          );
        },
      ),
    );
  }
}
