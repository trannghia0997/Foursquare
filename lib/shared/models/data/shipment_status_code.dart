import 'package:flutter/material.dart';

enum ShipmentStatusCodeData {
  pending("000000000000001"),
  processed("000000000000002"),
  shipped("000000000000003"),
  inTransit("000000000000004"),
  outForDelivery("000000000000005"),
  delivered("000000000000006"),
  failedDeliveryAttempt("000000000000007"),
  returned("000000000000008"),
  cancelled("000000000000009"),
  onHold("000000000000010");

  const ShipmentStatusCodeData(this.id);

  final String id;

  static ShipmentStatusCodeData fromId(String id) {
    return ShipmentStatusCodeData.values.firstWhere(
      (element) => element.id == id,
      orElse: () => ShipmentStatusCodeData.pending,
    );
  }
}

extension Localization on ShipmentStatusCodeData {
  String get vietnameseLocalizationString {
    switch (this) {
      case ShipmentStatusCodeData.pending:
        return "Chờ xử lý";
      case ShipmentStatusCodeData.processed:
        return "Đã xử lý";
      case ShipmentStatusCodeData.shipped:
        return "Đã rời kho";
      case ShipmentStatusCodeData.inTransit:
        return "Đang vận chuyển";
      case ShipmentStatusCodeData.outForDelivery:
        return "Đang giao hàng";
      case ShipmentStatusCodeData.delivered:
        return "Đã giao hàng";
      case ShipmentStatusCodeData.failedDeliveryAttempt:
        return "Giao hàng thất bại";
      case ShipmentStatusCodeData.returned:
        return "Đã trả hàng";
      case ShipmentStatusCodeData.cancelled:
        return "Đã hủy";
      case ShipmentStatusCodeData.onHold:
        return "Đang giữ hàng";
    }
  }
}

extension BackgroundAndForegroundColor on ShipmentStatusCodeData {
  (Color, Color) get backgroundAndForegroundColor {
    switch (this) {
      case ShipmentStatusCodeData.pending:
        return (Colors.yellow, Colors.black);
      case ShipmentStatusCodeData.processed:
        return (Colors.blue, Colors.white);
      case ShipmentStatusCodeData.shipped:
        return (Colors.green, Colors.white);
      case ShipmentStatusCodeData.inTransit:
        return (Colors.blue, Colors.white);
      case ShipmentStatusCodeData.outForDelivery:
        return (Colors.blue, Colors.white);
      case ShipmentStatusCodeData.delivered:
        return (Colors.green, Colors.white);
      case ShipmentStatusCodeData.failedDeliveryAttempt:
        return (Colors.red, Colors.white);
      case ShipmentStatusCodeData.returned:
        return (Colors.red, Colors.white);
      case ShipmentStatusCodeData.cancelled:
        return (Colors.red, Colors.white);
      case ShipmentStatusCodeData.onHold:
        return (Colors.orange, Colors.black);
    }
  }
}
