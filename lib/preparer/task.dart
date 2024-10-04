import 'package:foursquare/riverpod/assignment.dart';
import 'package:foursquare/services/pb.dart';
import 'package:foursquare/shared/extension.dart';
import 'package:foursquare/shared/image.dart';
import 'package:foursquare/shared/models/data/order_status_code.dart';
import 'package:foursquare/shared/models/staff_info.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:foursquare/shared/models/user.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'detail_task.dart';

final initialInternalOrderStatus = [
  OrderStatusCodeData.pending,
  OrderStatusCodeData.onHold,
];

final workingInternalOrderStatus = [
  OrderStatusCodeData.processing,
  OrderStatusCodeData.waitingForAction,
];

final completedInternalOrderStatus = [
  OrderStatusCodeData.shipped,
];
final cancelledInternalOrderStatus = [
  OrderStatusCodeData.cancelled,
];

class TaskScreen extends HookConsumerWidget {
  const TaskScreen({super.key, required this.staffInfo});

  final StaffInfoDto staffInfo;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tabController = useTabController(initialLength: 4);
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: 0,
        bottom: TabBar(
          controller: tabController,
          tabs: const <Widget>[
            Tab(
              icon: Icon(Icons.shopping_bag_outlined),
              text: 'Chưa soạn',
            ),
            Tab(
              icon: Icon(Icons.shopping_cart_checkout_outlined),
              text: 'Đang chuẩn bị',
            ),
            Tab(
              icon: Icon(Icons.playlist_add_check_outlined),
              text: 'Hoàn thành',
            ),
            Tab(
              icon: Icon(Icons.cancel_presentation_outlined),
              text: 'Hủy',
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: tabController,
        children: [
          buildOrderList(
            context,
            ref,
            internalOrderStatus: initialInternalOrderStatus,
          ),
          buildOrderList(
            context,
            ref,
            internalOrderStatus: workingInternalOrderStatus,
          ),
          buildOrderList(
            context,
            ref,
            internalOrderStatus: completedInternalOrderStatus,
          ),
          buildOrderList(
            context,
            ref,
            internalOrderStatus: cancelledInternalOrderStatus,
          )
        ],
      ),
    );
  }

  Widget buildOrderList(
    BuildContext context,
    WidgetRef ref, {
    required List<OrderStatusCodeData> internalOrderStatus,
  }) {
    final user = PBApp.instance.authStore.model == null
        ? null
        : UserDto.fromRecord(PBApp.instance.authStore.model!);
    final assignmentByUserId = ref.watch(warehouseAssignmentInfoByUserProvider(
      user?.id ?? '',
    ));
    late final List<WarehouseAssignmentInfo> assignmentList;
    switch (assignmentByUserId) {
      case AsyncLoading():
        return const Center(
          child: CircularProgressIndicator(),
        );
      case AsyncError(:final error):
        return Center(
          child: Text('Error: $error'),
        );
      case AsyncData(:final value):
        assignmentList = value;
        break;
    }
    final filteredAssignment = assignmentList.where((item) {
      final statusCode =
          OrderStatusCodeData.fromId(item.internalOrder.statusCodeId);
      return internalOrderStatus.contains(statusCode);
    }).toList();

    return RefreshIndicator.adaptive(
      onRefresh: () async {
        ref.invalidate(warehouseAssignmentInfoByUserProvider);
      },
      child: ListView.builder(
        itemCount: filteredAssignment.length,
        itemBuilder: (context, index) {
          final warehouseAssignmentInfo = filteredAssignment[index];
          return Column(
            children: [
              ListTile(
                leading: SizedBox(
                  width: 125,
                  child: Image.network(
                    getPicsumImageUrlById(
                      id: warehouseAssignmentInfo.internalOrder.id.hashCode,
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
                title: Text(
                  "ID: ${warehouseAssignmentInfo.internalOrder.id.toUpperCase()}",
                ),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "ID đơn hàng gốc: ${warehouseAssignmentInfo.internalOrder.rootOrderId.toUpperCase()}",
                    ),
                    Text(
                      "Ngày giao việc: ${warehouseAssignmentInfo.warehouseAssignment.created.formattedDateTime}",
                    ),
                  ],
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => InternalOrderTaskDetailsPage(
                        warehouseAssignmentInfo: warehouseAssignmentInfo,
                      ),
                    ),
                  );
                },
              ),
              const Divider(),
            ],
          );
        },
      ),
    );
  }
}
