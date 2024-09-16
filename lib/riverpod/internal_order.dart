import 'package:foursquare/services/pb.dart';
import 'package:foursquare/shared/extension.dart';
import 'package:foursquare/shared/models/internal_order.dart';
import 'package:foursquare/shared/models/internal_order_item.dart';
import 'package:foursquare/shared/models/order.dart';
import 'package:foursquare/shared/models/order_item.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'internal_order.g.dart';
part 'internal_order.freezed.dart';

@freezed
class InternalOrderItemInfo with _$InternalOrderItemInfo {
  const factory InternalOrderItemInfo({
    required InternalOrderItemDto internalOrderItem,
    required OrderItemDto rootOrderItem,
  }) = _InternalOrderItemInfo;
}

@freezed
class InternalOrderInfo with _$InternalOrderInfo {
  const factory InternalOrderInfo({
    required InternalOrderDto internalOrder,
    required List<InternalOrderItemInfo> internalOrderItems,
    required OrderDto rootOrder,
  }) = _InternalOrderInfo;
}

@riverpod
Future<InternalOrderInfo> singleInternalOrderInfo(
    SingleInternalOrderInfoRef ref, String internalOrderId) async {
  ref.cacheFor(const Duration(minutes: 5));
  final records = await PBApp.instance.collection('internal_orders').getOne(
        internalOrderId,
        expand:
            'internal_order_items_via_internalOrderId.orderItemId,rootOrderId',
      );
  final order = InternalOrderDto.fromRecord(records);
  final rootOrder = OrderDto.fromRecord(records.expand['rootOrderId']!.first);
  final items = <InternalOrderItemInfo>[];
  for (final record
      in records.expand['internal_order_items_via_internalOrderId']!) {
    final item = InternalOrderItemDto.fromRecord(record);
    final rootItem =
        OrderItemDto.fromRecord(record.expand['orderItemId']!.first);
    items.add(
      InternalOrderItemInfo(
        internalOrderItem: item,
        rootOrderItem: rootItem,
      ),
    );
  }
  return InternalOrderInfo(
    internalOrder: order,
    internalOrderItems: items,
    rootOrder: rootOrder,
  );
}
