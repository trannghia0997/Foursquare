import 'package:foursquare/riverpod/cart.dart';
import 'package:foursquare/riverpod/product.dart';
import 'package:foursquare/shared/product_image.dart';
import 'package:flutter/material.dart';
import 'package:foursquare/customer/add_note.dart';
import 'package:foursquare/customer/payment.dart';
import 'package:foursquare/shared/numeric.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class CartScreen extends ConsumerWidget {
  const CartScreen({super.key, required this.isAppBarVisible});
  final bool isAppBarVisible;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final cartState = ref.watch(cartNotifierProvider);

    final productCategoryWithImagesAndColour = ref.watch(
        batchProductCategoryInfoProvider(
            cartState.orderItems.map((e) => e.productCategoryId)));

    final result = productCategoryWithImagesAndColour.when(
      data: (data) {
        return data;
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
    if (result is Widget) {
      return result;
    }
    List<Widget> orderItemRows = [];
    for (var i = 0; i < cartState.orderItems.length; i++) {
      orderItemRows.add(
        Row(
          children: [
            SizedBox(
              width: 125,
              child: ProductImage(
                imageUrl: Uri.parse(
                  (result as List<ProductCategoryInfo>)[i]
                      .images
                      .first
                      .imageUrl,
                ),
              ),
            ),
            const SizedBox(
              width: 16,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    result[i].category.name ?? "",
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    '${formatNumber(result[i].product.expectedPrice ?? 0)} ₫',
                    style: Theme.of(context).textTheme.titleSmall!.copyWith(
                          color: Theme.of(context).colorScheme.secondary,
                        ),
                  ),
                  Text(
                    'Số lượng: ${cartState.orderItems[i].orderedQty} m',
                    style: Theme.of(context).textTheme.titleSmall!.copyWith(
                          color: Theme.of(context).colorScheme.secondary,
                        ),
                  ),
                  // Màu người dùng chọn
                  Row(children: [
                    Text(
                      'Màu sắc: ',
                      style: Theme.of(context).textTheme.titleSmall!.copyWith(
                            color: Theme.of(context).colorScheme.secondary,
                          ),
                    ),
                    Container(
                      width: 15,
                      height: 15,
                      color: Color(int.parse(
                          'FF${result[i].colour.hexCode.replaceFirst('#', '')}',
                          radix: 16)),
                    )
                  ]),
                ],
              ),
            ),
            IconButton(
              icon: const Icon(Icons.delete),
              onPressed: () => ref
                  .read(cartNotifierProvider.notifier)
                  .removeOrderItem(cartState.orderItems[i]),
            ),
          ],
        ),
      );
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
              actions: [
                IconButton(
                  icon: const Icon(Icons.add_comment_outlined),
                  onPressed: () {
                    // Add note
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return const AddNote();
                      },
                    );
                  },
                  tooltip: 'Bạn có thể thêm lưu ý cho đơn hàng của bạn',
                ),
              ],
            )
          : null,
      body: Column(
        children: [
          if (orderItemRows.isNotEmpty)
            Expanded(
              child: ListView.separated(
                padding:
                    const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
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
                      '${formatNumber(cartState.totalAmount)} ₫',
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
                            paymentCost: cartState.totalAmount,
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
  final Function onPressed;
  final String labelText;
  final Size minSize;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed as void Function()?,
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

class CartAppBarAction extends HookConsumerWidget {
  const CartAppBarAction({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final cartState = ref.watch(cartNotifierProvider);
    return IconButton(
      icon: Stack(
        alignment: Alignment.center,
        children: [
          const Icon(
            Icons.shopping_cart,
          ),
          if (cartState.orderItems.isNotEmpty)
            Align(
              alignment: Alignment.topRight,
              child: Container(
                height: 16,
                width: 16,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Theme.of(context).primaryColor,
                ),
                child: Center(
                  child: Container(
                    height: 12,
                    width: 12,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.red,
                    ),
                    child: Center(
                      child: Text(
                        '${cartState.orderItems.length}',
                        style: const TextStyle(
                          fontSize: 8,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
        ],
      ),
      onPressed: () => _pushScreen(
        context: context,
        screen: const CartScreen(
          isAppBarVisible: true,
        ),
        isAppBarVisible: true,
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
      builder: (_) => Theme(data: themeData, child: screen as CartScreen),
      settings: RouteSettings(
        arguments: isAppBarVisible,
      ),
    ),
  );
}
