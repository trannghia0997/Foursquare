import 'package:foursquare/riverpod/order.dart';
import 'package:foursquare/services/pb.dart';
import 'package:foursquare/shared/extension.dart';
import 'package:foursquare/shared/models/invoice.dart';
import 'package:foursquare/shared/models/order_item.dart';
import 'package:foursquare/shared/models/shipment.dart';
import 'package:foursquare/shared/models/shipment_item.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'shipment.g.dart';
part 'shipment.freezed.dart';

@freezed
class ShipmentInfo with _$ShipmentInfo {
  const factory ShipmentInfo({
    required ShipmentDto shipment,
    required OrderInfo orderInfo,
    required InvoiceDto invoice,
    required List<(ShipmentItemDto, OrderItemDto)> items,
  }) = _ShipmentInfo;
}

@riverpod
Future<ShipmentInfo> singleShipmentInfo(
    SingleShipmentInfoRef ref, String shipmentId) async {
  ref.cacheFor(const Duration(minutes: 5));
  final record = await PBApp.instance.collection('shipments').getOne(
        shipmentId,
        expand: 'invoiceId,shipment_items_via_shipmentId.orderItemId',
      );
  final shipment = ShipmentDto.fromRecord(record);
  final invoice = InvoiceDto.fromRecord(record.expand['invoiceId']!.first);
  final shipmentItems =
      record.expand['shipment_items_via_shipmentId']?.map((e) {
            final shipmentItem = ShipmentItemDto.fromRecord(e);
            final orderItem =
                OrderItemDto.fromRecord(e.expand['orderItemId']!.first);
            return (shipmentItem, orderItem);
          }).toList() ??
          [];
  final orderInfo =
      await ref.watch(singleOrderInfoProvider(shipment.orderId).future);
  return ShipmentInfo(
    shipment: shipment,
    invoice: invoice,
    items: shipmentItems,
    orderInfo: orderInfo,
  );
}
