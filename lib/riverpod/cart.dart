import 'package:foursquare/services/pb.dart';
import 'package:foursquare/shared/models/data/order_status_code.dart';
import 'package:foursquare/shared/models/enums/order_type.dart';
import 'package:foursquare/shared/models/order.dart';
import 'package:foursquare/shared/models/order_item.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pocketbase/pocketbase.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'cart.g.dart';
part 'cart.freezed.dart';

@freezed
class Cart with _$Cart {
  const Cart._();
  factory Cart({
    required OrderEditDto order,
    required List<OrderItemEditDto> orderItems,
  }) = _Cart;

  double get totalAmount {
    return orderItems
        .map((element) => element.orderedQty * element.unitPrice)
        .fold(0, (value, element) => value + element);
  }
}

final defaultOrderEditDto = OrderEditDto(
  type: OrderType.sale,
  creatorId: "",
  statusCodeId: OrderStatusCodeData.pending.id,
  addressId: '',
);

@riverpod
class CartNotifier extends _$CartNotifier {
  @override
  Cart build() {
    return Cart(
      orderItems: [],
      order: defaultOrderEditDto,
    );
  }

  void updateOrder(OrderEditDto order) {
    state = state.copyWith(order: order);
  }

  Future<void> createOrder() async {
    final order = await PBApp.instance.collection('orders').create(
          body: state.order
              .copyWith(
                creatorId: (PBApp.instance.authStore.model as RecordModel).id,
              )
              .toJson(),
        );
    // With ID from order, create order items
    await Future.wait(
      state.orderItems.map(
        (e) async {
          return await PBApp.instance
              .collection('order_items')
              .create(
                body: e
                    .copyWith(
                      orderId: order.id,
                    )
                    .toJson(),
              )
              .then((value) => OrderItemDto.fromRecord(value));
        },
      ),
    );
    // Clear cart after creating order
    clear();
  }

  void selectAddress(String addressId) {
    state = state.copyWith(order: state.order.copyWith(addressId: addressId));
  }

  void clear() {
    state = Cart(
      orderItems: [],
      order: defaultOrderEditDto,
    );
  }

  void addItemOrUpdateQuantity(OrderItemEditDto item) {
    if (!state.orderItems.any(
        (element) => element.productCategoryId == item.productCategoryId)) {
      state = state.copyWith(orderItems: [...state.orderItems, item]);
      return;
    }
    final index = state.orderItems.indexWhere(
        (element) => element.productCategoryId == item.productCategoryId);
    final existingItem = state.orderItems[index];
    final updatedItem = existingItem.copyWith(
      // We are sure that orderedQty is not null despite the type being int?
      orderedQty: item.orderedQty + existingItem.orderedQty,
    );
    state = state.copyWith(
      orderItems: state.orderItems
          .map((e) =>
              e.productCategoryId == item.productCategoryId ? updatedItem : e)
          .toList(),
    );
  }

  void removeOrderItem(OrderItemEditDto item) {
    final newOrderItems =
        state.orderItems.where((element) => element != item).toList();
    state = state.copyWith(orderItems: newOrderItems);
  }

  void updateOrderItem(OrderItemEditDto item) {
    state = state.copyWith(
      orderItems: state.orderItems
          .map((e) => e.productCategoryId == item.productCategoryId ? item : e)
          .toList(),
    );
  }
}
