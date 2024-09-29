import 'package:flutter/material.dart';
import 'package:foursquare/riverpod/order.dart';
import 'package:foursquare/shared/extension.dart';
import 'package:foursquare/shared/image_random.dart';
import 'package:foursquare/shared/numeric.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class OrderTile extends HookConsumerWidget {
  const OrderTile({
    super.key,
    required this.orderInfo,
    required this.onTap,
  });

  final OrderInfo orderInfo;
  final void Function() onTap;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Card(
      margin: const EdgeInsets.all(8),
      elevation: 3,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: ListTile(
        contentPadding: const EdgeInsets.all(16),
        onTap: onTap,
        leading: AspectRatio(
          aspectRatio: 16 / 9,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4.0),
              image: DecorationImage(
                image: NetworkImage(
                  getPicsumImageUrlById(
                    id: orderInfo.order.id.hashCode,
                  ),
                ),
                fit: BoxFit.fitWidth,
                alignment: Alignment.topCenter,
              ),
            ),
          ),
        ),
        title: Text(
          'Đơn hàng #${orderInfo.order.id.excerpt(
            maxLength: 8,
            withEllipsis: false,
          )}',
          style: Theme.of(context).textTheme.titleMedium,
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(orderInfo.order.created.convertToReadableString()),
            Text(
              '${formatNumber(orderInfo.totalAmount.toInt())} ₫',
              style: TextStyle(
                color: Theme.of(context).colorScheme.primary,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
