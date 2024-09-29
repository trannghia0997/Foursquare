import 'package:foursquare/services/pb.dart';
import 'package:foursquare/shared/models/address.dart';
import 'package:foursquare/shared/models/guest_info.dart';
import 'package:foursquare/shared/models/order.dart';
import 'package:foursquare/shared/models/order_item.dart';
import 'package:foursquare/shared/models/user.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'order.g.dart';
part 'order.freezed.dart';

@freezed
class OrderInfo with _$OrderInfo {
  const factory OrderInfo({
    required OrderDto order,
    required AddressDto address,
    required UserDto creator,
    GuestInfoDto? guest,
    required List<OrderItemDto> orderItems,
    OrderDto? rootOrder,
  }) = _OrderInfo;
}

extension OrderInfoModelExtension on OrderInfo {
  double get totalAmount =>
      orderItems.fold(0, (prev, e) => prev + e.unitPrice * e.orderedQty);
}

@riverpod
Future<List<OrderDto>> allOrders(AllOrdersRef ref) async {
  final records = await PBApp.instance.collection('orders').getFullList(
        sort: '-created',
      );
  return records.map(OrderDto.fromRecord).toList();
}

@riverpod
Future<List<OrderInfo>> allOrderInfo(AllOrderInfoRef ref) async {
  final records = await PBApp.instance.collection('orders').getFullList(
        sort: '-created',
        expand:
            'order_items_via_orderId,addressId,creatorId,rootOrderId,guestId',
      );
  return records.map((e) {
    final order = OrderDto.fromRecord(e);
    final products = e.expand['order_items_via_orderId']
            ?.map((e) => OrderItemDto.fromRecord(e))
            .toList() ??
        [];
    final address = AddressDto.fromRecord(e.expand['addressId']!.first);
    final creator = UserDto.fromRecord(e.expand['creatorId']!.first);
    final guest = e.expand['guestId']?.isNotEmpty == true
        ? GuestInfoDto.fromRecord(e.expand['guestId']!.first)
        : null;
    final rootOrder = e.expand['rootOrderId']?.isNotEmpty == true
        ? OrderDto.fromRecord(e.expand['rootOrderId']!.first)
        : null;
    return OrderInfo(
      order: order,
      address: address,
      orderItems: products,
      creator: creator,
      guest: guest,
      rootOrder: rootOrder,
    );
  }).toList();
}

@riverpod
Future<OrderInfo> singleOrderInfo(
    SingleOrderInfoRef ref, String orderId) async {
  final orderList = await ref.watch(allOrderInfoProvider.future);
  return orderList.where((e) => e.order.id == orderId).first;
}
