import 'package:foursquare/services/pb.dart';
import 'package:foursquare/shared/models/address.dart';
import 'package:foursquare/shared/models/order.dart';
import 'package:foursquare/shared/models/order_item.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'order.g.dart';
part 'order.freezed.dart';

@freezed
class OrderWithItems with _$OrderWithItems {
  const factory OrderWithItems({
    required OrderDto order,
    required AddressDto address,
    required List<OrderItemDto> items,
  }) = _OrderWithItems;
}

@riverpod
Future<List<OrderDto>> order(OrderRef ref) async {
  final records = await PBApp.instance.collection('orders').getFullList(
        sort: '-created',
      );
  return records.map(OrderDto.fromRecord).toList();
}

@riverpod
Future<List<OrderWithItems>> orderWithItems(OrderWithItemsRef ref) async {
  final records = await PBApp.instance.collection('orders').getFullList(
        sort: '-created',
        expand: 'order_items_via_orderId,addressId',
      );
  return records.map((e) {
    final order = OrderDto.fromRecord(e);
    final products = e.expand['order_items_via_orderId']
            ?.map((e) => OrderItemDto.fromRecord(e))
            .toList() ??
        [];
    final address = AddressDto.fromRecord(e.expand['addressId']!.first);
    return OrderWithItems(
      order: order,
      address: address,
      items: products,
    );
  }).toList();
}
