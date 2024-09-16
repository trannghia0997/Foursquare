import 'package:foursquare/riverpod/product.dart';
import 'package:foursquare/riverpod/shipment.dart';
import 'package:foursquare/services/pb.dart';
import 'package:foursquare/shared/models/address.dart';
import 'package:foursquare/shared/models/data/shipment_status_code.dart';
import 'package:foursquare/shared/models/enums/payment_method.dart';
import 'package:foursquare/shared/models/shipment.dart';
import 'package:foursquare/shared/product_image.dart';
import 'package:flutter/material.dart';
import 'package:foursquare/shipper/shipment_cancellation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class DetailTaskScreen extends HookConsumerWidget {
  const DetailTaskScreen({required this.shipment, super.key});
  final ShipmentDto shipment;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final shipmentInfoAsyncValue =
        ref.watch(singleShipmentInfoProvider(shipment.id));
    ShipmentInfo? shipmentInfo;
    switch (shipmentInfoAsyncValue) {
      case AsyncData(:final value):
        shipmentInfo = value;
        break;
      case const AsyncLoading():
        return const Center(child: CircularProgressIndicator());
      case AsyncError(:final error):
        return Center(child: Text('Error: $error'));
    }
    final productCategoryInfoAsyncValue = ref.watch(
        batchProductCategoryInfoProvider(shipmentInfo!.orderInfo.orderItems
            .map((e) => e.productCategoryId)));
    List<ProductCategoryInfo> productCategoryInfo = [];
    switch (productCategoryInfoAsyncValue) {
      case AsyncData(:final value):
        productCategoryInfo = value;
        break;
      case const AsyncLoading():
        return const Center(child: CircularProgressIndicator());
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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "ID: ${shipment.id}",
                      style: Theme.of(context)
                          .textTheme
                          .titleMedium!
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      "Tên khách hàng: ${shipmentInfo.orderInfo.customer.name}",
                      style: const TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      "Số điện thoại: ${shipmentInfo.orderInfo.customer.phone ?? "N/A"}",
                      style: const TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      "Địa chỉ giao hàng: ${shipmentInfo.orderInfo.address.fullAddress}",
                      style: const TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    if (shipment.note != null)
                      Text(
                        "Lưu ý của khách: ${shipment.note}",
                        style: const TextStyle(fontStyle: FontStyle.italic),
                      ),
                    if (shipment.statusCodeId ==
                        ShipmentStatusCodeData.cancelled.id)
                      Text(
                        "Lý do hủy đơn: ${shipment.note}",
                        style: const TextStyle(fontStyle: FontStyle.italic),
                      ),
                    if (shipment.shipmentDate != null)
                      Text(
                        "Ngày hàng rời kho: ${shipment.shipmentDate}",
                        style: const TextStyle(fontStyle: FontStyle.italic),
                      ),
                    if (shipment.deliveryDate != null)
                      Text(
                        "Ngày dự kiến giao hàng: ${shipment.deliveryDate}",
                        style: const TextStyle(fontStyle: FontStyle.italic),
                      ),
                    Text(
                      "Tổng tiền: ${shipmentInfo.invoice.totalAmount}",
                      style: const TextStyle(fontStyle: FontStyle.italic),
                    ),
                    Text(
                      "Phương thức thanh toán: ${switch (shipmentInfo.invoice.paymentMethod) {
                        PaymentMethod.cash => "Tiền mặt",
                        PaymentMethod.eft => "Chuyển khoản",
                        PaymentMethod.giftCard => "Thẻ quà tặng",
                        PaymentMethod.creditCard => "Thẻ tín dụng",
                        PaymentMethod.debitCard => "Thẻ ghi nợ",
                        PaymentMethod.prepaidCard => "Thẻ trả trước",
                        PaymentMethod.check => "Séc",
                        PaymentMethod.other => "Khác",
                      }}",
                    ),
                  ],
                ),
              ),
              // TODO: Add more info about the shipment / order here
            ],
          ),
          Expanded(
            child: SizedBox(
              child: ListView.builder(
                itemCount: shipmentInfo.items.length,
                itemBuilder: (context, index) {
                  var product = productCategoryInfo.firstWhere((element) =>
                      element.category.id ==
                      shipmentInfo!.items[index].$2.productCategoryId);

                  return ListTile(
                    title: Row(
                      children: [
                        SizedBox(
                          width: 125,
                          child: ProductImage(
                            imageUrl: Uri.parse(product.images.first.imageUrl),
                          ),
                        ),
                        const SizedBox(
                          width: 16,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Tên sản phẩm: ${product.product.name}",
                                style: Theme.of(context).textTheme.titleMedium,
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              Text(
                                "Số lượng: ${shipmentInfo!.items[index].$1.qty}m",
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              Text(
                                "Số cuộn: ${shipmentInfo.items[index].$1.rollQty}",
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
          // Delivering an order
          if (shipment.statusCodeId == ShipmentStatusCodeData.shipped.id)
            Container(
              margin: const EdgeInsets.all(16.0),
              child: SizedBox(
                width: double.infinity,
                child: FilledButton(
                  onPressed: () {
                    // Handle delivering the order here
                    Navigator.of(context).pop();
                  },
                  child: const Text('Nhận đơn hàng',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                ),
              ),
            ),
          // Completed delivering
          if (shipment.statusCodeId == ShipmentStatusCodeData.shipped.id)
            Container(
              margin: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  FilledButton(
                    style: const ButtonStyle(
                      backgroundColor:
                          WidgetStatePropertyAll<Color>(Colors.red),
                    ),
                    onPressed: () {
                      // Handle canceling the order here
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ShipmentCancellationScreen(
                            shipment: shipment,
                          ),
                        ),
                      );
                    },
                    child: const Text(
                      'Hủy đơn hàng',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  FilledButton(
                    style: const ButtonStyle(
                      backgroundColor:
                          WidgetStatePropertyAll<Color>(Colors.green),
                    ),
                    onPressed: () async {
                      // Complete the order
                      final shipmentEdit = ShipmentEditDto.fromJson(
                        shipment.toJson(),
                      )..statusCodeId = ShipmentStatusCodeData.delivered.id;
                      await PBApp.instance
                          .collection('shipments')
                          .update(shipment.id, body: shipmentEdit.toJson());
                      if (!context.mounted) return;
                      Navigator.of(context).pop();
                    },
                    child: const Text(
                      'Hoàn thành đơn hàng',
                      style: TextStyle(
                        color: Colors.white,
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

// Tập trung -> nhân viên kho và quản lý
