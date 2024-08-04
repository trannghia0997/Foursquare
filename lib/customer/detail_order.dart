import 'package:foursquare/services/order/models/order.dart';
import 'package:foursquare/shared/numeric.dart';
import 'package:foursquare/shared/product_image.dart';
import 'package:flutter/material.dart';
import 'package:foursquare/shared/screen/cancel_order.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class DetailOrderScreen extends HookConsumerWidget {
  const DetailOrderScreen({required this.order, super.key});
  final Order order;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
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
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "ID: ${order.id}",
              style: Theme.of(context)
                  .textTheme
                  .titleMedium
                  ?.copyWith(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Text(
              "Tên khách hàng: ${order.creatorId}",
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            const SizedBox(height: 8),
            Text(
              "Địa chỉ giao hàng: ${order.addressId}",
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            if (order.note != null && order.note!.isNotEmpty)
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Text(
                  "Lưu ý của khách hàng: ${order.note}",
                  style: Theme.of(context)
                      .textTheme
                      .bodyLarge
                      ?.copyWith(color: Colors.grey[700]),
                ),
              ),
            if (order.orderStatus == OrderStatus.cancelled)
              Text(
                "Lý do hủy đơn: ${order.otherInfo}",
                style: const TextStyle(
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold,
                    color: Colors.red),
              ),
            const SizedBox(height: 16),
            Expanded(
              child: ListView.builder(
                itemCount: order.listOrderProduct.length,
                itemBuilder: (context, index) {
                  var product = order.listOrderProduct[index].product;
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: Row(
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
                                product.name,
                                style: Theme.of(context)
                                    .textTheme
                                    .titleMedium
                                    ?.copyWith(fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(height: 6),
                              Text(
                                "Số lượng: ${order.listOrderProduct[index].orderedQuantity}m",
                                style: Theme.of(context).textTheme.bodyLarge,
                              ),
                              Row(children: [
                                Text(
                                  'Màu sắc: ${order.listOrderProduct[index].colourChoosed.name} ',
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleMedium
                                      ?.copyWith(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .secondary,
                                      ),
                                ),
                                Container(
                                  width: 15,
                                  height: 15,
                                  color: Color(int.parse(
                                      'FF${order.listOrderProduct[index].colourChoosed.hex.replaceFirst('#', '')}',
                                      radix: 16)),
                                )
                              ]),
                              Align(
                                alignment: Alignment.centerRight,
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text('Thanh tiền',
                                        style: Theme.of(context)
                                            .textTheme
                                            .titleMedium!
                                            .copyWith(
                                              fontWeight: FontWeight.bold,
                                            )),
                                    Text(
                                      '${formatNumber(order.listOrderProduct[index].product.price * order.listOrderProduct[index].orderedQuantity)} VNĐ',
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleMedium!
                                          .copyWith(
                                            color: Theme.of(context)
                                                .colorScheme
                                                .primary,
                                            fontWeight: FontWeight.bold,
                                          ),
                                    ),
                                  ],
                                ),
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

            // User cancel order if order status is pending
            if (order.orderStatus == OrderStatus.pending)
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CancelOrderScreen(order: order),
                        ),
                      );
                    },
                    child: const Text(
                      'Hủy đơn hàng',
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.red,
                      ),
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
