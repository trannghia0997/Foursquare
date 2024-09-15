import 'package:foursquare/services/pb.dart';
import 'package:foursquare/shared/extension.dart';
import 'package:foursquare/shared/models/address.dart';
import 'package:foursquare/shared/models/internal_order.dart';
import 'package:foursquare/shared/models/internal_order_item.dart';
import 'package:foursquare/shared/models/order.dart';
import 'package:foursquare/shared/models/order_item.dart';
import 'package:foursquare/shared/models/user.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'internal_order.g.dart';
part 'internal_order.freezed.dart';

@freezed
class OrderInfoModel with _$OrderInfoModel {
  const factory OrderInfoModel({
    required OrderDto order,
    required AddressDto address,
    required UserDto customer,
    required List<OrderItemDto> items,
    OrderDto? rootOrder,
  }) = _OrderInfoModel;
}

@freezed
class InternalOrderItemInfo with _$InternalOrderItemInfo {
  const factory InternalOrderItemInfo({
    required InternalOrderItemDto item,
    required OrderItemDto rootItem,
  }) = _InternalOrderItemInfo;
}

@freezed
class InternalOrderInfo with _$InternalOrderInfo {
  const factory InternalOrderInfo({
    required InternalOrderDto order,
    required List<InternalOrderItemInfo> items,
    required OrderDto rootOrder,
  }) = _InternalOrderInfo;
}

@riverpod
Future<InternalOrderInfo> internalOrderInfo(
    InternalOrderInfoRef ref, String internalOrderId) async {
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
        item: item,
        rootItem: rootItem,
      ),
    );
  }
  return InternalOrderInfo(
    order: order,
    items: items,
    rootOrder: rootOrder,
  );
}
