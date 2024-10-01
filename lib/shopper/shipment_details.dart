import 'package:flutter/material.dart';
import 'package:foursquare/riverpod/product.dart';
import 'package:foursquare/riverpod/shipment.dart';
import 'package:foursquare/shared/custom_list.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ShipmentDetailsPage extends HookConsumerWidget {
  const ShipmentDetailsPage({
    required this.shipmentId,
    this.shipmentInfo,
    super.key,
  });

  final String shipmentId;
  final ShipmentInfo? shipmentInfo;

  Widget _buildBaseWidget(Widget? child) => Scaffold(
        appBar: AppBar(
          title: const Text('Thông tin lô hàng'),
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: child,
          ),
        ),
      );

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    late final ShipmentInfo shipmentInfo;
    if (this.shipmentInfo != null) {
      shipmentInfo = this.shipmentInfo!;
    } else {
      final shipmentInfoAsync =
          ref.watch(singleShipmentInfoProvider(shipmentId));
      switch (shipmentInfoAsync) {
        case AsyncLoading():
          return _buildBaseWidget(
            const Center(
              child: CircularProgressIndicator(),
            ),
          );
        case AsyncData(value: final value):
          shipmentInfo = value;
        case AsyncError(:final error):
          return _buildBaseWidget(
            Center(
              child: Text('Error: $error'),
            ),
          );
      }
    }

    final productCategoryInfo = ref.watch(batchProductCategoryInfoProvider(
      shipmentInfo.orderInfo.orderItems
          .map((e) => e.productCategoryId)
          .toCustomList(),
    ));
    var productCategoryList = <ProductCategoryInfo>[];
    switch (productCategoryInfo) {
      case AsyncLoading():
        return _buildBaseWidget(
          const Center(child: CircularProgressIndicator()),
        );
      case AsyncData(:final value):
        productCategoryList = value;
      case AsyncError(:final error):
        return _buildBaseWidget(
          Center(child: Text('Error: $error')),
        );
    }
    return Scaffold(
      appBar: AppBar(
        title: const Text('Thông tin lô hàng'),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /* ListTile(
                tileColor: backgroundAndForegroundColor.$1,
                title: Text(
                    'Trạng thái: ${invoiceStatus.vietnameseLocalization}',
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          color: backgroundAndForegroundColor.$2,
                        )),
                subtitle: Text(
                  'Cập nhật lần cuối: ${invoiceInfo.invoice.updated.formatDateTime()}',
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: backgroundAndForegroundColor.$2,
                      ),
                ),
              ), */
              const SizedBox(height: 8),
              /* ListTile(
                tileColor: Colors.grey[200],
                title: Text(
                  'Loại: ${invoiceInfo.invoice.type.vietnameseLocalization}',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                subtitle: Text(
                  'Tạo lúc: ${invoiceInfo.invoice.created.formatDateTime()}',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ), */
              const SizedBox(height: 8),
              /* Text(
                'ID lô hàng: ${shipmentInfo.id}',
                style: Theme.of(context).textTheme.titleMedium,
              ),
              const SizedBox(height: 8),
              Text(
                'ID đơn hàng: ${orderInfo.order.id}',
                style: Theme.of(context).textTheme.titleMedium,
              ),
              const SizedBox(height: 8),
              Text(
                'ID hóa đơn: ${invoiceInfo.invoice.id}',
                style: Theme.of(context).textTheme.titleMedium,
              ), */
              const SizedBox(height: 8),
              const SizedBox(height: 8),
              Text(
                'Các mục:',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              const SizedBox(height: 8),
              /* if (shipmentInfo.shipmentItems != null &&
                  shipmentInfo.shipmentItems!.isNotEmpty)
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: ListView.builder(
                      itemCount: shipmentInfo.shipmentItems!.length,
                      itemBuilder: (context, index) {
                        final item = shipmentInfo.shipmentItems![index];
                        final orderItemIdx = orderInfo.orderItems
                            .indexWhere((e) => e.id == item.orderItemId);

                        return Column(
                          children: [
                            ListTile(
                              leading: Image.network(
                                productCategoryList[orderItemIdx]
                                        .images
                                        .firstOrNull
                                        ?.imageUrl ??
                                    generatePlaceholderImage().toString(),
                                width: 50,
                                height: 50,
                                fit: BoxFit.cover,
                              ),
                              title: Text(productCategoryList[orderItemIdx]
                                      .category
                                      .name ??
                                  ''),
                              subtitle: Text(
                                  'Lượng: ${orderInfo.orderItems[orderItemIdx].orderedQty}, Cuộn: ${item.rollQty}'),
                            ),
                          ],
                        );
                      },
                    ),
                  ),
                ), */
            ],
          ),
        ),
      ),
    );
  }
}
