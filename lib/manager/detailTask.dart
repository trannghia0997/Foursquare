// ignore_for_file: file_names, unused_result, prefer_function_declarations_over_variables
import 'package:Foursquare/services/order/models/order.dart';
import 'package:Foursquare/services/product/product.dart';
import 'package:Foursquare/shared/product_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class DetailTaskScreen extends HookConsumerWidget {
  const DetailTaskScreen({required this.order, super.key});
  final Order order;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedProducts = useState<Set<Product>>({});

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
              Text(
                "ID: ${order.id}",
                style: Theme.of(context).textTheme.titleMedium,
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                "Tên khách hàng: ${order.creatorId}",
              ),
              Text(
                "Địa chỉ giao hàng: ${order.addressId}",
              ),
              // Add other information or widgets related to the order
            ],
          ),
          const SizedBox(
            height: 16,
          ),
          Expanded(
            child: SizedBox(
              child: ListView.builder(
                itemCount: order.listOrderProduct.length,
                itemBuilder: (context, index) {
                  var product = order.listOrderProduct[index].product;
                  return ListTile(
                    title: Row(
                      children: [
                        SizedBox(
                          width: 125,
                          child: ProductImage(product: product),
                        ),
                        const SizedBox(
                          width: 16,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Tên sản phẩm: ${product.name}",
                                style: Theme.of(context).textTheme.titleMedium,
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              Text(
                                "Số lượng: ${order.listOrderProduct[index].orderedQuantity}m",
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
          ),
          Container(
            margin: const EdgeInsets.all(16.0),
            child: SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: order.orderStatus != OrderStatus.pending
                    ? () {
                        Navigator.pop(context);
                        // Add ProcessingStatus to preparer
                        order.setOrderStatus(OrderStatus.inProgress);
                      }
                    : () {
                        order.setOrderStatus(OrderStatus.inProgress);
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
          ),
        ],
      ),
    );
  }
}
