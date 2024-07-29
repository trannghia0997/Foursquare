import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'cart.dart';
import '../order/models/order_product.dart';

class CartState {
  final Cart cart;

  CartState(this.cart);
}

class CartNotifier extends StateNotifier<CartState> {
  CartNotifier() : super(CartState(cart));

  void addOrderProduct(OrderProduct orderItem) {
    state.cart.addOrderProduct(orderItem);
    state = CartState(state.cart);
  }

  void deleteOrderProduct(OrderProduct orderItem) {
    state.cart.deleteOrderProduct(orderItem);
    state = CartState(state.cart);
  }

  void deleteAllOrderProduct() {
    state.cart.deleteAllOrderProduct();
    state = CartState(state.cart);
  }

  void addNote(String note) {
    state.cart.addNote(note);
    state = CartState(state.cart);
  }
}

final cartProvider = StateNotifierProvider<CartNotifier, CartState>((ref) {
  return CartNotifier();
});
