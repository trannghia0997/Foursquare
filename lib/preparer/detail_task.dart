import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:foursquare/preparer/product_preparation.dart';
import 'package:foursquare/riverpod/assignment.dart';
import 'package:foursquare/riverpod/internal_order.dart';
import 'package:foursquare/services/pb.dart';
import 'package:foursquare/shared/models/data/order_status_code.dart';
import 'package:foursquare/shared/models/enums/assignment_status.dart';
import 'package:flutter/material.dart';
import 'package:foursquare/shared/widgets/common_fab.dart';
import 'package:foursquare/shared/widgets/expandable_fab.dart';
import 'package:foursquare/shared/widgets/expansion_tile.dart';
import 'package:foursquare/shared/widgets/list/internal_order_item_list.dart';
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
          body: RefreshIndicator.adaptive(
            onRefresh: () async {
              ref.invalidate(
                singleInternalOrderInfoProvider(
                    warehouseAssignmentInfo.internalOrder.id),
              );
            },
            child: ListView(
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
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium
                                ?.copyWith(
                                  color: backgroundAndForegroundColor.$2,
                                )),
                        subtitle: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Cập nhật lần cuối: ${internalOrderInfo.internalOrder.updated.formattedDateTime}',
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
                      if (internalOrderInfo.internalOrder.note?.isNotEmpty ==
                          true) ...[
                        const SizedBox(height: 8),
                        ListTile(
                          title: const Text('Ghi chú từ khách hàng'),
                          subtitle: Text(internalOrderInfo.internalOrder.note!),
                        ),
                      ],
                      WarehouseAssignmentInfoTile(
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
                                      internalOrderId:
                                          internalOrderInfo.internalOrder.id,
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
