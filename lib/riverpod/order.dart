import 'package:foursquare/services/pb.dart';
import 'package:foursquare/shared/models/address.dart';
import 'package:foursquare/shared/models/order.dart';
import 'package:foursquare/shared/models/order_item.dart';
import 'package:foursquare/shared/models/user.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'order.g.dart';
part 'order.freezed.dart';

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

extension OrderInfoModelExtension on OrderInfoModel {
  double get totalAmount =>
      items.fold(0, (prev, e) => prev + e.unitPrice * e.orderedQty);
}

@riverpod
Future<List<OrderDto>> order(OrderRef ref) async {
  final records = await PBApp.instance.collection('orders').getFullList(
        sort: '-created',
      );
  return records.map(OrderDto.fromRecord).toList();
}

@riverpod
Future<List<OrderInfoModel>> orderInfo(OrderInfoRef ref) async {
  final records = await PBApp.instance.collection('orders').getFullList(
        sort: '-created',
        expand: 'order_items_via_orderId,addressId,customerId,rootOrderId',
      );
  return records.map((e) {
    final order = OrderDto.fromRecord(e);
    final products = e.expand['order_items_via_orderId']
            ?.map((e) => OrderItemDto.fromRecord(e))
            .toList() ??
        [];
    final address = AddressDto.fromRecord(e.expand['addressId']!.first);
    final customer = UserDto.fromRecord(e.expand['customerId']!.first);
    final rootOrder = e.expand['rootOrderId']?.isNotEmpty == true
        ? OrderDto.fromRecord(e.expand['rootOrderId']!.first)
        : null;
    return OrderInfoModel(
      order: order,
      address: address,
      items: products,
      customer: customer,
      rootOrder: rootOrder,
    );
  }).toList();
}

@riverpod
Future<OrderInfoModel> singleOrderInfo(
    SingleOrderInfoRef ref, String orderId) async {
  final orderList = await ref.watch(orderInfoProvider.future);
  return orderList.where((e) => e.order.id == orderId).first;
}
