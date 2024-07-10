import 'package:foursquare/services/assignment/models/warehouse_assignment.dart';
import 'package:foursquare/services/order/models/order.dart';
import 'package:foursquare/services/order/models/order_product.dart';
import 'package:foursquare/shared/product_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:foursquare/preparer/cancel_order.dart';
import 'package:foursquare/preparer/report_product.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class DetailTaskScreen extends HookConsumerWidget {
  const DetailTaskScreen({required this.order, super.key});
  final Order order;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedProducts = useState<Set<OrderProduct>>({});
    final expandedProduct = useState<OrderProduct?>(null);

    useEffect(() {
      listener() {
        ref.refresh(() {} as Refreshable);
      }

      selectedProducts.addListener(listener);
      return () {
        selectedProducts.removeListener(listener);
      };
    }, [selectedProducts]);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Thông tin đơn hàng', style: TextStyle(fontSize: 18)),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: OrderDetails(order: order),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: order.listOrderProduct.length,
              itemBuilder: (context, index) {
                final product = order.listOrderProduct[index];
                final isSelected = selectedProducts.value.contains(product);
                final isExpanded = expandedProduct.value == product;
                final backgroundColor =
                    isSelected ? Colors.lightGreen : Colors.white;

                Widget productTile = Container(
                  color: backgroundColor,
                  child: Column(
                    children: [
                      ListTile(
                        title: Row(
                          children: [
                            SizedBox(
                              width: 125,
                              child: ProductImage(product: product.product),
                            ),
                            const SizedBox(width: 16),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Tên sản phẩm: ${product.product.name}",
                                    style:
                                        Theme.of(context).textTheme.titleMedium,
                                  ),
                                  const SizedBox(height: 8),
                                  Text("Số lượng: ${product.orderedQuantity}m"),
                                ],
                              ),
                            ),
                          ],
                        ),
                        onTap: () {
                          expandedProduct.value = isExpanded ? null : product;
                        },
                      ),
                      if (isExpanded &&
                          order.orderStatus == OrderStatus.inProgress)
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              IconButton(
                                icon: const Icon(Icons.check,
                                    color: Colors.green),
                                onPressed: () {
                                  selectedProducts.value = {
                                    ...selectedProducts.value,
                                    product
                                  };
                                },
                              ),
                              IconButton(
                                icon:
                                    const Icon(Icons.edit, color: Colors.blue),
                                onPressed: () {
                                  // Handle product edit
                                  // Thai, you add Set product'quantity in here
                                },
                              ),
                              IconButton(
                                icon:
                                    const Icon(Icons.close, color: Colors.red),
                                onPressed: () {
                                  selectedProducts.value =
                                      Set.from(selectedProducts.value)
                                        ..remove(product);
                                  showDialog(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return const ReportProductScreen();
                                    },
                                  );
                                },
                              ),
                            ],
                          ),
                        ),
                    ],
                  ),
                );

                if (order.orderStatus == OrderStatus.inProgress) {
                  return Dismissible(
                    key: Key(product.toString()),
                    background: Container(
                      color: Colors.green,
                      alignment: Alignment.centerLeft,
                      padding: const EdgeInsets.only(left: 20.0),
                      child: const Icon(Icons.check, color: Colors.white),
                    ),
                    secondaryBackground: Container(
                      color: Colors.red,
                      alignment: Alignment.centerRight,
                      padding: const EdgeInsets.only(right: 20.0),
                      child: const Icon(Icons.close, color: Colors.white),
                    ),
                    confirmDismiss: (direction) async {
                      if (direction == DismissDirection.startToEnd) {
                        selectedProducts.value = {
                          ...selectedProducts.value,
                          product
                        };
                        return false; // Prevent actual dismissal
                      } else if (direction == DismissDirection.endToStart) {
                        selectedProducts.value =
                            Set.from(selectedProducts.value)..remove(product);
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return const ReportProductScreen();
                          },
                        );
                        return false; // Prevent actual dismissal
                      }
                      return false;
                    },
                    child: productTile,
                  );
                } else {
                  return productTile;
                }
              },
            ),
          ),
          if (order.warehouseAssignmentStatus ==
              WarehouseAssignmentStatus.pending)
            OrderActionButton(
              text: 'Nhận đơn hàng',
              onPressed: () {
                order.setWarehouseAssignmentStatus(
                    WarehouseAssignmentStatus.inProgress);
              },
            ),
          if (order.warehouseAssignmentStatus ==
              WarehouseAssignmentStatus.inProgress)
            ProcessingActions(
              onComplete: () {
                order.setWarehouseAssignmentStatus(
                    WarehouseAssignmentStatus.completed);
              },
              onCancel: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const CancelOrderScreen()),
                );
              },
            ),
        ],
      ),
    );
  }
}

class OrderDetails extends StatelessWidget {
  const OrderDetails({super.key, required this.order});
  final Order order;

  @override
  Widget build(BuildContext context) {
    return Column(
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
      ],
    );
  }
}

class OrderActionButton extends StatelessWidget {
  const OrderActionButton(
      {super.key, required this.text, required this.onPressed});
  final String text;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16.0),
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onPressed,
        child: Text(text, style: const TextStyle(fontWeight: FontWeight.bold)),
      ),
    );
  }
}

class ProcessingActions extends StatelessWidget {
  const ProcessingActions(
      {super.key, required this.onComplete, required this.onCancel});
  final VoidCallback onComplete;
  final VoidCallback onCancel;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ElevatedButton(
            onPressed: onComplete,
            child: const Text(
              'Hoàn thành đơn hàng',
              style:
                  TextStyle(color: Colors.green, fontWeight: FontWeight.bold),
            ),
          ),
          ElevatedButton(
            onPressed: onCancel,
            child: const Text(
              'Hủy đơn hàng',
              style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
