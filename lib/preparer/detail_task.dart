import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:foursquare/preparer/product_preparation.dart';
import 'package:foursquare/riverpod/assignment.dart';
import 'package:foursquare/riverpod/internal_order.dart';
import 'package:foursquare/riverpod/product.dart';
import 'package:foursquare/services/pb.dart';
import 'package:foursquare/shared/custom_list.dart';
import 'package:foursquare/shared/models/data/order_status_code.dart';
import 'package:foursquare/shared/models/enums/assignment_status.dart';
import 'package:flutter/material.dart';
import 'package:foursquare/shared/widgets/common_fab.dart';
import 'package:foursquare/shared/widgets/expandable_fab.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:foursquare/shared/extension.dart';

class InternalOrderTaskDetailsPage extends HookConsumerWidget {
  const InternalOrderTaskDetailsPage(
      {super.key, required this.warehouseAssignmentInfo});

  final WarehouseAssignmentInfo warehouseAssignmentInfo;

  Future<void> _onCancelled({
    required BuildContext context,
    required WidgetRef ref,
  }) async {
    await showDialog(
      context: context,
      builder: (context) {
        return HookBuilder(
          builder: (context) {
            final reasonController = useTextEditingController();
            return AlertDialog(
              title: const Text('Lý do hủy đơn hàng'),
              content: SizedBox(
                width: MediaQuery.of(context).size.width * 0.8,
                child: TextField(
                  controller: reasonController,
                  maxLines: 3,
                  decoration: const InputDecoration(
                    hintText: 'Nhập lý do hủy',
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: const Text('Hủy'),
                ),
                TextButton(
                  onPressed: () async {
                    final reason = reasonController.text.isEmpty
                        ? 'Không có'
                        : reasonController.text;
                    await PBApp.instance.collection('internal_orders').update(
                          warehouseAssignmentInfo.internalOrder.id,
                          body: warehouseAssignmentInfo.internalOrder
                              .copyWith(
                                statusCodeId: OrderStatusCodeData.cancelled.id,
                                shipmentId: null,
                              )
                              .toJson(),
                        );
                    await PBApp.instance
                        .collection('warehouse_assignments')
                        .update(
                          warehouseAssignmentInfo.warehouseAssignment.id,
                          body: warehouseAssignmentInfo.warehouseAssignment
                              .copyWith(
                                status: AssignmentStatus.cancelled,
                                note: reason,
                              )
                              .toJson(),
                        );
                    ref.invalidate(
                      singleInternalOrderInfoProvider(
                          warehouseAssignmentInfo.internalOrder.id),
                    );
                    ref.invalidate(warehouseAssignmentInfoByUserProvider);
                    if (!context.mounted) {
                      return;
                    }
                    Navigator.of(context).pop();
                    Navigator.of(context).pop();
                  },
                  child: const Text('Xác nhận'),
                ),
              ],
            );
          },
        );
      },
    );
  }

  Future<void> _onPaused({
    required BuildContext context,
    required WidgetRef ref,
  }) async {
    await showDialog(
      context: context,
      builder: (context) {
        return HookBuilder(
          builder: (context) {
            final reasonController = useTextEditingController();
            return AlertDialog(
              title: const Text('Lý do tạm dừng'),
              content: SizedBox(
                width: MediaQuery.of(context).size.width * 0.8,
                child: TextField(
                  controller: reasonController,
                  maxLines: 3,
                  decoration: const InputDecoration(
                    hintText: 'Nhập lý do hoãn',
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: const Text('Hủy'),
                ),
                TextButton(
                  onPressed: () async {
                    final reason = reasonController.text.isEmpty
                        ? 'Không có'
                        : reasonController.text;
                    await PBApp.instance.collection('internal_orders').update(
                          warehouseAssignmentInfo.internalOrder.id,
                          body: warehouseAssignmentInfo.internalOrder
                              .copyWith(
                                statusCodeId: OrderStatusCodeData.onHold.id,
                              )
                              .toJson(),
                        );
                    await PBApp.instance
                        .collection('warehouse_assignments')
                        .update(
                          warehouseAssignmentInfo.warehouseAssignment.id,
                          body: warehouseAssignmentInfo.warehouseAssignment
                              .copyWith(
                                status: AssignmentStatus.other,
                                note: reason,
                              )
                              .toJson(),
                        );
                    ref.invalidate(singleInternalOrderInfoProvider(
                        warehouseAssignmentInfo.internalOrder.id));
                    ref.invalidate(warehouseAssignmentInfoByUserProvider);
                    if (!context.mounted) {
                      return;
                    }
                    Navigator.of(context).pop();
                    Navigator.of(context).pop();
                  },
                  child: const Text('Xác nhận'),
                ),
              ],
            );
          },
        );
      },
    );
  }

  Future<void> _onAccepted(
    BuildContext context,
    WidgetRef ref,
  ) async {
    await PBApp.instance.collection('internal_orders').update(
          warehouseAssignmentInfo.internalOrder.id,
          body: warehouseAssignmentInfo.internalOrder
              .copyWith(
                statusCodeId: OrderStatusCodeData.processing.id,
              )
              .toJson(),
        );
    await PBApp.instance.collection('warehouse_assignments').update(
          warehouseAssignmentInfo.warehouseAssignment.id,
          body: warehouseAssignmentInfo.warehouseAssignment
              .copyWith(
                status: AssignmentStatus.inProgress,
              )
              .toJson(),
        );
    ref.invalidate(singleInternalOrderInfoProvider(
        warehouseAssignmentInfo.internalOrder.id));
    ref.invalidate(warehouseAssignmentInfoByUserProvider);
    if (!context.mounted) {
      return;
    }
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final internalOrderInfo = ref.watch(
      singleInternalOrderInfoProvider(warehouseAssignmentInfo.internalOrder.id),
    );

    final allowedStateForAccept = useMemoized(
      () => [
        OrderStatusCodeData.pending,
        OrderStatusCodeData.onHold,
      ],
    );
    final allowedStateForPause = useMemoized(
      () => [
        OrderStatusCodeData.pending,
      ],
    );
    final allowedStateForCancel = useMemoized(
      () => [
        OrderStatusCodeData.pending,
        OrderStatusCodeData.onHold,
        OrderStatusCodeData.waitingForAction,
      ],
    );

    return internalOrderInfo.when(
      data: (internalOrderInfo) {
        final orderStatusCode = OrderStatusCodeData.fromId(
            internalOrderInfo.internalOrder.statusCodeId);
        final backgroundAndForegroundColor =
            orderStatusCode.backgroundAndForegroundColor;
        return Scaffold(
          floatingActionButton: (allowedStateForAccept
                      .contains(orderStatusCode) ||
                  allowedStateForPause.contains(orderStatusCode) ||
                  allowedStateForCancel.contains(orderStatusCode))
              ? ExpandableFab(
                  distance: 112.0,
                  children: [
                    if (allowedStateForAccept.contains(orderStatusCode))
                      AcceptFAB(
                        onPressed: () => _onAccepted(context, ref),
                      ),
                    if (allowedStateForPause.contains(orderStatusCode))
                      PauseFAB(
                        onPressed: () => _onPaused(context: context, ref: ref),
                      ),
                    if (allowedStateForCancel.contains(orderStatusCode))
                      CancelFAB(
                        onPressed: () =>
                            _onCancelled(context: context, ref: ref),
                      ),
                  ],
                )
              : null,
          appBar: AppBar(
            title: const Text('Chi tiết đơn hàng nội bộ'),
          ),
          body: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  left: 8.0,
                  right: 8.0,
                  top: 8.0,
                  bottom: 80.0,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ListTile(
                      tileColor: backgroundAndForegroundColor.$1,
                      title: Text(
                          'Trạng thái: ${orderStatusCode.vietnameseLocalizationString}',
                          style:
                              Theme.of(context).textTheme.titleMedium?.copyWith(
                                    color: backgroundAndForegroundColor.$2,
                                  )),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Cập nhật lần cuối: ${internalOrderInfo.internalOrder.updated.formatDateTime()}',
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium
                                ?.copyWith(
                                  color: backgroundAndForegroundColor.$2,
                                ),
                          ),
                          if ([
                            OrderStatusCodeData.cancelled,
                            OrderStatusCodeData.onHold
                          ].contains(orderStatusCode))
                            Text(
                              'Ghi chú: ${internalOrderInfo.internalOrder.note}',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium
                                  ?.copyWith(
                                    color: backgroundAndForegroundColor.$2,
                                  ),
                            ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 8),
                    WarehouseAssignmnetInfoTile(
                        internalOrderId:
                            warehouseAssignmentInfo.internalOrder.id),
                    orderStatusCode != OrderStatusCodeData.processing
                        ? InternalOrderItemList(
                            internalOrderInfo: internalOrderInfo,
                          )
                        : ListTile(
                            tileColor: Colors.grey[200],
                            title: const Text('Chuẩn bị sản phẩm'),
                            trailing: const Icon(Icons.arrow_forward),
                            onTap: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) =>
                                      ProductPreparationScreen(
                                    warehouseAssignmentInfo:
                                        warehouseAssignmentInfo,
                                    internalOrderInfo: internalOrderInfo,
                                  ),
                                ),
                              );
                            },
                          ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
      error: (error, stackTrace) => Scaffold(
        appBar: AppBar(
          title: const Text('Chi tiết đơn hàng nội bộ'),
        ),
        body: Center(
          child: Column(
            children: [
              Text('Error: $error'),
            ],
          ),
        ),
      ),
      loading: () => Scaffold(
        appBar: AppBar(
          title: const Text('Chi tiết đơn hàng nội bộ'),
        ),
        body: const Center(
          child: CircularProgressIndicator(),
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
              warehouseAssignmentInfo.internalOrder.note?.isNotEmpty == true
                  ? Text(
                      warehouseAssignmentInfo.internalOrder.note!
                          .excerpt(maxLength: 16),
                    )
                  : const Text('Không có ghi chú'),
          children: [
            ListTile(
              title: Text(
                warehouseAssignmentInfo.internalOrder.note?.isNotEmpty == true
                    ? warehouseAssignmentInfo.internalOrder.note!
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
                return Column(
                  children: [
                    ListTile(
                      leading:
                          Image.network(categoryInfo.images.first.imageUrl),
                      title: Text(categoryInfo.category.name ?? ''),
                      subtitle: Row(
                        children: [
                          const Text('Màu: '),
                          Container(
                            width: 16,
                            height: 16,
                            decoration: BoxDecoration(
                              color:
                                  categoryInfo.colour.hexCode.tryParseColor(),
                              shape: BoxShape.circle,
                            ),
                          ),
                          const SizedBox(width: 8),
                          Text(categoryInfo.colour.hexCode),
                        ],
                      ),
                    ),
                    ListTile(
                      title: Text(
                        'Số lượng (m): ${item.internalOrderItem.qty?.formattedNumber ?? 0}',
                      ),
                      subtitle: Text(
                        'Số lượng (cuộn): ${item.internalOrderItem.rollQty?.formattedNumber ?? 0}',
                      ),
                    ),
                    const Divider(),
                  ],
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
