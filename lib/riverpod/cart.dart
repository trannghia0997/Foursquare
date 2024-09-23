import 'package:foursquare/services/pb.dart';
import 'package:foursquare/shared/models/data/invoice_status_code.dart';
import 'package:foursquare/shared/models/data/order_status_code.dart';
import 'package:foursquare/shared/models/enums/invoice_type.dart';
import 'package:foursquare/shared/models/enums/order_type.dart';
import 'package:foursquare/shared/models/enums/payment_method.dart';
import 'package:foursquare/shared/models/invoice.dart';
import 'package:foursquare/shared/models/invoice_line_item.dart';
import 'package:foursquare/shared/models/order.dart';
import 'package:foursquare/shared/models/order_item.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'cart.g.dart';
part 'cart.freezed.dart';

@freezed
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
        .fold(0, (value, element) => value + element);
  }
}

final defaultOrderEditDto = OrderEditDto(
  type: OrderType.sale,
  customerId: "",
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
    final order = await PBApp.instance.collection('orders').create(
          body: state.order
              .copyWith(
                customerId: PBApp.instance.authStore.model.id,
              )
              .toJson(),
        );
    // With ID from order, create order items
    final orderItems = await Future.wait(
      state.orderItems.map(
        (e) async {
          return await PBApp.instance
              .collection('order_items')
              .create(
                body: e.copyWith(orderId: order.id).toJson(),
              )
              .then((value) => OrderItemDto.fromRecord(value));
        },
      ),
    );
    if (state.invoice != defaultInvoiceEditDto) {
      final invoice = await PBApp.instance
          .collection('invoices')
          .create(body: state.invoice.toJson());
      // Create invoice line items from order items and invoices
      await Future.wait(orderItems.map((e) async {
        return await PBApp.instance.collection('invoice_line_items').create(
              body: InvoiceLineItemEditDto(
                invoiceId: invoice.id,
                orderItemId: e.id,
                unitPrice: e.unitPrice,
              ).toJson(),
            );
      }));
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
