import 'package:foursquare/riverpod/assignment.dart';
import 'package:foursquare/services/pb.dart';
import 'package:foursquare/shared/image.dart';
import 'package:foursquare/shared/models/data/order_status_code.dart';
import 'package:foursquare/shared/models/enums/assignment_status.dart';
import 'package:foursquare/shared/models/staff_info.dart';
import 'package:foursquare/shared/product_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'detail_task.dart';

class TaskScreen extends HookConsumerWidget {
  const TaskScreen({super.key, required this.staffInfo});

  final StaffInfoDto staffInfo;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tabController = useTabController(initialLength: 4);
    final userId = useState(PBApp.instance.authStore.model.id);
    final assignmentByUserId = ref.watch(warehouseAssignmentInfoByUserProvider(
      userId.value,
    ));

    List<WarehouseAssignmentInfo> assignmentList = [];

    useEffect(() {
      final sub = PBApp.instance.authStore.onChange.listen((event) {
        userId.value = event.model?.id;
      });
      return sub.cancel;
    }, [PBApp.instance.authStore.onChange]);
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
            assignmentList,
            status: OrderStatusCodeData.processing,
            processingStatus: AssignmentStatus.assigned,
          ),
          buildOrderList(
            context,
            ref,
            assignmentList,
            status: OrderStatusCodeData.processing,
            processingStatus: AssignmentStatus.inProgress,
          ),
          buildOrderList(
            context,
            ref,
            assignmentList,
            status: OrderStatusCodeData.processing,
            processingStatus: AssignmentStatus.completed,
          ),
          buildOrderList(
            context,
            ref,
            assignmentList,
            status: OrderStatusCodeData.cancelled,
            processingStatus: AssignmentStatus.cancelled,
          )
        ],
      ),
    );
  }

  Widget buildOrderList(
    BuildContext context,
    WidgetRef ref,
    List<WarehouseAssignmentInfo> assignmentList, {
    required OrderStatusCodeData status,
    required AssignmentStatus processingStatus,
  }) {
    final filteredAssignment = assignmentList
        .where(
          (item) => item.warehouseAssignment.status == processingStatus,
        )
        .toList();

    return RefreshIndicator.adaptive(
      onRefresh: () async {
        ref.invalidate(warehouseAssignmentInfoByUserProvider(
            PBApp.instance.authStore.model.id));
      },
      child: ListView.builder(
        itemCount: filteredAssignment.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              SystemSound.play(SystemSoundType.click);
              _pushScreen(
                context: context,
                warehouseAssignmentInfo: filteredAssignment[index],
              );
            },
            child: SizedBox(
              child: Row(
                children: [
                  SizedBox(
                    width: 125,
                    child: ProductImage(
                      imageUrl: generateRandomImage(
                        seed: filteredAssignment[index].internalOrder.id,
                      ),
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
                          "ID: ${filteredAssignment[index].internalOrder.id}",
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Text(
                          "ID gốc: ${filteredAssignment[index].internalOrder.rootOrderId}",
                        ),
                        // TODO: Add other information or widgets related to internal order
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

void _pushScreen({
  required BuildContext context,
  required WarehouseAssignmentInfo warehouseAssignmentInfo,
}) {
  ThemeData themeData = Theme.of(context);
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (_) => Theme(
        data: themeData,
        child:
            DetailTaskScreen(warehouseAssignmentInfo: warehouseAssignmentInfo),
      ),
    ),
  );
}
