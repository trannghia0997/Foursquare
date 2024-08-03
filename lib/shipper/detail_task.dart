// ignore_for_file: unused_result, prefer_function_declarations_over_variables, collection_methods_unrelated_type
import 'package:foursquare/shared/screen/cancel_order.dart';
import 'package:foursquare/services/assignment/models/shipment_assignment.dart';
import 'package:foursquare/services/order/models/order.dart';
import 'package:foursquare/services/order/models/order_notifier.dart';
import 'package:foursquare/services/product/product.dart';
import 'package:foursquare/shared/product_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class DetailTaskScreen extends HookConsumerWidget {
  const DetailTaskScreen({required this.order, super.key});
  final Order order;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedProducts = useState<Set<Product>>({});
    final orderNotifier = ref.read(orderProvider.notifier);

    // Sử dụng useEffect để theo dõi thay đổi trong selectedProducts
    useEffect(() {
      final listener = () {
        ref.refresh(() {} as Refreshable);
      };
      selectedProducts.addListener(listener);
      return () {
        selectedProducts.removeListener(listener);
      };
    }, [selectedProducts]);

    return Scaffold(
      appBar: AppBar(
        actions: const [],
        title: const Row(
          children: [
            Text(
              '       Thông tin đơn hàng',
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
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
                    Text(
                      "Tên khách hàng: ${order.creatorId}",
                      style: const TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      "Địa chỉ giao hàng: ${order.addressId}",
                      style: const TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    if (order.note != null)
                      Text(
                        "Lưu ý của khách: ${order.note}",
                        style: const TextStyle(fontStyle: FontStyle.italic),
                      ),
                    if (order.orderStatus == OrderStatus.cancelled)
                      Text(
                        "Lý do hủy đơn: ${order.note}",
                        style: const TextStyle(fontStyle: FontStyle.italic),
                      ),
                  ],
                ),
              ),

              // Add other information or widgets related to the order
            ],
          ),
          Expanded(
            child: SizedBox(
              child: ListView.builder(
                itemCount: order.listOrderProduct.length,
                itemBuilder: (context, index) {
                  var product = order.listOrderProduct[index];
                  bool isSelected = selectedProducts.value.contains(product);
                  Color backgroundColor =
                      isSelected ? Colors.lightGreen : Colors.white;

                  return ListTile(
                    title: Row(
                      children: [
                        SizedBox(
                          width: 125,
                          child: ProductImage(product: product.product),
                        ),
                        const SizedBox(
                          width: 16,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Tên sản phẩm: ${product.product.name}",
                                style: Theme.of(context).textTheme.titleMedium,
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              Text(
                                "Số lượng: ${product.orderedQuantity}m",
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    tileColor: backgroundColor,
                  );
                },
              ),
            ),
          ),
          // Delivering an order
          if (order.shipmentAssignmentStatus ==
              ShipmentAssignmentStatus.pending)
            Container(
              margin: const EdgeInsets.all(16.0),
              child: SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    orderNotifier.setShipmentAssignmentStatus(
                        order.id, ShipmentAssignmentStatus.inProgress);
                  },
                  child: const Text('Nhận đơn hàng',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                ),
              ),
            ),
          // Completed delivering
          if (order.shipmentAssignmentStatus ==
              ShipmentAssignmentStatus.inProgress)
            Container(
              margin: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      // Complete the order
                      orderNotifier.setShipmentAssignmentStatus(
                          order.id, ShipmentAssignmentStatus.completed);
                      orderNotifier.setOrderStatus(
                          order.id, OrderStatus.completed);
                    },
                    child: const Text(
                      'Hoàn thành đơn hàng',
                      style: TextStyle(
                        color: Colors.green,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // Handle canceling the order here
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                CancelOrderScreen(order: order)),
                      );
                    },
                    child: const Text(
                      'Hủy đơn hàng',
                      style: TextStyle(
                        color: Colors.red,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
        ],
      ),
    );
  }
}

// Tập trung -> nhân viên kho và quản lý
