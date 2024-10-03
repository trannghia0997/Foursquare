import 'package:json_annotation/json_annotation.dart';

enum ShipmentType {
  @JsonValue('outbound')
  outbound,
  @JsonValue('inbound')
  inbound,
  @JsonValue('transfer')
  transfer,
  @JsonValue('return')
  return_,
  @JsonValue('exchange')
  exchange,
  @JsonValue('other')
  other,
}

extension LocalizedShipmentType on ShipmentType {
  String get vietnameseLocalizationString {
    switch (this) {
      case ShipmentType.outbound:
        return 'Xuất hàng';
      case ShipmentType.inbound:
        return 'Nhập hàng';
      case ShipmentType.transfer:
        return 'Chuyển kho';
      case ShipmentType.return_:
        return 'Trả hàng';
      case ShipmentType.exchange:
        return 'Đổi hàng';
      case ShipmentType.other:
        return 'Khác';
    }
  }
}
