import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../order/models/order_product.dart';

part 'cart.freezed.dart';
part 'cart.g.dart';

@unfreezed
class Cart with _$Cart {
  const Cart._();

  factory Cart({
    @JsonKey(name: 'customer_id') String? customerId,
    @JsonKey(name: 'list_order_product')
    required List<OrderProduct> listOrderProduct,
    String? note,
    required int totalCost,
  }) = _Cart;

  factory Cart.fromJson(Map<String, Object?> json) => _$CartFromJson(json);

  void addOrderProduct(OrderProduct orderItem) {
    listOrderProduct.add(orderItem);
    totalCost = calculateTotalCost(listOrderProduct)!;
  }

  void deleteOrderProduct(OrderProduct orderItem) {
    listOrderProduct.remove(orderItem);
    totalCost = calculateTotalCost(listOrderProduct)!;
  }

  void deleteAllOrderProduct() {
    listOrderProduct.clear();
    totalCost = 0;
  }

  static int? calculateTotalCost(List<OrderProduct> itemsInCart) {
    double total = 0;
    for (var item in itemsInCart) {
      total += item.product.price * item.orderedQuantity;
    }
    return total.toInt();
  }
}

Cart cart = Cart(
  customerId: 'customer456',
  listOrderProduct: [],
  note: '',
  totalCost: 0,
);
