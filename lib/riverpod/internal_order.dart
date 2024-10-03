import 'package:flutter/foundation.dart';
import 'package:foursquare/services/pb.dart';
import 'package:foursquare/shared/extension.dart';
import 'package:foursquare/shared/models/guest_info.dart';
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
    required UserDto creator,
    GuestInfoDto? guest,
  }) = _InternalOrderInfo;
}

@riverpod
Future<List<InternalOrderInfo>> internalOrderInfoByOrderId(
    InternalOrderInfoByOrderIdRef ref, String orderId) async {
  ref.cacheFor(const Duration(minutes: 5));
  final records =
      await PBApp.instance.collection('internal_orders').getFullList(
            filter: 'rootOrderId = "$orderId"',
            expand:
                'internal_order_items_via_internalOrderId.orderItemId,rootOrderId.guestId,rootOrderId.creatorId',
          );
  return records.map((records) {
    final order = InternalOrderDto.fromRecord(records);
    final rootOrder = OrderDto.fromRecord(records.expand['rootOrderId']!.first);
    final creator = UserDto.fromRecord(
        records.expand['rootOrderId']!.first.expand['creatorId']!.first);
    GuestInfoDto? guest;
    if (records.expand['rootOrderId']!.first.expand['guestId']?.isEmpty ??
        true) {
      guest = null;
    } else {
      guest = GuestInfoDto.fromRecord(
          records.expand['rootOrderId']!.first.expand['guestId']!.first);
    }
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
      creator: creator,
      guest: guest,
    );
  }).toList();
}

@riverpod
Future<InternalOrderInfo> singleInternalOrderInfo(
    SingleInternalOrderInfoRef ref, String internalOrderId) async {
  ref.cacheFor(const Duration(minutes: 5));
  final records = await PBApp.instance.collection('internal_orders').getOne(
        internalOrderId,
        expand:
            'internal_order_items_via_internalOrderId.orderItemId,rootOrderId.guestId,rootOrderId.creatorId',
      );
  final order = InternalOrderDto.fromRecord(records);
  final rootOrder = OrderDto.fromRecord(records.expand['rootOrderId']!.first);
  final creator = UserDto.fromRecord(
      records.expand['rootOrderId']!.first.expand['creatorId']!.first);
  GuestInfoDto? guest;
  if (records.expand['rootOrderId']!.first.expand['guestId']?.isEmpty ?? true) {
    guest = null;
  } else {
    guest = GuestInfoDto.fromRecord(
        records.expand['rootOrderId']!.first.expand['guestId']!.first);
  }
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
    creator: creator,
    guest: guest,
  );
}
