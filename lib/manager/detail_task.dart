import 'package:flutter/material.dart';
import 'package:foursquare/riverpod/assignment.dart';
import 'package:foursquare/riverpod/order.dart';
import 'package:foursquare/riverpod/product.dart';
import 'package:foursquare/services/pb.dart';
import 'package:foursquare/shared/models/address.dart';
import 'package:foursquare/shared/models/data/order_status_code.dart';
import 'package:foursquare/shared/models/enums/assignment_status.dart';
import 'package:foursquare/shared/models/order.dart';
import 'package:foursquare/shared/models/views/product_quantity_summary.dart';
import 'package:foursquare/shared/screen/cancel_order.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:foursquare/shared/product_image.dart';

class DetailOrderScreen extends HookConsumerWidget {
  const DetailOrderScreen({super.key, required this.order});
  final OrderDto order;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final orderInfo = ref.watch(singleOrderInfoProvider(order.id));
    final assignmentInfo = ref.watch(AssignmentInfoByOrderProvider(order.id));
    return orderInfo.when(
      data: (orderInfoValue) => assignmentInfo.when(
        data: (assignmentInfoValue) {
          return _buildOrderInfo(
            context,
            ref,
            orderInfo: orderInfoValue,
            warehouseAssignments: assignmentInfoValue.$1,
            shipmentAssignments: assignmentInfoValue.$2,
          );
        },
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, _) => Center(
          child: Text(
            'Error: $error',
          ),
        ),
      ),
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (error, _) => Center(
        child: Text(
          'Error: $error',
        ),
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
    final categoryId = orderInfo.orderItems.map((e) => e.productCategoryId);
    final productCategoryInfo =
        ref.watch(batchProductCategoryInfoProvider(categoryId));
    final productQuantitySummary = ref.watch(
        batchProductQuantitySummaryViewByProductCategoryProvider(categoryId));
    List<ProductCategoryInfo> productCategoryInfoList = [];
    List<ProductQuantitySummaryView?> productQuantitySummaryList = [];
    switch (productCategoryInfo) {
      case AsyncLoading():
        return const Center(child: CircularProgressIndicator());
      case AsyncData(:final value):
        productCategoryInfoList = value;
        break;
      case AsyncError(:final error):
        return Center(child: Text('Error: $error'));
    }
    switch (productQuantitySummary) {
      case AsyncLoading():
        return const Center(child: CircularProgressIndicator());
      case AsyncData(:final value):
        productQuantitySummaryList = value;
        break;
      case AsyncError(:final error):
        return Center(child: Text('Error: $error'));
    }
    final anyWarehouseAssignmentsCancelled = warehouseAssignments.any(
      (element) =>
          element.warehouseAssignment.status == AssignmentStatus.cancelled,
    );
    final anyShippingAssignmentsCancelled = shipmentAssignments.any(
      (element) =>
          element.shipmentAssignment.status == AssignmentStatus.cancelled,
    );
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Thông tin đơn hàng',
          style: TextStyle(fontSize: 18),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "ID: ${order.id}",
              style: Theme.of(context)
                  .textTheme
                  .titleMedium!
                  .copyWith(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Text("Tên khách hàng: ${orderInfo.customer.name ?? "N/A"}",
                style: const TextStyle(fontSize: 16)),
            Text("Địa chỉ giao hàng: ${orderInfo.address.fullAddress}",
                style: const TextStyle(fontSize: 16)),
            if (order.note != null)
              Text(
                "Lưu ý của khách: ${order.note}",
                style: const TextStyle(fontStyle: FontStyle.italic),
              ),
            if (order.statusCodeId == OrderStatusCodeData.cancelled.id)
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Lý do hủy đơn: ${order.otherInfo}",
                    style: const TextStyle(
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold,
                      color: Colors.red,
                    ),
                  ),
                  if (!anyWarehouseAssignmentsCancelled &&
                      !anyShippingAssignmentsCancelled)
                    const Text(
                      "Người dùng đã hủy đơn",
                      style: TextStyle(
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 238, 78, 67),
                      ),
                    ),
                  if (anyWarehouseAssignmentsCancelled &&
                      !anyShippingAssignmentsCancelled)
                    const Text(
                      "Nhân viên kho đã hủy đơn",
                      style: TextStyle(
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 238, 78, 67),
                      ),
                    ),
                  if (!anyWarehouseAssignmentsCancelled &&
                      anyShippingAssignmentsCancelled)
                    const Text(
                      "Nhân viên vận chuyển đã hủy đơn",
                      style: TextStyle(
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold,
                        color: Colors.red,
                      ),
                    ),
                  if (anyWarehouseAssignmentsCancelled &&
                      anyShippingAssignmentsCancelled)
                    const Text(
                      "Người quản lý đã hủy đơn",
                      style: TextStyle(
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 238, 78, 67),
                      ),
                    ),
                ],
              ),
            const SizedBox(height: 16),
            Expanded(
              child: ListView.builder(
                itemCount: orderInfo.orderItems.length,
                itemBuilder: (context, index) {
                  final productCategoryItem = productCategoryInfoList[index];
                  return ListTile(
                    title: Row(
                      children: [
                        SizedBox(
                          width: 125,
                          child: ProductImage(
                            imageUrl: Uri.parse(
                                productCategoryItem.images.first.imageUrl),
                          ),
                        ),
                        const SizedBox(width: 16),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Tên sản phẩm: ${productCategoryItem.category.name}",
                                style: Theme.of(context).textTheme.titleMedium,
                              ),
                              const SizedBox(height: 8),
                              Text(
                                "Số lượng: ${orderInfo.orderItems[index].orderedQty}m",
                              ),
                              Text(
                                "Số lượng trong kho: ${productQuantitySummaryList[index]?.totalQty ?? 0}m",
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () async {
                  if (order.statusCodeId != OrderStatusCodeData.pending.id) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => CancelOrderScreen(order: order),
                      ),
                    );
                  } else {
                    final orderEdit = OrderEditDto.fromJson(order.toJson())
                      ..statusCodeId = OrderStatusCodeData.confirmed.id;
                    await PBApp.instance.collection('orders').update(
                          order.id,
                          body: orderEdit.toJson(),
                        );
                    // TODO: We will need to make internal order and warehouse assignment
                    if (!context.mounted) return;
                    Navigator.of(context).pop();
                  }
                },
                child: Text(
                  order.statusCodeId == OrderStatusCodeData.pending.id
                      ? 'Hủy đơn hàng'
                      : 'Xác nhận đơn hàng',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: order.statusCodeId == OrderStatusCodeData.pending.id
                        ? Colors.red
                        : null,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
