import 'package:flutter/material.dart';
import 'package:foursquare/riverpod/product.dart';
import 'package:foursquare/shared/models/order_item.dart';
import 'package:foursquare/shared/numeric.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class OrderItemTile extends HookConsumerWidget {
  const OrderItemTile({
    required this.productCategoryInfo,
    required this.orderItemEdit,
    this.trailing,
    this.isPriceVisible,
    this.isManager = false,
    this.shippedQtyShown = false,
    this.receivedQtyShown = false,
    super.key,
  });

  final ProductCategoryInfo productCategoryInfo;
  final OrderItemEditDto orderItemEdit;
  final Widget? trailing;
  final bool? isPriceVisible;
  final bool isManager;
  final bool shippedQtyShown;
  final bool receivedQtyShown;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ListTile(
      leading: AspectRatio(
        aspectRatio: 64 / 36,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4.0),
            image: DecorationImage(
              image: NetworkImage(productCategoryInfo.images.first.imageUrl),
              fit: BoxFit.fitWidth,
              alignment: Alignment.topCenter,
            ),
          ),
        ),
      ),
      title: Text(
        productCategoryInfo.category.name ?? "",
        style: Theme.of(context).textTheme.titleMedium,
      ),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 8),
          if (isPriceVisible ?? true)
            Text(
              '${formatNumber(productCategoryInfo.product.expectedPrice ?? 0)} ₫',
              style: Theme.of(context).textTheme.titleSmall!.copyWith(
                    color: Theme.of(context).colorScheme.secondary,
                  ),
            ),
          Text(
            'Số lượng: ${formatNumber(orderItemEdit.orderedQty)} m',
            style: Theme.of(context).textTheme.titleSmall!.copyWith(
                  color: Theme.of(context).colorScheme.secondary,
                ),
          ),
          if (!isManager)
            Text(
              'Đã giao: ${formatNumber(orderItemEdit.receivedQty ?? 0)} m',
              style: Theme.of(context).textTheme.titleSmall!.copyWith(
                    color: Theme.of(context).colorScheme.secondary,
                  ),
            ),
          if (shippedQtyShown)
            Text(
              'Đã giao: ${formatNumber(orderItemEdit.shippedQty ?? 0)} m',
              style: Theme.of(context).textTheme.titleSmall!.copyWith(
                    color: Theme.of(context).colorScheme.secondary,
                  ),
            ),
          if (receivedQtyShown)
            Text(
              'Đã nhận: ${formatNumber(orderItemEdit.receivedQty ?? 0)} m',
              style: Theme.of(context).textTheme.titleSmall!.copyWith(
                    color: Theme.of(context).colorScheme.secondary,
                  ),
            ),
          if (isManager)
            Consumer(builder: (context, ref, child) {
              final productQuantitySummary = ref.watch(
                productQuantitySummaryViewByProductCategoryProvider(
                  productCategoryInfo.category.id,
                ),
              );
              return productQuantitySummary.when(
                data: (value) => Text(
                  'Trong kho: ${formatNumber(value?.totalQty ?? 0)} m',
                  style: Theme.of(context).textTheme.titleSmall!.copyWith(
                        color: Theme.of(context).colorScheme.secondary,
                      ),
                ),
                error: (error, _) =>
                    const Text('Trong kho: Lỗi tải dữ liệu'),
                loading: () => const Text('Trong kho: Đang tải dữ liệu'),
              );
            }),
          Row(
            children: [
              Text(
                'Màu sắc: ',
                style: Theme.of(context).textTheme.titleSmall!.copyWith(
                      color: Theme.of(context).colorScheme.secondary,
                    ),
              ),
              Container(
                width: 15,
                height: 15,
                decoration: BoxDecoration(
                  color: Color(int.parse(
                      'FF${productCategoryInfo.colour.hexCode.replaceFirst('#', '')}',
                      radix: 16)),
                  shape: BoxShape.circle,
                ),
              ),
            ],
          ),
        ],
      ),
      trailing: trailing,
    );
  }
}
