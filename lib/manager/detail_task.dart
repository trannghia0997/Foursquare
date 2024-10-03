import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:foursquare/riverpod/assignment.dart';
import 'package:foursquare/riverpod/internal_order.dart';
import 'package:foursquare/riverpod/invoice.dart';
import 'package:foursquare/riverpod/order.dart';
import 'package:foursquare/riverpod/product.dart';
import 'package:foursquare/riverpod/shipment.dart';
import 'package:foursquare/services/pb.dart';
import 'package:foursquare/shared/custom_list.dart';
import 'package:foursquare/shared/extension.dart';
import 'package:foursquare/shared/models/address.dart';
import 'package:foursquare/shared/models/data/invoice_status_code.dart';
import 'package:foursquare/shared/models/data/order_status_code.dart';
import 'package:foursquare/shared/models/enums/invoice_type.dart';
import 'package:foursquare/shared/models/invoice.dart';
import 'package:foursquare/shared/models/invoice_line_item.dart';
import 'package:foursquare/shared/models/order.dart';
import 'package:foursquare/shared/models/order_item.dart';
import 'package:foursquare/shared/widgets/common_fab.dart';
import 'package:foursquare/shared/widgets/expandable_fab.dart';
import 'package:foursquare/shared/widgets/expansion_tile.dart';
import 'package:foursquare/shared/widgets/order_item_tile.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ManagerDetailOrderScreen extends HookConsumerWidget {
  const ManagerDetailOrderScreen({super.key, required this.order});
  final OrderDto order;

  Future<void> _onCancelled({
    required BuildContext context,
    required WidgetRef ref,
    required OrderInfo orderInfo,
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
                    await PBApp.instance.collection('orders').update(
                          order.id,
                          body: orderInfo.order
                              .copyWith(
                                statusCodeId: OrderStatusCodeData.cancelled.id,
                                otherInfo: reason,
                              )
                              .toJson(),
                        );
                    ref.invalidate(allOrderInfoProvider);
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
    required OrderInfo orderInfo,
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
                    await PBApp.instance.collection('orders').update(
                          order.id,
                          body: orderInfo.order
                              .copyWith(
                                statusCodeId: OrderStatusCodeData.onHold.id,
                                otherInfo: reason,
                              )
                              .toJson(),
                        );
                    ref.invalidate(allOrderInfoProvider);
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
      BuildContext context, WidgetRef ref, OrderInfo orderInfo) async {
    final invoiceList =
        await ref.read(invoiceInfoByOrderIdProvider(order.id).future);
    if (!context.mounted) {
      return;
    }
    if (invoiceList.isEmpty) {
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: const Text('Thông báo'),
            content:
                const Text('Không tồn tại hóa đơn báo giá cho đơn hàng này'),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text('Đóng'),
              ),
            ],
          );
        },
      );
      return;
    }
    final firstInvoice = invoiceList.firstWhere(
      (element) => element.invoice.type == InvoiceType.proForma,
    );
    final invoiceEdit = InvoiceEditDto(
      totalAmount: orderInfo.orderItems
          .map((e) => e.unitPrice * e.orderedQty)
          .fold(0, (a, b) => a + b),
      type: InvoiceType.final_,
      paymentMethod: firstInvoice.invoice.paymentMethod,
      note: firstInvoice.invoice.note,
      orderId: order.id,
      statusCodeId: InvoiceStatusCodeData.sent.id,
    );
    final invoiceResponse = await PBApp.instance.collection('invoices').create(
          body: invoiceEdit.toJson(),
        );
    final invoiceItemList = orderInfo.orderItems.map((e) {
      final orderItem = e;
      return InvoiceLineItemEditDto(
        unitPrice: orderItem.unitPrice,
        invoiceId: invoiceResponse.id,
        orderItemId: orderItem.id,
      );
    }).toList();
    await Future.wait(
      invoiceItemList.map(
        (e) => PBApp.instance.collection('invoice_line_items').create(
              body: e.toJson(),
            ),
      ),
    );
    await PBApp.instance.collection('orders').update(
          order.id,
          body: orderInfo.order
              .copyWith(
                statusCodeId: OrderStatusCodeData.confirmed.id,
              )
              .toJson(),
        );
    ref.invalidate(allOrderInfoProvider);
    if (!context.mounted) {
      return;
    }
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final orderInfo = ref.watch(singleOrderInfoProvider(order.id));
    final assignmentInfo = ref.watch(AssignmentInfoByOrderProvider(order.id));
    return orderInfo.when(
      data: (orderInfoValue) {
        return assignmentInfo.when(
          data: (assignmentInfoValue) {
            return _buildOrderInfo(
              context,
              ref,
              orderInfo: orderInfoValue,
              warehouseAssignments: assignmentInfoValue.$1,
              shipmentAssignments: assignmentInfoValue.$2,
            );
          },
          loading: () => _buildBaseWidget(const Center(
            child: CircularProgressIndicator(),
          )),
          error: (error, _) => _buildBaseWidget(
            Center(
              child: Text(
                'Error: $error',
              ),
            ),
          ),
        );
      },
      loading: () => _buildBaseWidget(const Center(
        child: CircularProgressIndicator(),
      )),
      error: (error, _) => _buildBaseWidget(
        Center(
          child: Text(
            'Error: $error',
          ),
        ),
      ),
    );
  }

  Widget _buildBaseWidget(Widget? widget) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Thông tin đơn hàng',
          style: TextStyle(fontSize: 18),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: widget,
      ),
    );
  }

  Widget _buildOrderInfo(
    BuildContext context,
    WidgetRef ref, {
    required OrderInfo orderInfo,
    required List<WarehouseAssignmentInfo> warehouseAssignments,
    required List<ShipmentAssignmentInfo> shipmentAssignments,
  }) {
    final orderStatus =
        OrderStatusCodeData.fromId(orderInfo.order.statusCodeId);
    final statusText = orderStatus.vietnameseLocalizationString;
    final statusBackgroundAndForegroundColor =
        orderStatus.backgroundAndForegroundColor;
    final allowedStateForAccept = [
      OrderStatusCodeData.pending,
      OrderStatusCodeData.onHold,
    ];
    final allowedStateForPause = [
      OrderStatusCodeData.pending,
    ];
    final allowedStateForCancel = [
      OrderStatusCodeData.pending,
      OrderStatusCodeData.onHold,
    ];
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Thông tin đơn hàng',
          style: TextStyle(fontSize: 18),
        ),
        actions: [
          if (initialOrderStatusCodes.contains(orderStatus))
            PopupMenuButton<String>(
              menuPadding: const EdgeInsets.all(0),
              onSelected: (value) async {
                if (value == 'set_priority') {
                  await showDialog(
                    context: context,
                    builder: (context) {
                      return HookBuilder(
                        builder: (context) {
                          final priority =
                              useState(orderInfo.order.priority ?? 0);
                          return AlertDialog(
                            title: const Text('Thiết lập ưu tiên'),
                            content: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    IconButton(
                                      icon: const Icon(Icons.remove),
                                      onPressed: () {
                                        if (priority.value > 0) {
                                          priority.value--;
                                        }
                                      },
                                    ),
                                    Container(
                                      padding: const EdgeInsets.all(8.0),
                                      decoration: BoxDecoration(
                                        border: Border.all(color: Colors.grey),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      child: Text(
                                        '${priority.value}',
                                        style: const TextStyle(fontSize: 16),
                                      ),
                                    ),
                                    IconButton(
                                      icon: const Icon(Icons.add),
                                      onPressed: () {
                                        if (priority.value < 100) {
                                          priority.value++;
                                        }
                                      },
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            actions: [
                              TextButton(
                                onPressed: () async {
                                  final updatedOrder = orderInfo.order.copyWith(
                                    priority: priority.value,
                                  );
                                  await PBApp.instance
                                      .collection('orders')
                                      .update(
                                        orderInfo.order.id,
                                        body: updatedOrder.toJson(),
                                      );
                                  ref.invalidate(allOrderInfoProvider);
                                  if (!context.mounted) {
                                    return;
                                  }
                                  Navigator.of(context).pop();
                                },
                                child: const Text('Lưu'),
                              ),
                              TextButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                child: const Text('Hủy'),
                              ),
                            ],
                          );
                        },
                      );
                    },
                  );
                }
              },
              itemBuilder: (BuildContext context) {
                return [
                  const PopupMenuItem<String>(
                    value: 'set_priority',
                    child: Text('Thiết lập ưu tiên'),
                  ),
                ];
              },
              icon: const Icon(Icons.more_vert),
            ),
        ],
      ),
      floatingActionButton: (allowedStateForAccept.contains(orderStatus) ||
              allowedStateForPause.contains(orderStatus) ||
              allowedStateForCancel.contains(orderStatus))
          ? ExpandableFab(
              distance: 112,
              children: [
                if (allowedStateForAccept.contains(orderStatus))
                  AcceptFAB(
                    onPressed: () => _onAccepted(context, ref, orderInfo),
                  ),
                if (allowedStateForPause.contains(orderStatus))
                  PauseFAB(
                    onPressed: () => _onPaused(
                      context: context,
                      ref: ref,
                      orderInfo: orderInfo,
                    ),
                  ),
                if (allowedStateForCancel.contains(orderStatus))
                  CancelFAB(
                    onPressed: () => _onCancelled(
                      context: context,
                      ref: ref,
                      orderInfo: orderInfo,
                    ),
                  ),
              ],
            )
          : null,
      body: RefreshIndicator(
        onRefresh: () async {
          ref.invalidate(allOrderInfoProvider);
          ref.invalidate(invoiceInfoByOrderIdProvider(order.id));
          ref.invalidate(internalOrderInfoByOrderIdProvider(order.id));
          ref.invalidate(briefShipmentInfoByOrderIdProvider(order.id));
        },
        child: SingleChildScrollView(
          physics: const AlwaysScrollableScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.only(
              top: 16.0,
              left: 16.0,
              right: 16.0,
              bottom: 128.0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ListTile(
                  tileColor: statusBackgroundAndForegroundColor.$1,
                  title: Text(
                    'Trạng thái: $statusText',
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          color: statusBackgroundAndForegroundColor.$2,
                        ),
                  ),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Cập nhật lần cuối: ${orderInfo.order.updated.formattedDateTime}",
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                              color: statusBackgroundAndForegroundColor.$2,
                            ),
                      ),
                      if (orderInfo.order.statusCodeId ==
                          OrderStatusCodeData.cancelled.id)
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Text(
                            "Lý do hủy: ${orderInfo.order.otherInfo ?? 'Không có'}",
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium
                                ?.copyWith(
                                  color: statusBackgroundAndForegroundColor.$2,
                                ),
                          ),
                        ),
                    ],
                  ),
                ),
                Text(
                  "ID: ${orderInfo.order.id.toUpperCase()}",
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium
                      ?.copyWith(fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8),
                Text(
                  "Địa chỉ giao hàng: ${orderInfo.address.fullAddress}",
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                const SizedBox(height: 8),
                Text(
                  "Ngày tạo: ${orderInfo.order.created.formattedDateTime}",
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                const SizedBox(height: 8),
                Text(
                  "Lưu ý của khách hàng:",
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        color: Colors.grey[700],
                        fontWeight: FontWeight.bold,
                      ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 4.0),
                  child: Text(
                    orderInfo.order.note?.isNotEmpty == true
                        ? orderInfo.order.note!
                        : 'Không có',
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                          color: Colors.grey[700],
                        ),
                  ),
                ),
                const SizedBox(height: 16),
                ContactExpansionTile(orderInfo: orderInfo),
                ManagerOrderItemsExpansionTile(
                  orderInfo: orderInfo,
                ),
                InvoiceExpansionTile(orderInfo: orderInfo),
                InternalOrderExpansionTile(orderInfo: orderInfo),
                ShipmentExpansionTile(orderInfo: orderInfo),
                const SizedBox(height: 16),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.9,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      if (allowedStateForAccept.contains(orderStatus))
                        ElevatedButton.icon(
                          onPressed: () => _onAccepted(context, ref, orderInfo),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.green,
                            foregroundColor: Colors.white,
                            iconColor: Colors.white,
                          ),
                          icon: const Icon(Icons.check),
                          label: const Text('Xác nhận'),
                        ),
                      if (allowedStateForPause.contains(orderStatus))
                        ElevatedButton.icon(
                          onPressed: () => _onPaused(
                            context: context,
                            ref: ref,
                            orderInfo: orderInfo,
                          ),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                            foregroundColor: Colors.white,
                            iconColor: Colors.white,
                          ),
                          icon: const Icon(Icons.pause),
                          label: const Text('Treo'),
                        ),
                      if (allowedStateForCancel.contains(orderStatus))
                        ElevatedButton.icon(
                          onPressed: () => _onCancelled(
                            context: context,
                            ref: ref,
                            orderInfo: orderInfo,
                          ),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.red,
                            foregroundColor: Colors.white,
                            iconColor: Colors.white,
                          ),
                          icon: const Icon(Icons.cancel),
                          label: const Text('Hủy'),
                        ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ManagerOrderItemsExpansionTile extends HookConsumerWidget {
  const ManagerOrderItemsExpansionTile({super.key, required this.orderInfo});

  final OrderInfo orderInfo;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final categoryId =
        orderInfo.orderItems.map((e) => e.productCategoryId).toCustomList();
    final productCategoryInfo =
        ref.watch(batchProductCategoryInfoProvider(categoryId));
    final unitPriceController = useTextEditingController();
    final quantityController = useTextEditingController();
    final formKey = useMemoized(() => GlobalKey<FormState>());
    List<ProductCategoryInfo> productCategoryInfoList = [];
    switch (productCategoryInfo) {
      case AsyncLoading():
        return const Center(child: CircularProgressIndicator());
      case AsyncData(:final value):
        productCategoryInfoList = value;
        break;
      case AsyncError(:final error):
        return Center(child: Text('Error: $error'));
    }

    final orderItemEditList = orderInfo.orderItems
        .map((e) => OrderItemEditDto.fromJson(e.toJson()))
        .toList();
    final productQuantitySummaryView = ref
        .watch(
          batchProductQuantitySummaryViewByProductCategoryProvider(
            orderInfo.orderItems.map((e) => e.productCategoryId).toCustomList(),
          ),
        )
        .maybeWhen(
          data: (data) => data,
          orElse: () => null,
        );
    final servedOrderItems =
        orderInfo.orderItems.asMap().entries.where((entry) {
      final index = entry.key;
      final orderItem = entry.value;
      final productQuantitySummary = productQuantitySummaryView?[index];
      return productQuantitySummary != null &&
          productQuantitySummary.totalQty >= orderItem.orderedQty;
    });
    final orderStatus =
        OrderStatusCodeData.fromId(orderInfo.order.statusCodeId);

    return ExpansionTile(
      title: const Row(
        children: [
          Icon(Icons.list),
          SizedBox(width: 8),
          Text("Chi tiết đơn hàng"),
        ],
      ),
      subtitle: (initialOrderStatusCodes.contains(orderStatus))
          ? Text(
              'Số lượng sản phẩm: ${orderInfo.orderItems.length}, có đủ số lượng: ${servedOrderItems.length}',
            )
          : null,
      children: [
        ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: orderInfo.orderItems.length,
          itemBuilder: (context, index) {
            final productCategoryItem = productCategoryInfoList[index];
            final orderEditItem = orderItemEditList[index];
            final orderItem = orderInfo.orderItems[index];
            return OrderItemTile(
              isManager: true,
              isPriceVisible: true,
              shippedQtyShown: true,
              receivedQtyShown: true,
              productCategoryInfo: productCategoryItem,
              orderItemEdit: orderEditItem,
              trailing: (orderInfo.order.statusCodeId !=
                          OrderStatusCodeData.pending.id ||
                      orderInfo.order.statusCodeId !=
                          OrderStatusCodeData.onHold.id)
                  ? null
                  : IconButton(
                      icon: const Icon(Icons.edit),
                      onPressed: () {
                        showModalBottomSheet(
                          context: context,
                          isScrollControlled: true,
                          builder: (context) {
                            unitPriceController.text =
                                orderEditItem.unitPrice.toString();
                            quantityController.text =
                                orderEditItem.orderedQty.toInt().toString();
                            return Consumer(
                              builder: (BuildContext context, WidgetRef ref,
                                  Widget? child) {
                                final productQuantitySummary = ref.watch(
                                  productQuantitySummaryViewByProductCategoryProvider(
                                    orderEditItem.productCategoryId,
                                  ),
                                );
                                final productQuantityWidget =
                                    productQuantitySummary.when(
                                  data: (data) {
                                    return Text(
                                      'Số lượng trong kho: ${data?.totalQty.formattedNumber ?? 0} m',
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyMedium,
                                    );
                                  },
                                  error: (error, _) {
                                    return Text(
                                      'Không thể lấy dữ liệu',
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyMedium,
                                    );
                                  },
                                  loading: () {
                                    return const Text(
                                      'Đang tải...',
                                      style: TextStyle(fontSize: 16),
                                    );
                                  },
                                );
                                return Padding(
                                  padding: EdgeInsets.only(
                                    bottom: MediaQuery.of(context)
                                        .viewInsets
                                        .bottom,
                                    left: 16.0,
                                    right: 16.0,
                                    top: 16.0,
                                  ),
                                  child: Form(
                                    autovalidateMode:
                                        AutovalidateMode.onUserInteraction,
                                    key: formKey,
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Text(
                                          'Chỉnh sửa sản phẩm',
                                          style: Theme.of(context)
                                              .textTheme
                                              .titleMedium,
                                        ),
                                        const SizedBox(height: 16),
                                        Text(
                                          productCategoryItem.category.name ??
                                              '',
                                          style: Theme.of(context)
                                              .textTheme
                                              .titleLarge,
                                        ),
                                        const SizedBox(height: 16),
                                        productQuantityWidget,
                                        const SizedBox(height: 16),
                                        TextFormField(
                                          controller: quantityController,
                                          decoration: const InputDecoration(
                                            labelText: 'Số lượng',
                                            border: OutlineInputBorder(),
                                          ),
                                          keyboardType: TextInputType.number,
                                          validator: (value) {
                                            if (value == null ||
                                                value.isEmpty) {
                                              return 'Vui lòng nhập số lượng';
                                            }
                                            if (int.tryParse(value) == null ||
                                                int.tryParse(value)! <= 0) {
                                              return 'Số lượng không hợp lệ';
                                            }
                                            return null;
                                          },
                                        ),
                                        const SizedBox(height: 16),
                                        TextFormField(
                                          controller: unitPriceController,
                                          decoration: const InputDecoration(
                                            labelText: 'Đơn giá',
                                            border: OutlineInputBorder(),
                                          ),
                                          keyboardType: TextInputType.number,
                                          validator: (value) {
                                            if (value == null ||
                                                value.isEmpty) {
                                              return 'Vui lòng nhập đơn giá';
                                            }
                                            if (double.tryParse(value) ==
                                                    null ||
                                                double.tryParse(value)! <= 0) {
                                              return 'Đơn giá không hợp lệ';
                                            }
                                            return null;
                                          },
                                        ),
                                        const SizedBox(height: 16),
                                        ElevatedButton(
                                          onPressed: () async {
                                            if (formKey.currentState!
                                                .validate()) {
                                              final newQuantity = int.parse(
                                                  quantityController.text);
                                              final newPrice = double.parse(
                                                  unitPriceController.text);
                                              await PBApp.instance
                                                  .collection('order_items')
                                                  .update(
                                                    orderItem.id,
                                                    body: orderEditItem
                                                        .copyWith(
                                                          orderedQty:
                                                              newQuantity,
                                                          unitPrice: newPrice,
                                                        )
                                                        .toJson(),
                                                  );
                                              ref.invalidate(
                                                  allOrderInfoProvider);
                                              if (!context.mounted) {
                                                return;
                                              }
                                              Navigator.pop(context);
                                            }
                                          },
                                          child: const Text('Lưu'),
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              },
                            );
                          },
                        );
                      },
                    ),
            );
          },
        ),
      ],
    );
  }
}
