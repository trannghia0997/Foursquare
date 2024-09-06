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
    required OrderEditDTO order,
    required List<OrderItemEditDTO> items,
    required InvoiceEditDTO invoice,
  }) = _Cart;

  double get totalAmount {
    return items
        .map((element) => element.orderedQty! * element.unitPrice)
        .reduce((value, element) => value + element)
        .toDouble();
  }
}

@riverpod
class CartNotifier extends _$CartNotifier {
  @override
  Cart build() {
    return Cart(
      items: [],
      order: OrderEditDTO(
        type: OrderType.sale,
        customerId: '',
        statusCodeId: OrderStatusCodeData.pending.id,
        addressId: '',
      ),
      invoice: InvoiceEditDTO(
        totalAmount: 0,
        statusCodeId: InvoiceStatusCodeData.draft.id,
        paymentMethod: PaymentMethod.cash,
        orderId: '',
        type: InvoiceType.proForma,
      ),
    );
  }

  void updateOrder(OrderEditDTO order) {
    state = state.copyWith(order: order);
  }

  Future<void> createOrder() async {
    // Call API to create order
    clear();
  }

  void clear() {
    state = Cart(
      items: [],
      order: OrderEditDTO(
        type: OrderType.sale,
        customerId: '',
        statusCodeId: OrderStatusCodeData.pending.id,
        addressId: '',
      ),
      invoice: InvoiceEditDTO(
        totalAmount: 0,
        statusCodeId: InvoiceStatusCodeData.draft.id,
        paymentMethod: PaymentMethod.cash,
        orderId: '',
        type: InvoiceType.proForma,
      ),
    );
  }

  void updateInvoice(InvoiceEditDTO invoice) {
    state = state.copyWith(invoice: invoice);
  }

  void addItemOrUpdateQuantity(OrderItemEditDTO item) {
    if (!state.items.any(
        (element) => element.productCategoryId == item.productCategoryId)) {
      state = state.copyWith(items: [...state.items, item]);
      return;
    }
    final index = state.items.indexWhere(
        (element) => element.productCategoryId == item.productCategoryId);
    final existingItem = state.items[index];
    final updatedItem = existingItem.copyWith(
      // We are sure that orderedQty is not null despite the type being int?
      orderedQty: item.orderedQty! + existingItem.orderedQty!,
    );
    state = state.copyWith(
      items: state.items
          .map((e) =>
              e.productCategoryId == item.productCategoryId ? updatedItem : e)
          .toList(),
    );
  }

  void removeItem(OrderItemEditDTO item) {
    state = state.copyWith(items: state.items..remove(item));
  }

  void updateItem(OrderItemEditDTO item) {
    state = state.copyWith(
      items: state.items
          .map((e) => e.productCategoryId == item.productCategoryId ? item : e)
          .toList(),
    );
  }
}
