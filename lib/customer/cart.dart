import 'package:foursquare/shared/product_image.dart';
import 'package:flutter/material.dart';
import 'package:foursquare/customer/add_note.dart';
import 'package:foursquare/customer/payment.dart';
import 'package:foursquare/shared/numeric.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:foursquare/services/cart/cart.dart';

class CartScreen extends ConsumerWidget {
  const CartScreen({super.key, required this.isAppBarVisible});
  final bool isAppBarVisible;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    List<Widget> orderItemRows = cart.listOrderProduct
        .map(
          (item) => Row(
            children: [
              SizedBox(
                width: 125,
                child: ProductImage(
                  product: item.product,
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
                      item.product.name,
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Text(
                      '${formatNumber(item.product.price)} VNĐ',
                      style: Theme.of(context).textTheme.titleSmall!.copyWith(
                            color: Theme.of(context).colorScheme.secondary,
                          ),
                    ),
                    Text(
                      'Số lượng: ${item.orderedQuantity} m',
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
                        // color: Color(int.parse(
                        //     item.colourChoosed.hex.replaceFirst('#', '0x'))),
                        color: Color(int.parse(
                            'FF${item.colourChoosed.hex.replaceFirst('#', '')}',
                            radix: 16)),
                      )
                    ]),
                  ],
                ),
              ),
              IconButton(
                icon: const Icon(Icons.backspace),
                onPressed: () => cart.deleteOrderProduct(item),
                color: Colors.red,
              )
            ],
          ),
        )
        .toList();

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
                    '${cart.listOrderProduct.length} sản phẩm',
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
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return const AddNote(); // Sử dụng widget bạn đã tạo
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
                      '${formatNumber(cart.totalCost)} VNĐ',
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                  ],
                ),
                CallToActionButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              PaymentScreen(paymentCost: cart.totalCost)),
                    );
                  },
                  labelText: 'Thanh Toán',
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
    return IconButton(
      icon: Stack(
        alignment: Alignment.center,
        children: [
          const Icon(
            Icons.shopping_cart,
          ),
          if (cart.listOrderProduct.isNotEmpty)
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
                        cart.listOrderProduct.length.toString(),
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
