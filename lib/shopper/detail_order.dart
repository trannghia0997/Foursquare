import 'package:foursquare/riverpod/invoice.dart';
import 'package:foursquare/riverpod/shipment.dart';
import 'package:foursquare/shared/extension.dart';
import 'package:foursquare/shared/models/data/invoice_status_code.dart';
import 'package:foursquare/shared/models/data/shipment_status_code.dart';
import 'package:foursquare/shared/models/enums/invoice_type.dart';
import 'package:foursquare/shared/numeric.dart';
import 'package:foursquare/shopper/invoice_details.dart';
import 'package:foursquare/shopper/order_history.dart';
import 'package:foursquare/riverpod/order.dart';
import 'package:foursquare/riverpod/product.dart';
import 'package:foursquare/shared/custom_list.dart';
import 'package:foursquare/shared/models/address.dart';
import 'package:foursquare/shared/models/data/order_status_code.dart';
import 'package:foursquare/shared/models/order_item.dart';
import 'package:flutter/material.dart';
import 'package:foursquare/shared/screen/cancel_order.dart';
import 'package:foursquare/shared/widgets/order_item_tile.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ShopperDetailOrderScreen extends HookConsumerWidget {
  const ShopperDetailOrderScreen({required this.orderInfo, super.key});
  final OrderInfo orderInfo;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
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
    final orderEditDtoList = orderInfo.orderItems.map((e) {
      return OrderItemEditDto.fromJson(
        e.toJson(),
      );
    }).toList();
    final statusText = OrderStatusCodeData.values
        .firstWhere(
            (element) => element.id == orderInfo.order.statusCodeId)
        .toVietnameseText();
    final statusBackgroundAndForegroundColor = OrderStatusCodeData.values
        .firstWhere(
            (element) => element.id == orderInfo.order.statusCodeId)
        .backgroundAndForegroundColor;
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: // User cancel order if order status is pending
          (orderInfo.order.statusCodeId == OrderStatusCodeData.pending.id)
              ? SizedBox(
                  width: MediaQuery.of(context).size.width * 0.9,
                  child: FloatingActionButton.extended(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CancelOrderScreen(
                            order: orderInfo.order,
                          ),
                        ),
                      );
                    },
                    label: const Text(
                      'Hủy đơn hàng',
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    icon: const Icon(Icons.cancel, color: Colors.white),
                    backgroundColor: Colors.red,
                  ),
                )
              : null,
      appBar: AppBar(
        actions: [
          IconButton(
            icon: const Icon(Icons.history),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => OrderHistoryScreen(
                    order: orderInfo.order,
                  ),
                ),
              );
            },
          ),
        ],
        title: const Row(
          children: [
            Text(
              'Thông tin đơn hàng',
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
            left: 16.0,
            right: 16.0,
            top: 16.0,
            bottom: 80.0,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListTile(
                tileColor: statusBackgroundAndForegroundColor.$1,
                title: Text(
                  'Trạng thái: $statusText',
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        color: statusBackgroundAndForegroundColor.$2,
                      ),
                ),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Cập nhật lần cuối: ${orderInfo.order.updated.formatDateTime()}",
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                            color: statusBackgroundAndForegroundColor.$2,
                          ),
                    ),
                    if (orderInfo.order.statusCodeId ==
                        OrderStatusCodeData.cancelled.id)
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Text(
                          "Lý do hủy: ${orderInfo.order.otherInfo ?? 'Không có'}",
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium
                              ?.copyWith(
                                color: statusBackgroundAndForegroundColor.$2,
                              ),
                        ),
                      ),
                  ],
                ),
              ),
              const SizedBox(height: 8),
              // General Information
              Text(
                "ID: ${orderInfo.order.id.toUpperCase()}",
                style: Theme.of(context)
                    .textTheme
                    .titleMedium
                    ?.copyWith(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              Text(
                "Địa chỉ giao hàng: ${orderInfo.address.fullAddress}",
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              const SizedBox(height: 8),
              Text(
                "Ngày tạo: ${orderInfo.order.created.formatDateTime()}",
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              const SizedBox(height: 8),
              Text(
                "Lưu ý của khách hàng:",
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                      color: Colors.grey[700],
                      fontWeight: FontWeight.bold,
                    ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 4.0),
                child: Text(
                  orderInfo.order.note?.isNotEmpty == true
                      ? orderInfo.order.note!
                      : 'Không có',
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        color: Colors.grey[700],
                      ),
                ),
              ),
              const SizedBox(height: 16),

              // Contact Information
              ExpansionTile(
                title: Row(
                  children: [
                    const Icon(Icons.contact_phone),
                    const SizedBox(width: 8),
                    Text(
                      "Thông tin liên hệ",
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                  ],
                ),
                children: [
                  Row(
                    children: [
                      const SizedBox(width: 32),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(height: 8),
                            Text(
                              "Tên: ${orderInfo.guest?.name ?? orderInfo.creator.name}",
                              style: Theme.of(context).textTheme.bodyLarge,
                            ),
                            const SizedBox(height: 8),
                            Text(
                              "Số điện thoại: ${orderInfo.guest?.phone ?? orderInfo.creator.phone}",
                              style: Theme.of(context).textTheme.bodyLarge,
                            ),
                            if (orderInfo.guest?.email != null ||
                                orderInfo.creator.email != null)
                              Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Text(
                                  "Email: ${orderInfo.guest?.email ?? orderInfo.creator.email}",
                                  style: Theme.of(context).textTheme.bodyLarge,
                                ),
                              ),
                            const SizedBox(height: 16),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),

              // Order Items
              ExpansionTile(
                title: const Row(
                  children: [
                    Icon(Icons.list),
                    SizedBox(width: 8),
                    Text("Chi tiết đơn hàng"),
                  ],
                ),
                children: [
                  ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: orderInfo.orderItems.length,
                    itemBuilder: (context, index) {
                      return OrderItemTile(
                        isPriceVisible: false,
                        productCategoryInfo: productCategoryList[index],
                        orderItemEdit: orderEditDtoList[index],
                      );
                    },
                  ),
                ],
              ),
              InvoiceExpansionTile(orderWithItems: orderInfo),
              ShipmentExpansionTile(orderWithItems: orderInfo),
            ],
          ),
        ),
      ),
    );
  }
}

