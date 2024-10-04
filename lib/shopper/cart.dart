import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:foursquare/riverpod/cart.dart';
import 'package:foursquare/riverpod/product.dart';
import 'package:foursquare/shared/custom_list.dart';
import 'package:flutter/material.dart';
import 'package:foursquare/shopper/payment.dart';
import 'package:foursquare/shared/numeric.dart';
import 'package:foursquare/shared/widgets/order_item_tile.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class CartScreen extends HookConsumerWidget {
  const CartScreen({super.key, required this.isAppBarVisible});
  final bool isAppBarVisible;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final cartState = ref.watch(cartNotifierProvider);
    final qtyTextController = useTextEditingController.fromValue(
      TextEditingValue.empty,
    );
    final formKey = useMemoized(() => GlobalKey<FormState>());
    final isRemoveConfirmed = useState(false);

    late final List<ProductCategoryInfo> productCategoryInfos;
    final productCategoryState = ref
        .watch(batchProductCategoryInfoProvider(
          cartState.orderItems.map((e) => e.productCategoryId).toCustomList(),
        ))
        .when(
          data: (data) {
            productCategoryInfos = data;
          },
          loading: () => const Center(
            child: CircularProgressIndicator(),
          ),
          error: (error, _) {
            return Center(
              child: Text('Error: $error'),
            );
          },
        );
    if (productCategoryState != null) {
      return productCategoryState;
    }
    List<Widget> orderItemRows = [];
    for (var i = 0; i < cartState.orderItems.length; i++) {
      orderItemRows.add(OrderItemTile(
        productCategoryInfo: (productCategoryInfos)[i],
        orderItemEdit: cartState.orderItems[i],
        receivedQtyShown: false,
        shippedQtyShown: false,
        trailing: IconButton(
          icon: const Icon(Icons.edit),
          onPressed: () {
            qtyTextController.text =
                cartState.orderItems[i].orderedQty.toString();
            showModalBottomSheet(
              useSafeArea: true,
              context: context,
              isScrollControlled: true,
              builder: (BuildContext context) {
                return StatefulBuilder(
                    builder: (BuildContext context, setState) {
                  return Padding(
                    padding: EdgeInsets.only(
                      bottom: MediaQuery.of(context).viewInsets.bottom,
                      left: 16.0,
                      right: 16.0,
                      top: 16.0,
                    ),
                    child: Form(
                      key: formKey,
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'Chỉnh sửa sản phẩm',
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                          const SizedBox(height: 16),
                          Text(
                            'Số lượng:',
                            style: Theme.of(context).textTheme.bodyMedium,
                          ),
                          TextFormField(
                            keyboardType: TextInputType.number,
                            controller: qtyTextController,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Vui lòng nhập số lượng';
                              }
                              int? newQuantity = int.tryParse(value);
                              if (newQuantity == null || newQuantity <= 0) {
                                return 'Số lượng phải lớn hơn 0';
                              }
                              return null;
                            },
                          ),
                          const SizedBox(height: 16),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              FilledButton.icon(
                                onPressed: () {
                                  if (isRemoveConfirmed.value == false) {
                                    setState(() {
                                      isRemoveConfirmed.value = true;
                                    });
                                  } else {
                                    ref
                                        .read(cartNotifierProvider.notifier)
                                        .removeOrderItem(
                                            cartState.orderItems[i]);
                                    setState(() {
                                      isRemoveConfirmed.value = false;
                                    });
                                    Navigator.pop(context);
                                  }
                                },
                                style: FilledButton.styleFrom(
                                  backgroundColor:
                                      isRemoveConfirmed.value == true
                                          ? Colors.grey
                                          : Colors.red,
                                  foregroundColor: Colors.white,
                                ),
                                icon: Icon(isRemoveConfirmed.value == true
                                    ? Icons.delete
                                    : Icons.check),
                                label: Text(isRemoveConfirmed.value == false
                                    ? 'Xóa sản phẩm'
                                    : 'Xác nhận xóa'),
                              ),
                              FilledButton.icon(
                                onPressed: () {
                                  if (formKey.currentState!.validate()) {
                                    int quantity =
                                        int.parse(qtyTextController.text);
                                    final newOrderItem = cartState.orderItems[i]
                                        .copyWith(orderedQty: quantity);
                                    ref
                                        .read(cartNotifierProvider.notifier)
                                        .updateOrderItem(
                                          newOrderItem,
                                        );
                                    Navigator.pop(context);
                                  }
                                },
                                icon: const Icon(Icons.save),
                                label: const Text('Lưu'),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  );
                });
              },
            ).then((_) {
              isRemoveConfirmed.value = false;
              qtyTextController.clear();
            });
          },
        ),
      ));
    }
    return Scaffold(
      appBar: isAppBarVisible
          ? AppBar(
              leading: IconButton(
                icon: const Icon(Icons.close),
                onPressed: () => Navigator.pop(context),
              ),
              centerTitle: true,
              title: Column(
                children: [
                  const Text('Giỏ hàng'),
                  Text(
                    '${cartState.orderItems.length} sản phẩm',
                    style: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.normal,
                    ),
                  )
                ],
              ),
            )
          : null,
      body: Column(
        children: [
          if (orderItemRows.isNotEmpty)
            Expanded(
              child: ListView.separated(
                itemCount: orderItemRows.length,
                itemBuilder: (_, index) => orderItemRows[index],
                separatorBuilder: (_, index) => const SizedBox(
                  height: 16,
                ),
              ),
            )
          else
            const Expanded(
              child: Center(
                child: Text('Giỏ hàng của bạn đang trống'),
              ),
            ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Tổng cộng',
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                    Text(
                      '${formatNumber(cartState.totalAmount.toInt())} ₫',
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                  ],
                ),
                CallToActionButton(
                  onPressed: () {
                    if (cartState.orderItems.isEmpty) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text(
                              'Hãy thêm hàng vào giỏ hàng trước khi thanh toán.'),
                        ),
                      );
                    } else {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => PaymentScreen(
                            productCategoryInfos: productCategoryInfos,
                          ),
                        ),
                      );
                    }
                  },
                  labelText: 'Đặt hàng',
                  minSize: const Size(220, 45),
                ),
              ],
            ),
          ),
          const SizedBox(height: 16),
        ],
      ),
    );
  }
}

