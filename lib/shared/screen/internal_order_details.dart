import 'package:flutter/material.dart';
import 'package:foursquare/riverpod/assignment.dart';
import 'package:foursquare/riverpod/internal_order.dart';
import 'package:foursquare/riverpod/product.dart';
import 'package:foursquare/shared/custom_list.dart';
import 'package:foursquare/shared/extension.dart';
import 'package:foursquare/shared/models/data/order_status_code.dart';
import 'package:foursquare/shared/models/enums/assignment_status.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class InternalOrderDetailsPage extends HookConsumerWidget {
  const InternalOrderDetailsPage({super.key, required this.internalOrderId});

  final String internalOrderId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final internalOrderInfo =
        ref.watch(singleInternalOrderInfoProvider(internalOrderId));
    return Scaffold(
      appBar: AppBar(
        title: const Text('Chi tiết đơn hàng nội bộ'),
      ),
      body: RefreshIndicator.adaptive(
        onRefresh: () async {
          ref.invalidate(singleInternalOrderInfoProvider(internalOrderId));
        },
        child: internalOrderInfo.when(
          data: (internalOrderInfo) {
            final orderStatusCode = OrderStatusCodeData.fromId(
                internalOrderInfo.internalOrder.statusCodeId);
            final backgroundAndForegroundColor =
                orderStatusCode.backgroundAndForegroundColor;
            return ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ListTile(
                        tileColor: backgroundAndForegroundColor.$1,
                        title: Text(
                            'Trạng thái: ${orderStatusCode.vietnameseLocalizationString}',
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium
                                ?.copyWith(
                                  color: backgroundAndForegroundColor.$2,
                                )),
                        subtitle: Text(
                          'Cập nhật lần cuối: ${internalOrderInfo.internalOrder.updated.formatDateTime()}',
                          style:
                              Theme.of(context).textTheme.bodyMedium?.copyWith(
                                    color: backgroundAndForegroundColor.$2,
                                  ),
                        ),
                      ),
                      const SizedBox(height: 8),
                      WarehouseAssignmnetInfoTile(
                          internalOrderId: internalOrderId),
                      InternalOrderItemList(
                          internalOrderInfo: internalOrderInfo),
                    ],
                  ),
                ),
              ],
            );
          },
          error: (error, stackTrace) => Center(
            child: Column(
              children: [
                Text('Error: $error'),
              ],
            ),
          ),
          loading: () => const Center(
            child: CircularProgressIndicator(),
          ),
        ),
      ),
    );
  }
}

class WarehouseAssignmnetInfoTile extends HookConsumerWidget {
  const WarehouseAssignmnetInfoTile({super.key, required this.internalOrderId});

  final String internalOrderId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final warehouseAssignmentInfoState = ref.watch(
        warehouseAssignmentInfoByInternalOrderIdProvider(internalOrderId));
    final warehouseAssignmentInfo = warehouseAssignmentInfoState
        .maybeWhen(
          data: (warehouseAssignmentInfo) => warehouseAssignmentInfo,
          orElse: () => null,
        )
        ?.firstOrNull;
    if (warehouseAssignmentInfo == null) {
      return const SizedBox.shrink();
    }
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 8),
        ExpansionTile(
          leading: const Icon(Icons.assignment_ind),
          title: const Text('Chi tiết phân công'),
          subtitle: Text(
              'Trạng thái: ${warehouseAssignmentInfo.warehouseAssignment.status.vietnameseLocalizationString}'),
          children: [
            ListTile(
              title: Text(
                  'Nhân viên: ${warehouseAssignmentInfo.staffInfo?.user.name ?? ''}'),
              subtitle: Text(
                  'Mã nhân viên: ${warehouseAssignmentInfo.staffInfo?.staff.id.toUpperCase()}'),
            ),
            ListTile(
              title: Text(
                  'Đơn vị làm việc: ${warehouseAssignmentInfo.staffInfo?.workingUnit.name ?? ''}'),
            ),
            ListTile(
              title: Text(
                'Ngày phân công: ${warehouseAssignmentInfo.warehouseAssignment.created.formatDateTime()}',
              ),
            ),
            const SizedBox(height: 8),
          ],
        ),
        ExpansionTile(
          leading: const Icon(Icons.note),
          title: const Text('Ghi chú'),
          subtitle:
              warehouseAssignmentInfo.warehouseAssignment.note?.isNotEmpty ==
                      true
                  ? Text(
                      warehouseAssignmentInfo.warehouseAssignment.note!
                          .excerpt(maxLength: 16),
                    )
                  : const Text('Không có ghi chú'),
          children: [
            ListTile(
              title: Text(
                warehouseAssignmentInfo.warehouseAssignment.note?.isNotEmpty ==
                        true
                    ? warehouseAssignmentInfo.warehouseAssignment.note!
                    : 'Không có ghi chú',
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class InternalOrderItemList extends HookConsumerWidget {
  const InternalOrderItemList({super.key, required this.internalOrderInfo});

  final InternalOrderInfo internalOrderInfo;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final productCategoryInfo = ref.watch(batchProductCategoryInfoProvider(
      internalOrderInfo.internalOrderItems
          .map((e) => e.rootOrderItem.productCategoryId)
          .toCustomList(),
    ));
    return productCategoryInfo.when(
      data: (productCategoryInfo) {
        return ExpansionTile(
          leading: const Icon(Icons.list),
          title: const Text('Danh sách sản phẩm'),
          subtitle: Text(
              'Tổng số sản phẩm: ${internalOrderInfo.internalOrderItems.length}'),
          children: [
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: internalOrderInfo.internalOrderItems.length,
              itemBuilder: (context, index) {
                final item = internalOrderInfo.internalOrderItems[index];
                final categoryInfo = productCategoryInfo[index];
                return Consumer(
                  builder: (context, ref, child) {
                    final productQuantityInWarehouse = ref.watch(
                      productQuantityInfoByProductCategoryAndWorkingUnitProvider(
                        categoryInfo.category.id,
                        internalOrderInfo.internalOrder.srcWorkingUnitId,
                      ),
                    );
                    final qtyString = productQuantityInWarehouse.when(
                      data: (quantity) =>
                          quantity?.quantity.qty?.formattedNumber ?? '',
                      loading: () => 'Đang tải...',
                      error: (_, __) => 'Lỗi',
                    );
                    return Column(
                      children: [
                        ListTile(
                          leading:
                              Image.network(categoryInfo.images.first.imageUrl),
                          title: Text(categoryInfo.category.name ?? ''),
                          subtitle: Text(
                            'Mã sản phẩm: ${categoryInfo.category.id.toUpperCase()}',
                          ),
                        ),
                        ListTile(
                          title: Text(
                            'Số lượng (m): ${item.internalOrderItem.qty?.formattedNumber ?? 0} (Trong kho: $qtyString)',
                          ),
                          subtitle: Text(
                            'Số lượng (cuộn): ${item.internalOrderItem.rollQty?.formattedNumber ?? 0}',
                          ),
                        ),
                        const Divider(),
                      ],
                    );
                  },
                );
              },
            ),
          ],
        );
      },
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (error, stackTrace) => Center(child: Text('Error: $error')),
    );
  }
}