class InvoiceExpansionTile extends HookConsumerWidget {
  const InvoiceExpansionTile({required this.orderWithItems, super.key});
  final OrderInfo orderWithItems;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final invoiceInfoState = ref.watch(invoiceInfoByOrderIdProvider(
      orderWithItems.order.id,
    ));
    final invoiceInfos = invoiceInfoState.maybeWhen(
      data: (invoiceInfo) => invoiceInfo,
      orElse: () => <InvoiceInfo>[],
    );
    return ExpansionTile(
      title: const Row(
        children: [
          Icon(Icons.receipt),
          SizedBox(width: 8),
          Text("Hóa đơn"),
        ],
      ),
      children: invoiceInfos.isEmpty
          ? [
              const Padding(
                padding: EdgeInsets.all(16.0),
                child: Text('Không có hóa đơn nào'),
              ),
            ]
          : invoiceInfos.map((invoiceInfo) {
              final invoiceStatus = InvoiceStatusCodeData.values.firstWhere(
                  (element) => element.id == invoiceInfo.invoice.statusCodeId);
              return ListTile(
                title: Text('Hóa đơn #${invoiceInfo.invoice.id}'),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                        'Loại hóa đơn: ${invoiceInfo.invoice.type.vietnameseLocalization}'),
                    Text(
                        'Tổng tiền: ${formatNumber(invoiceInfo.invoice.totalAmount.toInt())} ₫'),
                    Text(
                        'Ngày tạo: ${invoiceInfo.invoice.created.formatDateTime()}'),
                  ],
                ),
                trailing: Text(invoiceStatus.vietnameseLocalization),
                onTap: () {
                  // Handle invoice tap, e.g., navigate to invoice detail screen
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => InvoiceInfoPage(
                        invoiceId: invoiceInfo.invoice.id,
                        orderInfo: orderWithItems,
                        invoiceInfo: invoiceInfo,
                      ),
                    ),
                  );
                },
              );
            }).toList(),
    );
  }
}

class ShipmentExpansionTile extends HookConsumerWidget {
  const ShipmentExpansionTile({required this.orderWithItems, super.key});
  final OrderInfo orderWithItems;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final shipmentInfoState = ref.watch(
      BriefShipmentInfoByOrderIdProvider(orderWithItems.order.id),
    );
    final shipmentInfos = shipmentInfoState.maybeWhen(
      data: (shipmentInfo) => shipmentInfo,
      orElse: () => <BriefShipmentInfo>[],
    );
    return ExpansionTile(
      title: const Row(
        children: [
          Icon(Icons.local_shipping),
          SizedBox(width: 8),
          Text("Vận đơn"),
        ],
      ),
      children: shipmentInfos.isEmpty
          ? [
              const Padding(
                padding: EdgeInsets.all(16.0),
                child: Text('Không có hóa đơn nào'),
              ),
            ]
          : shipmentInfos.map((shipmentInfo) {
              final shipmentStatus = ShipmentStatusCodeData.values.firstWhere(
                  (element) =>
                      element.id == shipmentInfo.shipment.statusCodeId);
              return ListTile(
                title: Text('Hóa đơn #${shipmentInfo.invoice.id}'),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Loại hóa đơn: ${shipmentInfo.shipment.type}'),
                    Text(
                        'Tổng tiền: ${formatNumber(shipmentInfo.invoice.totalAmount.toInt())} ₫'),
                    Text(
                        'Ngày tạo: ${shipmentInfo.shipment.created.formatDateTime()}'),
                  ],
                ),
                trailing: Text(shipmentStatus.name),
                onTap: () {
                  // Handle invoice tap, e.g., navigate to invoice detail screen
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(
                  //     builder: (context) => InvoiceInfoPage(
                  //       invoiceId: shipmentInfo.invoice.id,
                  //       orderInfo: orderWithItems,
                  //       invoiceInfo: shipmentInfo,
                  //     ),
                  //   ),
                  // );
                },
              );
            }).toList(),
    );
  }
}
