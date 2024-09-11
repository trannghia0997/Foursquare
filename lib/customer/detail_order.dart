import 'package:foursquare/riverpod/order.dart';
import 'package:foursquare/riverpod/product.dart';
import 'package:foursquare/shared/models/address.dart';
import 'package:foursquare/shared/models/data/order_status_code.dart';
import 'package:foursquare/shared/numeric.dart';
import 'package:foursquare/shared/product_image.dart';
import 'package:flutter/material.dart';
import 'package:foursquare/shared/screen/cancel_order.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class DetailOrderScreen extends HookConsumerWidget {
  const DetailOrderScreen({required this.orderWithItems, super.key});
  final OrderWithItems orderWithItems;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final productCategoryInfo = ref.watch(productCategoryInfoProvider(
        orderWithItems.items.map((e) => e.productCategoryId).toList()));
    var productCategoryList = <ProductCategoryInfoModel>[];
    switch (productCategoryInfo) {
      case AsyncLoading():
        return const Center(child: CircularProgressIndicator());
      case AsyncData(value: []):
        return const Center(child: Text('Không có sản phẩm nào'));
      case AsyncData(:final value):
        productCategoryList = value;
      case AsyncError(:final error):
        return Center(child: Text('Error: $error'));
    }
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
              "ID: ${orderWithItems.order.id}",
              style: Theme.of(context)
                  .textTheme
                  .titleMedium
                  ?.copyWith(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Text(
              "Địa chỉ giao hàng: ${orderWithItems.address.fullAddress}",
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            if (orderWithItems.order.note != null &&
                orderWithItems.order.note!.isNotEmpty)
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Text(
                  "Lưu ý của khách hàng: ${orderWithItems.order.note}",
                  style: Theme.of(context)
                      .textTheme
                      .bodyLarge
                      ?.copyWith(color: Colors.grey[700]),
                ),
              ),
            if (orderWithItems.order.statusCodeId ==
                OrderStatusCodeData.cancelled.id)
              Text(
                "Lý do hủy đơn: ${orderWithItems.order.otherInfo}",
                style: const TextStyle(
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold,
                    color: Colors.red),
              ),
            const SizedBox(height: 16),
            Expanded(
              child: ListView.builder(
                itemCount: orderWithItems.items.length,
                itemBuilder: (context, index) {
                  var product = productCategoryList[index].product;
                  var productImage = productCategoryList[index].images.first;
                  var colour = productCategoryList[index].colour;

                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 125,
                          child: ProductImage(
                            imageUrl: Uri.parse(productImage.imageUrl),
                          ),
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
                                "Số lượng: ${orderWithItems.items[index].orderedQty}m",
                                style: Theme.of(context).textTheme.bodyLarge,
                              ),
                              Row(
                                children: [
                                  Text(
                                    'Màu sắc: ${colour.name} ',
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
                                    color: Color(
                                      int.parse(
                                        'FF${colour.hexCode.replaceFirst('#', '')}',
                                        radix: 16,
                                      ),
                                    ),
                                  )
                                ],
                              ),
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
                                      '${formatNumber(product.expectedPrice! * orderWithItems.items[index].orderedQty)} VNĐ',
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
            if (orderWithItems.order.statusCodeId ==
                OrderStatusCodeData.pending.id)
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              CancelOrderScreen(order: orderWithItems),
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
