import 'package:flutter/material.dart';

enum OrderStatusCodeData {
  pending("000000000000001"),
  confirmed("000000000000002"),
  processing("000000000000003"),
  waitingForAction("000000000000004"),
  shipped("000000000000005"),
  delivered("000000000000006"),
  cancelled("000000000000007"),
  returned("000000000000008"),
  onHold("000000000000009"),
  failedDeliveryAttempt("000000000000010"),
  refunded("000000000000011"),
  partiallyShipped("000000000000012"),
  partiallyDelivered("000000000000013"),
  awaitingPayment("000000000000014");

  const OrderStatusCodeData(this.id);

  final String id;

  static OrderStatusCodeData fromId(String id) {
    return OrderStatusCodeData.values.firstWhere(
      (element) => element.id == id,
      orElse: () => OrderStatusCodeData.pending,
    );
  }
}

extension Iconify on OrderStatusCodeData {
  (IconData, Color) get iconWithColor {
    switch (this) {
      case OrderStatusCodeData.pending:
        return (Icons.pending, Colors.grey);
      case OrderStatusCodeData.confirmed:
        return (Icons.check, Colors.green);
      case OrderStatusCodeData.processing:
        return (Icons.circle, Colors.blue);
      case OrderStatusCodeData.waitingForAction:
        return (Icons.hourglass_empty, Colors.orange);
      case OrderStatusCodeData.shipped:
        return (Icons.local_shipping, Colors.purple);
      case OrderStatusCodeData.delivered:
        return (Icons.home, Colors.teal);
      case OrderStatusCodeData.cancelled:
        return (Icons.cancel, Colors.red);
      case OrderStatusCodeData.returned:
        return (Icons.undo, Colors.brown);
      case OrderStatusCodeData.onHold:
        return (Icons.pause_circle_filled, Colors.yellow);
      case OrderStatusCodeData.failedDeliveryAttempt:
        return (Icons.error, Colors.redAccent);
      case OrderStatusCodeData.refunded:
        return (Icons.attach_money, Colors.greenAccent);
      case OrderStatusCodeData.partiallyShipped:
        return (Icons.local_shipping, Colors.purpleAccent);
      case OrderStatusCodeData.partiallyDelivered:
        return (Icons.home, Colors.tealAccent);
      case OrderStatusCodeData.awaitingPayment:
        return (Icons.access_time, Colors.blueGrey);
    }
  }
}

extension Localization on OrderStatusCodeData {
  String toVietnameseText() {
    switch (this) {
      case OrderStatusCodeData.pending:
        return 'Chờ xác nhận';
      case OrderStatusCodeData.confirmed:
        return 'Đã xác nhận';
      case OrderStatusCodeData.processing:
        return 'Đang xử lý';
      case OrderStatusCodeData.waitingForAction:
        return 'Chờ xử lý';
      case OrderStatusCodeData.shipped:
        return 'Đã giao hàng';
      case OrderStatusCodeData.delivered:
        return 'Đã nhận hàng';
      case OrderStatusCodeData.cancelled:
        return 'Đã hủy';
      case OrderStatusCodeData.returned:
        return 'Đã trả hàng';
      case OrderStatusCodeData.onHold:
        return 'Đang giữ hàng';
      case OrderStatusCodeData.failedDeliveryAttempt:
        return 'Giao hàng thất bại';
      case OrderStatusCodeData.refunded:
        return 'Đã hoàn tiền';
      case OrderStatusCodeData.partiallyShipped:
        return 'Giao hàng một phần';
      case OrderStatusCodeData.partiallyDelivered:
        return 'Nhận hàng một phần';
      case OrderStatusCodeData.awaitingPayment:
        return 'Chờ thanh toán';
    }
  }
}
