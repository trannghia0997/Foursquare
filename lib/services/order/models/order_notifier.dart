import 'package:foursquare/services/assignment/models/shipment_assignment.dart';
import 'package:foursquare/services/assignment/models/warehouse_assignment.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:foursquare/services/order/models/order.dart';

class OrderState {
  final List<Order> orders;

  OrderState(this.orders);
}

class OrderNotifier extends StateNotifier<OrderState> {
  OrderNotifier() : super(OrderState(orders));

  void setOrderStatus(String orderId, OrderStatus status) {
    state.orders
        .firstWhere((order) => order.id == orderId)
        .setOrderStatus(status);
    state = OrderState(state.orders);
  }

  void setWarehouseAssignmentStatus(
      String orderId, WarehouseAssignmentStatus status) {
    state.orders
        .firstWhere((order) => order.id == orderId)
        .setWarehouseAssignmentStatus(status);
    state = OrderState(state.orders);
  }

  void setShipmentAssignmentStatus(
      String orderId, ShipmentAssignmentStatus status) {
    state.orders
        .firstWhere((order) => order.id == orderId)
        .setShipmentAssignmentStatus(status);
    state = OrderState(state.orders);
  }

  void addOrder(Order order) {
    state.orders.add(order);
    state = OrderState(state.orders);
  }

  void deleteOrderById(String orderId) {
    state.orders
        .firstWhere((order) => order.id == orderId)
        .deleteOrderById(orderId);
    state = OrderState(state.orders);
  }

  void addNote(String orderId, String note) {
    state.orders.firstWhere((order) => order.id == orderId).addNote(note);
    state = OrderState(state.orders);
  }

  void addOtherInfo(String orderId, String otherInfo) {
    state.orders
        .firstWhere((order) => order.id == orderId)
        .addOtherInfo(otherInfo);
    state = OrderState(state.orders);
  }
}

final orderProvider = StateNotifierProvider<OrderNotifier, OrderState>((ref) {
  return OrderNotifier();
});
