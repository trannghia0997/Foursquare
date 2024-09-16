import 'package:foursquare/services/pb.dart';
import 'package:foursquare/shared/models/data/invoice_status_code.dart';
import 'package:foursquare/shared/models/data/order_status_code.dart';
import 'package:foursquare/shared/models/enums/invoice_type.dart';
import 'package:foursquare/shared/models/enums/order_type.dart';
import 'package:foursquare/shared/models/enums/payment_method.dart';
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
    required OrderEditDto order,
    required List<OrderItemEditDto> orderItems,
    required InvoiceEditDto invoice,
  }) = _Cart;

  int get totalAmount {
    return orderItems
        .map((element) => element.orderedQty * element.unitPrice)
        .reduce((value, element) => value + element);
  }
}

final defaultOrderEditDto = OrderEditDto(
  type: OrderType.sale,
  customerId: PBApp.instance.authStore.model.id,
  statusCodeId: OrderStatusCodeData.pending.id,
  addressId: '',
);

final defaultInvoiceEditDto = InvoiceEditDto(
  totalAmount: 0,
  statusCodeId: InvoiceStatusCodeData.draft.id,
  paymentMethod: PaymentMethod.cash,
  orderId: '',
  type: InvoiceType.proForma,
);

@riverpod
class CartNotifier extends _$CartNotifier {
  @override
  Cart build() {
    return Cart(
      orderItems: [],
      order: defaultOrderEditDto,
      invoice: defaultInvoiceEditDto,
    );
  }

  void updateOrder(OrderEditDto order) {
    state = state.copyWith(order: order);
  }

  Future<void> createOrder() async {
    final order = await PBApp.instance
        .collection('orders')
        .create(body: state.order.toJson());
    // With ID from order, create order items
    await Future.wait(state.orderItems.map((e) async {
      await PBApp.instance
          .collection('order_items')
          .create(body: e.copyWith(orderId: order.id, receivedQty: 0).toJson());
    }));
    if (state.invoice != defaultInvoiceEditDto) {
      await PBApp.instance
          .collection('invoices')
          .create(body: state.invoice.toJson());
    }
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
      invoice: defaultInvoiceEditDto,
    );
  }

  void updateInvoice(InvoiceEditDto invoice) {
    state = state.copyWith(invoice: invoice);
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
    state = state.copyWith(orderItems: state.orderItems..remove(item));
  }

  void updateOrderItem(OrderItemEditDto item) {
    state = state.copyWith(
      orderItems: state.orderItems
          .map((e) => e.productCategoryId == item.productCategoryId ? item : e)
          .toList(),
    );
  }
}