class CallToActionButton extends StatelessWidget {
  const CallToActionButton(
      {required this.onPressed,
      required this.labelText,
      this.minSize = const Size(266, 45),
      super.key});
  final void Function()? onPressed;
  final String labelText;
  final Size minSize;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        minimumSize: minSize,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(14),
        ),
      ),
      child: Text(
        labelText,
        style: const TextStyle(
          fontSize: 16,
        ),
      ),
    );
  }
}

class CartFAB extends HookConsumerWidget {
  const CartFAB({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final cartState = ref.watch(cartNotifierProvider);
    return FloatingActionButton(
      onPressed: () => _pushScreen(
        context: context,
        screen: const CartScreen(
          isAppBarVisible: true,
        ),
        isAppBarVisible: true,
      ),
      child: Stack(
        alignment: Alignment.center,
        children: [
          const Icon(Icons.shopping_cart),
          if (cartState.orderItems.isNotEmpty)
            Align(
              alignment: Alignment.topRight,
              child: Container(
                height: 16,
                width: 16,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.red,
                ),
              ),
            ),
        ],
      ),
    );
  }
}

void _pushScreen(
    {required BuildContext context,
    required Widget screen,
    required bool isAppBarVisible}) {
  ThemeData themeData = Theme.of(context);
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (_) => Theme(
        data: themeData,
        child: screen,
      ),
      settings: RouteSettings(
        arguments: isAppBarVisible,
      ),
    ),
  );
}
