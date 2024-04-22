// ignore_for_file: file_names, unused_result, prefer_function_declarations_over_variables

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:foursquare_client/data/order.dart';
import 'package:foursquare_client/data/product.dart';
import 'package:foursquare_client/preparer/cancelOrder.dart';
import 'package:foursquare_client/preparer/reportProduct.dart';
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
              // if (order.note != null)
              //   Text(
              //     "Lưu ý của khách: ${order.note}",
              //   ),
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
                  bool isSelected = selectedProducts.value.contains(product);
                  Color backgroundColor =
                      isSelected ? Colors.lightGreen : Colors.white;

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
                        // Checking product and reporting product if needed
                        if (order.processingStatus ==
                            ProcessingStatus.isProcessing)
                          Column(
                            children: [
                              ElevatedButton.icon(
                                onPressed: () {
                                  isSelected = true;
                                  selectedProducts.value.add(product);
                                },
                                icon: const Icon(Icons.check,
                                    color: Colors.green),
                                label: const SizedBox.shrink(),
                                style: const ButtonStyle(
                                  alignment: Alignment.center,
                                ),
                              ),
                              ElevatedButton.icon(
                                onPressed: () {
                                  isSelected = false;
                                  selectedProducts.value.remove(product);
                                  showDialog(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return ReportProduct();
                                    },
                                  );
                                },
                                icon:
                                    const Icon(Icons.close, color: Colors.red),
                                label: const Text(''),
                              ),
                            ],
                          )
                      ],
                    ),
                    tileColor: backgroundColor,
                  );
                },
              ),
            ),
          ),
          if (order.processingStatus == ProcessingStatus.nonProcessing)
            Container(
              margin: const EdgeInsets.all(16.0),
              child: SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    order.updateProcessingStatus(ProcessingStatus.isProcessing);
                  },
                  child: const Text('Nhận đơn hàng',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                ),
              ),
            ),
          if (order.processingStatus == ProcessingStatus.isProcessing)
            Container(
              margin: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      // Complete the order
                      order.updateProcessingStatus(
                          ProcessingStatus.completedProcessing);
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
                        MaterialPageRoute(builder: (context) => CancelOrder()),
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
