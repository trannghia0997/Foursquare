import 'package:flutter/material.dart';
import 'package:foursquare/shared/screen/cancel_order.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
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
              style: Theme.of(context)
                  .textTheme
                  .titleMedium!
                  .copyWith(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Text("Tên khách hàng: ${order.creatorId}",
                style: const TextStyle(fontSize: 16)),
            Text("Địa chỉ giao hàng: ${order.addressId}",
                style: const TextStyle(fontSize: 16)),
            if (order.note != null)
              Text(
                "Lưu ý của khách: ${order.note}",
                style: const TextStyle(fontStyle: FontStyle.italic),
              ),
            if (order.orderStatus == OrderStatus.cancelled)
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
                  if (order.warehouseAssignmentStatus !=
                          WarehouseAssignmentStatus.cancelled &&
                      order.shipmentAssignmentStatus !=
                          ShipmentAssignmentStatus.cancelled)
                    const Text(
                      "Người dùng đã hủy đơn",
                      style: TextStyle(
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 238, 78, 67),
                      ),
                    ),
                  if (order.warehouseAssignmentStatus ==
                          WarehouseAssignmentStatus.cancelled &&
                      order.shipmentAssignmentStatus !=
                          ShipmentAssignmentStatus.cancelled)
                    const Text(
                      "Nhân viên kho đã hủy đơn",
                      style: TextStyle(
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 238, 78, 67),
                      ),
                    ),
                  if (order.shipmentAssignmentStatus ==
                          ShipmentAssignmentStatus.cancelled &&
                      order.warehouseAssignmentStatus !=
                          WarehouseAssignmentStatus.cancelled)
                    const Text(
                      "Nhân viên vận chuyển đã hủy đơn",
                      style: TextStyle(
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold,
                        color: Colors.red,
                      ),
                    ),
                  if (order.warehouseAssignmentStatus ==
                          WarehouseAssignmentStatus.cancelled &&
                      order.shipmentAssignmentStatus ==
                          ShipmentAssignmentStatus.cancelled)
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
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => CancelOrderScreen(order: order),
                      ),
                    );
                  } else {
                    orderNotifier.setOrderStatus(
                        order.id, OrderStatus.inProgress);
                    orderNotifier.setWarehouseAssignmentStatus(
                        order.id, WarehouseAssignmentStatus.pending);
                    Navigator.of(context).pop();
                  }
                },
                child: Text(
                  order.orderStatus != OrderStatus.pending
                      ? 'Hủy đơn hàng'
                      : 'Xác nhận đơn hàng',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: order.orderStatus != OrderStatus.pending
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
