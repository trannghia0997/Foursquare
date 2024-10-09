import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:foursquare/riverpod/assignment.dart';
import 'package:foursquare/riverpod/product.dart';
import 'package:foursquare/riverpod/shipment.dart';
import 'package:foursquare/services/pb.dart';
import 'package:foursquare/shared/custom_list.dart';
import 'package:foursquare/shared/extension.dart';
import 'package:foursquare/shared/image.dart';
import 'package:foursquare/shared/models/address.dart';
import 'package:foursquare/shared/models/data/shipment_status_code.dart';
import 'package:foursquare/shared/models/enums/assignment_status.dart';
import 'package:foursquare/shared/models/enums/shipment_type.dart';
import 'package:foursquare/shared/screen/invoice_details.dart';
import 'package:foursquare/shipper/shared/fab.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class DeliveryTaskDetailsPage extends HookConsumerWidget {
  const DeliveryTaskDetailsPage({
    required this.shipmentId,
    required this.shipmentAssignmentInfo,
    super.key,
  });

  final String shipmentId;
  final ShipmentAssignmentInfo shipmentAssignmentInfo;

  Widget _buildBaseWidget(Widget? child, WidgetRef ref) => Scaffold(
        appBar: AppBar(
          title: const Text('Thông tin lô hàng'),
        ),
        body: RefreshIndicator.adaptive(
          onRefresh: () async {
            ref.invalidate(singleShipmentInfoProvider(shipmentId));
          },
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: child,
          ),
        ),
      );

  Widget? _buildFAB() {
    final statusCode = ShipmentStatusCodeData.fromId(
      shipmentAssignmentInfo.shipment.statusCodeId,
    );
    switch (statusCode) {
      case ShipmentStatusCodeData.pending:
      case ShipmentStatusCodeData.processed:
        return null;
      case ShipmentStatusCodeData.shipped:
      case ShipmentStatusCodeData.failedDeliveryAttempt:
        return OutForDeliveryFAB(
          shipmentAssignmentInfo: shipmentAssignmentInfo,
        );
      case ShipmentStatusCodeData.inTransit:
      case ShipmentStatusCodeData.outForDelivery:
        return SuccessDeliveryFAB(
          shipmentAssignmentInfo: shipmentAssignmentInfo,
        );
      case ShipmentStatusCodeData.delivered:
      case ShipmentStatusCodeData.returned:
      case ShipmentStatusCodeData.cancelled:
      case ShipmentStatusCodeData.onHold:
      default:
        return null;
    }
  }

  Widget? _buildPopUpMenu(BuildContext context, WidgetRef ref) {
    // Check shipment status
    final statusCode = ShipmentStatusCodeData.fromId(
      shipmentAssignmentInfo.shipment.statusCodeId,
    );
    if ([
      ShipmentStatusCodeData.delivered,
      ShipmentStatusCodeData.cancelled,
      ShipmentStatusCodeData.returned,
    ].contains(
      statusCode,
    )) {
      return null;
    }
    return PopupMenuButton(
      menuPadding: const EdgeInsets.all(0),
      itemBuilder: (context) {
        return [
          if ([
            ShipmentStatusCodeData.outForDelivery,
            ShipmentStatusCodeData.inTransit
          ].contains(statusCode))
            const PopupMenuItem(
              value: 0,
              child: ListTile(
                title: Text('Báo cáo vấn đề vận chuyển'),
                leading: Icon(Icons.report_outlined),
              ),
            ),
          const PopupMenuItem(
            value: 1,
            child: ListTile(
              title: Text('Hủy bỏ'),
              leading: Icon(Icons.cancel_outlined),
            ),
          ),
        ];
      },
      onSelected: (int value) async {
        if (value > 2) {
          return;
        }
        if (value == 0) {
          final reason = await showDialog<String>(
            context: context,
            builder: (BuildContext context) {
              return HookBuilder(
                builder: (BuildContext context) {
                  final reasonController = useTextEditingController();
                  return AlertDialog(
                    title: const Text('Báo cáo vấn đề vận chuyển'),
                    content: TextField(
                      controller: reasonController,
                      decoration: const InputDecoration(
                        hintText: 'Nhập lý do',
                      ),
                    ),
                    actions: <Widget>[
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pop('');
                        },
                        child: const Text('Hủy'),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pop(reasonController.text);
                        },
                        child: const Text('Gửi'),
                      ),
                    ],
                  );
                },
              );
            },
          );
          if (reason != null && reason.isNotEmpty) {
            await PBApp.instance.collection('shipments').update(
                  shipmentId,
                  body: shipmentAssignmentInfo.shipment
                      .copyWith(
                        statusCodeId:
                            ShipmentStatusCodeData.failedDeliveryAttempt.id,
                      )
                      .toJson(),
                );
            await PBApp.instance.collection('shipment_assignments').update(
                  shipmentAssignmentInfo.shipmentAssignment.id,
                  body: shipmentAssignmentInfo.shipmentAssignment
                      .copyWith(
                        status: AssignmentStatus.failed,
                        note: reason,
                      )
                      .toJson(),
                );
            if (!context.mounted) {
              return;
            }
            Navigator.of(context).pop();
            return;
          }
        } else if (value == 1) {
          final reason = await showDialog<String>(
            context: context,
            builder: (BuildContext context) {
              return HookBuilder(
                builder: (BuildContext context) {
                  final reasonController = useTextEditingController();
                  return AlertDialog(
                    title: const Text('Hủy bỏ lô hàng'),
                    content: TextField(
                      controller: reasonController,
                      decoration: const InputDecoration(
                        hintText: 'Nhập lý do',
                      ),
                    ),
                    actions: <Widget>[
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: const Text('Hủy'),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pop(reasonController.text);
                        },
                        child: const Text('Gửi'),
                      ),
                    ],
                  );
                },
              );
            },
          );
          if (reason != null && reason.isNotEmpty) {
            await PBApp.instance.collection('shipments').update(
                  shipmentId,
                  body: shipmentAssignmentInfo.shipment
                      .copyWith(
                        statusCodeId: ShipmentStatusCodeData.cancelled.id,
                      )
                      .toJson(),
                );
            await PBApp.instance.collection('shipment_assignments').update(
                  shipmentAssignmentInfo.shipmentAssignment.id,
                  body: shipmentAssignmentInfo.shipmentAssignment
                      .copyWith(
                        status: AssignmentStatus.cancelled,
                        note: reason,
                      )
                      .toJson(),
                );
            if (!context.mounted) {
              return;
            }
            Navigator.of(context).pop();
            return;
          }
        }
      },
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    late final ShipmentInfo shipmentInfo;
    final shipmentInfoAsync = ref.watch(singleShipmentInfoProvider(shipmentId));
    switch (shipmentInfoAsync) {
      case AsyncLoading():
        return _buildBaseWidget(
          const Center(
            child: CircularProgressIndicator(),
          ),
          ref,
        );
      case AsyncData(value: final value):
        shipmentInfo = value;
      case AsyncError(:final error):
        return _buildBaseWidget(
          Center(
            child: Text('Error: $error'),
          ),
          ref,
        );
    }

    final productCategoryInfo = ref.watch(batchProductCategoryInfoProvider(
      shipmentInfo.orderInfo.orderItems
          .map((e) => e.productCategoryId)
          .toCustomList(),
    ));
    var productCategoryList = <ProductCategoryInfo>[];
    switch (productCategoryInfo) {
      case AsyncLoading():
        return _buildBaseWidget(
          const Center(child: CircularProgressIndicator()),
          ref,
        );
      case AsyncData(:final value):
        productCategoryList = value;
      case AsyncError(:final error):
        return _buildBaseWidget(
          Center(child: Text('Error: $error')),
          ref,
        );
    }
    final shipmentStatus = ShipmentStatusCodeData.fromId(
      shipmentInfo.shipment.statusCodeId,
    );
    late final String shipmentDate;
    if (shipmentInfo.shipment.shipmentDate != null &&
        shipmentInfo.shipment.shipmentDate!.millisecondsSinceEpoch == 0) {
      shipmentDate = 'Chưa xác định';
    } else {
      shipmentDate = shipmentInfo.shipment.shipmentDate?.formattedDateTime ??
          'Chưa xác định';
    }
    late final String deliveryDate;
    if (shipmentInfo.shipment.deliveryDate != null &&
        shipmentInfo.shipment.deliveryDate!.millisecondsSinceEpoch == 0) {
      deliveryDate = 'Chưa xác định';
    } else {
      deliveryDate =
          shipmentInfo.shipment.deliveryDate?.formattedDate ?? 'Chưa xác định';
    }

    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: _buildFAB(),
      appBar: AppBar(
        title: const Text('Thông tin lô hàng'),
        actions: [
          _buildPopUpMenu(context, ref) ?? const SizedBox.shrink(),
        ],
      ),
      body: RefreshIndicator.adaptive(
        onRefresh: () async {
          ref.invalidate(singleShipmentInfoProvider(shipmentId));
        },
        child: Padding(
          padding: const EdgeInsets.only(
            left: 8.0,
            right: 8.0,
            top: 8.0,
            bottom: 80.0,
          ),
          child: ListView(
            children: [
              ListTile(
                tileColor: shipmentStatus.backgroundAndForegroundColor.$1,
                title: Text(
                  'Trạng thái: ${shipmentStatus.vietnameseLocalizationString}',
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        color: shipmentStatus.backgroundAndForegroundColor.$2,
                      ),
                ),
                subtitle: Text(
                  'Cập nhật lần cuối: ${shipmentInfo.shipment.updated.formattedDateTime}',
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: shipmentStatus.backgroundAndForegroundColor.$2,
                      ),
                ),
              ),
              ListTile(
                leading: const Icon(Icons.date_range),
                title: const Text('Ngày giao hàng dự kiến'),
                subtitle: Text(
                  deliveryDate,
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                tileColor: Colors.grey.shade300,
                trailing: [
                  ShipmentStatusCodeData.delivered,
                  ShipmentStatusCodeData.cancelled,
                  ShipmentStatusCodeData.returned,
                ].contains(
                  shipmentStatus,
                )
                    ? null
                    : const Icon(Icons.edit),
                onTap: () async {
                  if ([
                    ShipmentStatusCodeData.delivered,
                    ShipmentStatusCodeData.cancelled,
                    ShipmentStatusCodeData.returned,
                  ].contains(
                    shipmentStatus,
                  )) {
                    return;
                  }
                  final DateTime? pickedDate = await showDatePicker(
                    context: context,
                    initialDate:
                        shipmentInfo.shipment.deliveryDate ?? DateTime.now(),
                    firstDate: DateTime.now(),
                    lastDate: DateTime(2101),
                    locale: const Locale('vi', 'VN'),
                  );
                  if (pickedDate != null) {
                    await PBApp.instance.collection('shipments').update(
                          shipmentId,
                          body: shipmentInfo.shipment
                              .copyWith(
                                deliveryDate: pickedDate,
                              )
                              .toJson(),
                        );
                    final _ =
                        ref.refresh(singleShipmentInfoProvider(shipmentId));
                  }
                },
              ),
              if (shipmentInfo.shipment.note?.isNotEmpty == true) ...[
                ListTile(
                  leading: const Icon(Icons.note),
                  title: const Text('Ghi chú từ khách hàng'),
                  subtitle: Text(shipmentInfo.shipment.note!),
                ),
              ],
              ListTile(
                leading: const Icon(Icons.money),
                title: const Text('Số tiền cần thu'),
                subtitle: Text(
                  "${(shipmentInfo.invoice.totalAmount - (shipmentInfo.invoice.paidAmount ?? 0)).formattedNumber} ₫",
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
              ),
              ShipmentAssignmentInfoTile(shipmentId: shipmentId),
              ExpansionTile(
                leading: const Icon(Icons.info),
                title: Text(
                  'Thông tin lô hàng',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                children: [
                  ListTile(
                    leading: const Icon(Icons.info),
                    title: Text(
                      'ID lô hàng: ${shipmentInfo.shipment.id.toUpperCase()}',
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'ID đơn hàng: ${shipmentInfo.orderInfo.order.id.toUpperCase()}',
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                        Text(
                          'Loại lô hàng: ${shipmentInfo.shipment.type.vietnameseLocalizationString}',
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                      ],
                    ),
                  ),
                  ListTile(
                    leading: const Icon(Icons.date_range),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Ngày tạo: ${shipmentInfo.shipment.created.formattedDateTime}',
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                        Text(
                          'Ngày rời kho: $shipmentDate',
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                      ],
                    ),
                  ),
                  ListTile(
                    tileColor: Colors.grey.shade200,
                    leading: const Icon(Icons.receipt),
                    title: Text(
                        'Hóa đơn ${shipmentInfo.invoice.id.toUpperCase()}'),
                    subtitle: const Text('Chi tiết hóa đơn'),
                    trailing: const Icon(Icons.arrow_forward),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => InvoiceInfoPage(
                              invoiceId: shipmentInfo.invoice.id),
                        ),
                      );
                    },
                  ),
                ],
              ),
              ExpansionTile(
                leading: const Icon(Icons.local_shipping),
                title: Text(
                  'Thông tin vận chuyển',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                children: [
                  ListTile(
                    leading: const Icon(Icons.person),
                    title: Text(
                      'Khách hàng: ${shipmentInfo.orderInfo.guest?.name ?? shipmentInfo.orderInfo.creator.name}',
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    subtitle: Text(
                      'Số điện thoại: ${shipmentInfo.orderInfo.guest?.phone ?? shipmentInfo.orderInfo.creator.phone}',
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                  ),
                  ListTile(
                    leading: const Icon(Icons.location_on),
                    title: Text(
                      'Địa chỉ: ${shipmentInfo.orderInfo.address.fullAddress}',
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                  ),
                ],
              ),
              if (shipmentInfo.items.isNotEmpty) ...[
                ExpansionTile(
                  leading: const Icon(Icons.list),
                  title: const Text('Danh sách sản phẩm'),
                  subtitle:
                      Text('Tổng số sản phẩm: ${shipmentInfo.items.length}'),
                  children: [
                    ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: shipmentInfo.items.length,
                      itemBuilder: (context, index) {
                        final shipmentItem = shipmentInfo.items[index].$1;
                        return Column(
                          children: [
                            ListTile(
                              leading: Image.network(
                                productCategoryList[index]
                                        .images
                                        .firstOrNull
                                        ?.imageUrl ??
                                    generatePlaceholderImage().toString(),
                                width: 50,
                                height: 50,
                                fit: BoxFit.cover,
                              ),
                              title: Text(
                                productCategoryList[index].category.name ?? '',
                              ),
                              subtitle: Text(
                                  'Mã sản phẩm: ${productCategoryList[index].category.id.toUpperCase()}'),
                            ),
                            ListTile(
                              title: Text(
                                'Lượng: ${shipmentItem.qty.formattedNumber} m, Cuộn: ${shipmentItem.rollQty?.formattedNumber ?? '0'}',
                              ),
                            ),
                            const Divider(),
                          ],
                        );
                      },
                    ),
                  ],
                ),
              ]
            ],
          ),
        ),
      ),
    );
  }
}

