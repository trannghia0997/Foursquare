// ignore_for_file: file_names, unused_result, prefer_function_declarations_over_variables
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:foursquare_client/data/order.dart';
import 'package:foursquare_client/data/product.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../client/cart.dart';

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
                "Tên khách hàng: ${order.clientName}",
              ),
              Text(
                "Địa chỉ giao hàng: ${order.clientAddress}",
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
                itemCount: order.products.length,
                itemBuilder: (context, index) {
                  var product = order.products[index];
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
                                "Số lượng: ${product.qty}m",
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
                onPressed: order.status != Status.pending
                    ? () {
                        Navigator.pop(context);
                        // Add ProcessingStatus to preparer
                        order.setProcessingStatus(
                            ProcessingStatus.nonProcessing);
                        
                      }
                    : () {
                        order.setStatus(Status.processing);
                        Navigator.pop(context);
                      },
                child: Text(
                  order.status != Status.pending
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
