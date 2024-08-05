import 'package:foursquare/services/assignment/models/shipment_assignment.dart';
import 'package:foursquare/services/assignment/models/warehouse_assignment.dart';
import 'package:foursquare/services/invoice/models/invoice.dart';
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

@unfreezed
class Order with _$Order {
  const Order._();

  factory Order({
    required String id,
    required String creatorId,
    required List<OrderProduct> listOrderProduct,
    required OrderType type,
    required OrderStatus orderStatus,
    required String addressId,
    required PaymentMethod paymentMethod,
    required int toltalCost,
    WarehouseAssignmentStatus? warehouseAssignmentStatus,
    ShipmentAssignmentStatus? shipmentAssignmentStatus,
    // required String statusId,
    String? customerId,
    @Default(0) int priority,
    @Default(false) bool isInternal,
    String? parentOrderId,
    String? note,
    String? otherInfo,
  }) = _Order;

  factory Order.fromJson(Map<String, Object?> json) => _$OrderFromJson(json);

  void setOrderStatus(OrderStatus status) {
    orderStatus = status;
  }

  void setWarehouseAssignmentStatus(WarehouseAssignmentStatus status) {
    warehouseAssignmentStatus = status;
  }

  void setShipmentAssignmentStatus(ShipmentAssignmentStatus status) {
    shipmentAssignmentStatus = status;
  }

  // Method to add an order
  void addOrder(Order order) {
    orders.add(order);
  }

  // Method to delete an order by its id
  void deleteOrderById(String orderId) {
    orders.removeWhere((order) => order.id == orderId);
  }

  // Method to add note to an order
  void addNote(String note) {
    this.note = note;
  }

  // Method to add otherInfo to an order
  void addOtherInfo(String otherInfo) {
    this.otherInfo = otherInfo;
  }

  // Method to add note for orderProduct
  // ignore: non_constant_identifier_names
  void addOrderProductNote(String OrderProductId, String note) {
    listOrderProduct
        .firstWhere((orderProduct) => orderProduct.id == OrderProductId)
        .addNote(note);
  }
}

List<Order> orders = [];

@freezed
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