class ShipmentAssignmentInfoTile extends HookConsumerWidget {
  const ShipmentAssignmentInfoTile({super.key, required this.shipmentId});

  final String shipmentId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final shipmentAssignmentInfoState =
        ref.watch(shipmentAssignmentInfoByShipmentIdProvider(shipmentId));
    final shipmentAssignmentInfo = shipmentAssignmentInfoState
        .maybeWhen(
          data: (shipmentAssignmentInfo) => shipmentAssignmentInfo,
          orElse: () => null,
        )
        ?.firstOrNull;
    if (shipmentAssignmentInfo == null) {
      return const SizedBox.shrink();
    }
    final staffNote =
        shipmentAssignmentInfo.shipmentAssignment.note?.isEmpty == true
            ? 'Không có ghi chú'
            : shipmentAssignmentInfo.shipmentAssignment.note!;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ExpansionTile(
          leading: const Icon(Icons.assignment_ind),
          title: const Text('Chi tiết phân công'),
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Trạng thái: '
                '${shipmentAssignmentInfo.shipmentAssignment.status.vietnameseLocalizationString}',
              ),
              Text(
                'Ghi chú: '
                '$staffNote',
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              )
            ],
          ),
          children: [
            ListTile(
              title: Text(
                  'Nhân viên: ${shipmentAssignmentInfo.staffInfo?.user.name ?? ''}'),
              subtitle: Text(
                  'Mã nhân viên: ${shipmentAssignmentInfo.staffInfo?.staff.id.toUpperCase()}'),
            ),
            ListTile(
              title: const Text(
                'Đơn vị làm việc',
              ),
              subtitle: Text(
                shipmentAssignmentInfo.staffInfo?.workingUnit.name ?? '',
              ),
            ),
            ListTile(
              title: const Text(
                'Ngày phân công',
              ),
              subtitle: Text(
                shipmentAssignmentInfo
                    .shipmentAssignment.created.formattedDateTime,
              ),
            ),
            ListTile(
              title: const Text('Ghi chú từ nhân viên'),
              subtitle: Text(
                staffNote,
              ),
            ),
            const SizedBox(height: 8),
          ],
        ),
      ],
    );
  }
}
