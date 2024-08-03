import 'package:flutter/material.dart';
import 'package:foursquare/services/assignment/models/warehouse_assignment.dart';
import 'package:foursquare/services/order/models/order_notifier.dart';
import 'package:foursquare/services/warehouse/warehouse.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:foursquare/services/order/models/order.dart';
import 'package:foursquare/shared/product_image.dart';

class DetailTaskScreen extends HookConsumerWidget {
  const DetailTaskScreen({super.key, required this.order});
  final Order order;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
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
              style: Theme.of(context).textTheme.titleMedium,
            ),
            const SizedBox(height: 8),
            Text("Tên khách hàng: ${order.creatorId}"),
            Text("Địa chỉ giao hàng: ${order.addressId}"),
            if (order.orderStatus == OrderStatus.cancelled)
              Text(
                "Lý do hủy đơn: ${order.note}",
                style: const TextStyle(fontStyle: FontStyle.italic),
              ),
            const SizedBox(height: 16),
            Expanded(
              child: ListView.builder(
                itemCount: order.listOrderProduct.length,
                itemBuilder: (context, index) {
                  var product = order.listOrderProduct[index].product;
                  // Assume warehouses and other data are accessible here
                  // var warehouseProduct = warehouses.first.products.firstWhere(
                  //   (wp) => wp.productId == product.id,
                  //   orElse: () => null,
                  // );
                  return ListTile(
                    title: Row(
                      children: [
                        SizedBox(
                          width: 125,
                          child: ProductImage(product: product),
                        ),
                        const SizedBox(width: 16),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Tên sản phẩm: ${product.name}",
                                style: Theme.of(context).textTheme.titleMedium,
                              ),
                              const SizedBox(height: 8),
                              Text(
                                "Số lượng: ${order.listOrderProduct[index].orderedQuantity}m",
                              ),
                              // Text(
                              //   "Số lượng trong kho: ${warehouseProduct?.qty ?? 'N/A'}m",
                              // ),

                              Text(
                                "Số lượng trong kho: ${warehouses.first.products[index].qty}m",
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
                onPressed: () {
                  final orderNotifier = ref.read(orderProvider.notifier);
                  if (order.orderStatus != OrderStatus.pending) {
                    orderNotifier.setOrderStatus(
                        order.id, OrderStatus.inProgress);
                  } else {
                    orderNotifier.setOrderStatus(
                        order.id, OrderStatus.inProgress);
                    orderNotifier.setWarehouseAssignmentStatus(
                        order.id, WarehouseAssignmentStatus.pending);
                  }
                  Navigator.pop(context);
                },
                child: Text(
                  order.orderStatus != OrderStatus.pending
                      ? 'Giao việc'
                      : 'Xác nhận đơn hàng',
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
