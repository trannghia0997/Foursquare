import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../order/models/order_product.dart';

part 'cart.freezed.dart';
part 'cart.g.dart';

@freezed
class Cart with _$Cart {
  factory Cart({
    @JsonKey(name: 'customer_id') String? customerId,
    @JsonKey(name: 'list_order_product')
    required List<OrderProduct> listOrderProduct,
    String? note,
  }) = _Cart;

  factory Cart.fromJson(Map<String, Object?> json) => _$CartFromJson(json);

  Cart addOrderProduct(OrderProduct orderItem) {
    return copyWith(
      listOrderProduct: [...listOrderProduct, orderItem],
    );
  }

  Cart deleteOrderProduct(OrderProduct orderItem) {
    return copyWith(
      listOrderProduct: List<OrderProduct>.from(listOrderProduct)..remove(orderItem),
    );
  }
}

Cart cart = Cart(
  customerId: 'customer456',
  listOrderProduct: [],
  note: '',
);

@unfreezed
class CartCreation with _$CartCreation {
  factory CartCreation({
    @JsonKey(name: 'customer_id') String? customerId,
    @JsonKey(name: 'list_order_product')
    required List<OrderProduct> listOrderProduct,
    String? note,
  }) = _CartCreation;

  factory CartCreation.fromJson(Map<String, Object?> json) =>
      _$CartCreationFromJson(json);
}
