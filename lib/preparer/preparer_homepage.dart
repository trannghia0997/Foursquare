import "package:flutter/material.dart";
import "package:flutter_hooks/flutter_hooks.dart";
import "package:foursquare/preparer/task.dart";
import "package:foursquare/preparer/warehouse.dart";
import "package:foursquare/profile/profile_page.dart";
import "package:foursquare/riverpod/staff_info.dart";
import "package:foursquare/services/pb.dart";
import "package:foursquare/shared/screen/notification.dart";
import "package:hooks_riverpod/hooks_riverpod.dart";

class WarehouseHomepage extends HookConsumerWidget {
  const WarehouseHomepage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentPageIndex = useState<int>(0);
    final isSearchBarVisible = useState<bool>(false);
    final staffInfoProvider = ref.watch(staffInfoByUserProvider(
      PBApp.instance.authStore.model.id,
    ));
    late final StaffInfo staffInfo;
    final result = staffInfoProvider.when(
      data: (data) {
        staffInfo = data;
      },
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (error, _) => Center(child: Text('Error: $error')),
    );
    if (result != null) {
      return result;
    }
    var containerList = <Widget>[
      Container(
        alignment: Alignment.center,
        child: TaskScreen(
          staffInfo: staffInfo.staff,
        ),
      ),
      Container(
        alignment: Alignment.center,
        child: WarehousePage(
          staffInfo: staffInfo,
        ),
      ),
      Container(
        alignment: Alignment.center,
        child: const NotificationScreen(),
      ),
      Container(
        alignment: Alignment.center,
        child: const ProfileScreen(),
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        title: isSearchBarVisible.value
            ? const TextField(
                decoration: InputDecoration(
                  hintText: 'Tìm kiếm sản phẩm...',
                ),
              )
            : const Text('Foursquare App'),
        centerTitle: true,
        // leading: IconButton(
        //   icon: const Icon(Icons.menu),
        //   onPressed: () {},
        // ),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              // Khi nhấn vào biểu tượng tìm kiếm, chuyển trạng thái để hiển thị thanh tìm kiếm
              isSearchBarVisible.value = !isSearchBarVisible.value;
            },
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'Nhiệm vụ',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Kho bãi',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications_outlined),
            label: 'Thông báo',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_outlined),
            label: 'Hồ sơ',
          ),
        ],
        currentIndex: currentPageIndex.value,
        selectedItemColor: Colors.blue[700],
        unselectedItemColor: Colors.grey,
        onTap: (int index) {
          currentPageIndex.value = index;
        },
      ),
      body: SafeArea(
        minimum: const EdgeInsets.only(
          left: 8.0,
          right: 8.0,
        ),
        child: containerList[currentPageIndex.value],
      ),
    );
  }
}

// Yêu cầu đặc biệt không đáp ứng được -> ghi lý do
// Đáp án được -> đơn hàng lấy hay ko?
// Lấy đơn được -> theo quy trình
// Thêm các ghi chú của khách, hình thức thanh toán -> shipper biết để thu tiền
// Báo danh mục chưa hoàn thành thì phải có nút riêng: chưa đủ đk khách, người chưa soạn tới, không đủ hàng
