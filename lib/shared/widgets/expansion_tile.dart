import 'package:flutter/material.dart';
import 'package:foursquare/riverpod/internal_order.dart';
import 'package:foursquare/riverpod/invoice.dart';
import 'package:foursquare/riverpod/order.dart';
import 'package:foursquare/riverpod/shipment.dart';
import 'package:foursquare/shared/extension.dart';
import 'package:foursquare/shared/models/data/invoice_status_code.dart';
import 'package:foursquare/shared/models/data/order_status_code.dart';
import 'package:foursquare/shared/models/data/shipment_status_code.dart';
import 'package:foursquare/shared/models/enums/invoice_type.dart';
import 'package:foursquare/shared/models/enums/shipment_type.dart';
import 'package:foursquare/shared/screen/internal_order_details.dart';
import 'package:foursquare/shared/screen/invoice_details.dart';
import 'package:foursquare/shared/screen/shipment_details.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ContactExpansionTile extends HookConsumerWidget {
  const ContactExpansionTile({super.key, required this.orderInfo});
  final OrderInfo orderInfo;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ExpansionTile(
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
    );
  }
}

class InvoiceExpansionTile extends HookConsumerWidget {
  const InvoiceExpansionTile({required this.orderInfo, super.key});
  final OrderInfo orderInfo;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final invoiceInfoState = ref.watch(invoiceInfoByOrderIdProvider(
      orderInfo.order.id,
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
      subtitle: Text('Tổng số hóa đơn: ${invoiceInfos.length}'),
      children: invoiceInfos.isEmpty
          ? [
              const Padding(
                padding: EdgeInsets.all(16.0),
                child: Text('Không có hóa đơn nào'),
              ),
            ]
          : invoiceInfos.map((invoiceInfo) {
              final invoiceStatus = InvoiceStatusCodeData.fromId(
                  invoiceInfo.invoice.statusCodeId);
              return ListTile(
                title: Text('Hóa đơn ${invoiceInfo.invoice.id.toUpperCase()}'),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                        'Loại hóa đơn: ${invoiceInfo.invoice.type.vietnameseLocalization}'),
                    Text(
                        'Tổng tiền: ${invoiceInfo.invoice.totalAmount.formattedNumber} ₫'),
                    Text(
                        'Ngày tạo: ${invoiceInfo.invoice.created.formatDateTime()}'),
                  ],
                ),
                trailing: Text(invoiceStatus.vietnameseLocalizationString),
                onTap: () {
                  // Handle invoice tap, e.g., navigate to invoice detail screen
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => InvoiceInfoPage(
                        invoiceId: invoiceInfo.invoice.id,
                        orderInfo: orderInfo,
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
  const ShipmentExpansionTile({required this.orderInfo, super.key});
  final OrderInfo orderInfo;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final shipmentInfoState = ref.watch(
      BriefShipmentInfoByOrderIdProvider(orderInfo.order.id),
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
      subtitle: Text('Tổng số vận đơn: ${shipmentInfos.length}'),
      children: shipmentInfos.isEmpty
          ? [
              const Padding(
                padding: EdgeInsets.all(16.0),
                child: Text('Không có vận đơn nào'),
              ),
            ]
          : shipmentInfos.map((shipmentInfo) {
              final shipmentStatus = ShipmentStatusCodeData.fromId(
                  shipmentInfo.shipment.statusCodeId);
              late final String shipmentDate;
              if (shipmentInfo.shipment.shipmentDate != null &&
                  shipmentInfo.shipment.shipmentDate!.millisecondsSinceEpoch ==
                      0) {
                shipmentDate = 'Chưa xác định';
              } else {
                shipmentDate =
                    shipmentInfo.shipment.shipmentDate?.formatDateTime() ??
                        'Chưa xác định';
              }
              late final String deliveryDate;
              if (shipmentInfo.shipment.deliveryDate != null &&
                  shipmentInfo.shipment.deliveryDate!.millisecondsSinceEpoch ==
                      0) {
                deliveryDate = 'Chưa xác định';
              } else {
                deliveryDate =
                    shipmentInfo.shipment.deliveryDate?.formatDateTime() ??
                        'Chưa xác định';
              }
              return ListTile(
                title:
                    Text('Vận đơn ${shipmentInfo.shipment.id.toUpperCase()}'),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                        'Loại vận đơn: ${shipmentInfo.shipment.type.vietnameseLocalizationString}'),
                    Text(
                        'Ngày tạo: ${shipmentInfo.shipment.created.formatDateTime()}'),
                    Text('Ngày xuất kho: $shipmentDate'),
                    Text(
                      'Ngày giao hàng dự kiến: $deliveryDate',
                    ),
                  ],
                ),
                trailing: Text(shipmentStatus.vietnameseLocalizationString),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ShipmentDetailsPage(
                        shipmentId: shipmentInfo.shipment.id,
                      ),
                    ),
                  );
                },
              );
            }).toList(),
    );
  }
}

class InternalOrderExpansionTile extends HookConsumerWidget {
  const InternalOrderExpansionTile({required this.orderInfo, super.key});
  final OrderInfo orderInfo;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final internalOrderInfoState = ref.watch(
      internalOrderInfoByOrderIdProvider(orderInfo.order.id),
    );
    final internalOrderInfos = internalOrderInfoState.maybeWhen(
      data: (internalOrderInfo) => internalOrderInfo,
      orElse: () => <InternalOrderInfo>[],
    );
    return ExpansionTile(
      title: const Row(
        children: [
          Icon(Icons.local_shipping),
          SizedBox(width: 8),
          Text("Đơn hàng nội bộ"),
        ],
      ),
      subtitle: Text('Tổng số đơn hàng nội bộ: ${internalOrderInfos.length}'),
      children: internalOrderInfos.isEmpty
          ? [
              const Padding(
                padding: EdgeInsets.all(16.0),
                child: Text('Không có đơn hàng nội bộ nào'),
              ),
            ]
          : internalOrderInfos.map((internalOrderInfo) {
              final internalOrderStatus = OrderStatusCodeData.fromId(
                  internalOrderInfo.internalOrder.statusCodeId);
              return ListTile(
                title: Text(
                    'Đơn hàng nội bộ ${internalOrderInfo.internalOrder.id.toUpperCase()}'),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                        'Ngày tạo: ${internalOrderInfo.internalOrder.created.formatDateTime()}'),
                  ],
                ),
                trailing: Text(
                  internalOrderStatus.vietnameseLocalizationString,
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => InternalOrderDetailsPage(
                        internalOrderId: internalOrderInfo.internalOrder.id,
                      ),
                    ),
                  );
                },
              );
            }).toList(),
    );
  }
}
