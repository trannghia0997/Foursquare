import 'dart:math';

import 'package:Foursquare/services/invoice/models/invoice.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import './order_product.dart';

part 'order.freezed.dart';
part 'order.g.dart';

enum OrderType {
  @JsonValue('sale')
  sale,
  @JsonValue('return')
  return_,
  @JsonValue('exchange')
  exchange,
  @JsonValue('transfer')
  transfer,
  @JsonValue('other')
  other
}

enum OrderStatus {
  @JsonValue('pending')
  pending,
  @JsonValue('in_progress')
  inProgress,
  @JsonValue('assigned')
  assigned,
  @JsonValue('completed')
  completed,
  @JsonValue('cancelled')
  cancelled,
  @JsonValue('failed')
  failed,
  @JsonValue('other')
  other
}

@freezed
class Order with _$Order {
  const factory Order({
    @Default(_generateOrderId) String id,
    required String creatorId,
    required List<OrderProduct> listOrderProduct,
    required OrderType type,
    required OrderStatus orderStatus,
    required String addressId,
    PaymentMethod? paymentMethod,
    // required String statusId,
    String? customerId,
    @Default(0) int priority,
    @Default(false) bool isInternal,
    String? parentOrderId,
    String? note,
  }) = _Order;

  factory Order.fromJson(Map<String, Object?> json) => _$OrderFromJson(json);

  static String _generateOrderId() {
    const chars = 'abcdefghijklmnopqrstuvwxyz0123456789';
    const length = 12;
    final random = Random();
    return String.fromCharCodes(Iterable.generate(
      length,
      (_) => chars.codeUnitAt(random.nextInt(chars.length)),
    ));
  }

  Order setOrderStatus(OrderStatus status) {
    return copyWith(orderStatus: status);
  }
}

List<Order> orders = [];
// Method to add an order
void addOrder(Order order) {
  orders.add(order);
}

// // Method to delete an order by its index
// void deleteOrder(int index) {
//   if (index >= 0 && index < orders.length) {
//     orders.removeAt(index);
//   }
// }

// // Method to delete an order by its id
// void deleteOrderById(String orderId) {
//   orders.removeWhere((order) => order.id == orderId);
// }

@unfreezed
class OrderCreation with _$OrderCreation {
  factory OrderCreation({
    @JsonKey(name: 'creator_id') required String creatorId,
    @JsonKey(name: 'customer_id') String? customerId,
    @Default(OrderType.sale) OrderType type,
    @JsonKey(name: 'address_id') String? addressId,
    @Default(0) int priority,
    @JsonKey(name: 'is_internal') @Default(false) bool isInternal,
    @JsonKey(name: 'parent_order_id') String? parentOrderId,
    @JsonKey(name: 'status_id') required String statusId,
    @JsonKey(name: 'list_order_product')
    required List<OrderProduct> listOrderProductId,
    String? note,
  }) = _OrderCreation;

  factory OrderCreation.fromJson(Map<String, Object?> json) =>
      _$OrderCreationFromJson(json);
}
