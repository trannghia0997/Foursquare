import 'package:flutter/material.dart';
import 'package:foursquare/riverpod/invoice.dart';
import 'package:foursquare/riverpod/order.dart';
import 'package:foursquare/riverpod/product.dart';
import 'package:foursquare/shared/custom_list.dart';
import 'package:foursquare/shared/extension.dart';
import 'package:foursquare/shared/image.dart';
import 'package:foursquare/shared/models/data/invoice_status_code.dart';
import 'package:foursquare/shared/models/enums/invoice_type.dart';
import 'package:foursquare/shared/models/enums/payment_method.dart';
import 'package:foursquare/shared/numeric.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class InvoiceInfoPage extends HookConsumerWidget {
  const InvoiceInfoPage({
    required this.invoiceId,
    this.orderInfo,
    this.invoiceInfo,
    super.key,
  });

  final String invoiceId;
  final OrderInfo? orderInfo;
  final InvoiceInfo? invoiceInfo;

  Widget _buildBaseWidget(Widget? child) => Scaffold(
        appBar: AppBar(
          title: const Text('Thông tin hóa đơn'),
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
    late final InvoiceInfo invoiceInfo;
    if (this.invoiceInfo != null) {
      invoiceInfo = this.invoiceInfo!;
    } else {
      final invoiceInfoAsync = ref.watch(singleInvoiceInfoProvider(invoiceId));
      switch (invoiceInfoAsync) {
        case AsyncLoading():
          return _buildBaseWidget(
            const Center(
              child: CircularProgressIndicator(),
            ),
          );
        case AsyncData(value: final value):
          invoiceInfo = value;
        case AsyncError(:final error):
          return _buildBaseWidget(
            Center(
              child: Text('Error: $error'),
            ),
          );
      }
    }
    late final OrderInfo orderInfo;
    if (this.orderInfo != null) {
      orderInfo = this.orderInfo!;
    } else {
      final orderInfoAsync =
          ref.watch(singleOrderInfoProvider(invoiceInfo.invoice.orderId));
      switch (orderInfoAsync) {
        case AsyncLoading():
          return _buildBaseWidget(
            const Center(
              child: CircularProgressIndicator(),
            ),
          );
        case AsyncData(value: final value):
          orderInfo = value;
        case AsyncError(:final error):
          return _buildBaseWidget(
            Center(
              child: Text('Error: $error'),
            ),
          );
      }
    }
    final productCategoryInfo = ref.watch(batchProductCategoryInfoProvider(
      orderInfo.orderItems.map((e) => e.productCategoryId).toCustomList(),
    ));
    var productCategoryList = <ProductCategoryInfo>[];
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
    final invoiceStatus =
        InvoiceStatusCodeData.fromId(invoiceInfo.invoice.statusCodeId);
    final backgroundAndForegroundColor =
        invoiceStatus.backgroundAndForegroundColor;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Thông tin hóa đơn'),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListTile(
                tileColor: backgroundAndForegroundColor.$1,
                title: Text(
                    'Trạng thái: ${invoiceStatus.vietnameseLocalizationString}',
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          color: backgroundAndForegroundColor.$2,
                        )),
                subtitle: Text(
                  'Cập nhật lần cuối: ${invoiceInfo.invoice.updated.formattedDateTime}',
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: backgroundAndForegroundColor.$2,
                      ),
                ),
              ),
              const SizedBox(height: 8),
              ListTile(
                tileColor: Colors.grey[200],
                title: Text(
                  'Loại: ${invoiceInfo.invoice.type.vietnameseLocalization}',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                subtitle: Text(
                  'Tạo lúc: ${invoiceInfo.invoice.created.formattedDateTime}',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                'ID hóa đơn: ${invoiceInfo.invoice.id.toUpperCase()}',
                style: Theme.of(context).textTheme.titleMedium,
              ),
              const SizedBox(height: 8),
              Text(
                'ID đơn hàng: ${orderInfo.order.id.toUpperCase()}',
                style: Theme.of(context).textTheme.titleMedium,
              ),
              const SizedBox(height: 8),
              Text(
                'Phương thức thanh toán dự kiến: ${invoiceInfo.invoice.paymentMethod.vietnameseLocalization}',
                style: Theme.of(context).textTheme.titleMedium,
              ),
              const SizedBox(height: 8),
              const SizedBox(height: 8),
              Text(
                'Các mục:',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              const SizedBox(height: 8),
              ListTile(
                tileColor: Colors.grey[200],
                title: Text(
                  'Tổng tiền: ${formatNumber(invoiceInfo.invoice.totalAmount.toInt())} ₫',
                  textAlign: TextAlign.right,
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        fontWeight: FontWeight.bold,
                        color: Colors.red,
                      ),
                ),
              ),
              if (invoiceInfo.invoiceLineItems != null &&
                  invoiceInfo.invoiceLineItems!.isNotEmpty)
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: ListView.builder(
                      itemCount: invoiceInfo.invoiceLineItems!.length,
                      itemBuilder: (context, index) {
                        final item = invoiceInfo.invoiceLineItems![index];
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
                                  'Mã chủng loại: ${productCategoryList[orderItemIdx].category.id.toUpperCase()}'),
                            ),
                            ListTile(
                              subtitle: Text(
                                'Đơn giá: ${formatNumber(item.unitPrice.toInt())} ₫',
                                textAlign: TextAlign.right,
                              ),
                              title: Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(
                                      'Lượng: ${orderInfo.orderItems[orderItemIdx].orderedQty}'),
                                  Text(
                                    'Thành tiền: ${formatNumber((item.unitPrice * orderInfo.orderItems[orderItemIdx].orderedQty).toInt())} ₫',
                                  ),
                                ],
                              ),
                            ),
                          ],
                        );
                      },
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
