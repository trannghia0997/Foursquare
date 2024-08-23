import 'package:decimal/decimal.dart';
import 'package:foursquare/shared/models/invoice.dart';
import 'package:foursquare/shared/models/order.dart';
import 'package:foursquare/shared/models/order_item.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'cart.g.dart';
part 'cart.freezed.dart';

@Freezed(makeCollectionsUnmodifiable: false)
class Cart with _$Cart {
  const Cart._();
  factory Cart({
    required Order order,
    required List<OrderItem> items,
    required Invoice invoice,
  }) = _Cart;

  Decimal get totalAmount {
    return items.fold<Decimal>(
      Decimal.zero,
      (previousValue, element) =>
          previousValue +
          Decimal.fromInt(element.orderedQty!) * element.unitPrice!,
    );
  }
}

@riverpod
class CartNotifier extends _$CartNotifier {
  @override
  Cart build() {
    return Cart(
      items: [],
      order: const Order(),
      invoice: const Invoice(),
    );
  }

  void updateOrder(Order order) {
    state = state.copyWith(order: order);
  }

  Future<void> createOrder() async {
    // Call API to create order
    clear();
  }

  void clear() {
    state = Cart(
      items: [],
      order: const Order(),
      invoice: const Invoice(),
    );
  }

  void updateInvoice(Invoice invoice) {
    state = state.copyWith(invoice: invoice);
  }

  void addItemOrUpdateQuantity(OrderItem item) {
    if (!state.items.any((element) => element.id == item.id)) {
      state = state.copyWith(items: [...state.items, item]);
      return;
    }
    final index = state.items.indexWhere((element) => element.id == item.id);
    final existingItem = state.items[index];
    final updatedItem = existingItem.copyWith(
      // We are sure that orderedQty is not null despite the type being int?
      orderedQty: item.orderedQty! + existingItem.orderedQty!,
    );
    state = state.copyWith(
      items: state.items.map((e) => e.id == item.id ? updatedItem : e).toList(),
    );
  }

  void removeItem(OrderItem item) {
    state = state.copyWith(items: state.items..remove(item));
  }

  void updateItem(OrderItem item) {
    state = state.copyWith(
      items: state.items.map((e) => e.id == item.id ? item : e).toList(),
    );
  }
}
