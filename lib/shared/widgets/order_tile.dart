import 'package:flutter/material.dart';
import 'package:foursquare/riverpod/order.dart';
import 'package:foursquare/shared/extension.dart';
import 'package:foursquare/shared/image.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class OrderTile extends HookConsumerWidget {
  const OrderTile({
    super.key,
    this.isManager = false,
    required this.orderInfo,
    required this.onTap,
  });

  final OrderInfo orderInfo;
  final void Function() onTap;
  final bool isManager;

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
              ).toUpperCase()}',
          style: Theme.of(context).textTheme.titleMedium,
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(orderInfo.order.created.formattedDateTime),
            if (isManager)
              Text(
                orderInfo.guest?.name != null &&
                        orderInfo.guest!.name.isNotEmpty
                    ? 'Người tạo: ${orderInfo.guest!.name}'
                    : 'Người tạo: ${orderInfo.creator.name}',
                style: Theme.of(context).textTheme.titleMedium,
              ),
          ],
        ),
      ),
    );
  }
}
