import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:foursquare/profile/pages/add_address.dart';
import 'package:foursquare/profile/pages/edit_name.dart';
import 'package:foursquare/profile/pages/edit_phone.dart';
import 'package:foursquare/riverpod/cart.dart';
import 'package:foursquare/riverpod/guest_info.dart';
import 'package:foursquare/riverpod/product.dart';
import 'package:foursquare/riverpod/user_address.dart';
import 'package:foursquare/services/pb.dart';
import 'package:foursquare/shared/extension.dart';
import 'package:foursquare/shared/models/address.dart';
import 'package:foursquare/shared/models/data/order_status_code.dart';
import 'package:foursquare/shared/models/enums/order_type.dart';
import 'package:foursquare/shared/models/enums/payment_method.dart';
import 'package:foursquare/shared/models/enums/user_role.dart';
import 'package:foursquare/shared/models/user.dart';
import 'package:foursquare/shared/models/user_address.dart';
import 'package:foursquare/shared/widgets/order_item_tile.dart';
import 'package:foursquare/shopper/salesperson/guest_form.dart';
import 'package:foursquare/shopper/salesperson/guest_search.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:foursquare/shared/numeric.dart';
import 'package:foursquare/shopper/payment_success.dart';

class PaymentScreen extends HookConsumerWidget {
  const PaymentScreen({super.key, required this.productCategoryInfos});

  final List<ProductCategoryInfo> productCategoryInfos;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final cartState = ref.watch(cartNotifierProvider);
    final selectedPaymentMethod = useState(PaymentMethod.cash);
    final scrollController = useScrollController();
    final noteController = useTextEditingController.fromValue(TextEditingValue(
      text: cartState.order.note ?? "",
    ));
    final userInfo = UserDto.fromRecord(PBApp.instance.authStore.model);

    Future<void> payAction() async {
      if (userInfo.role == UserRole.staff &&
          (cartState.order.guestId?.isEmpty ?? true)) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Vui lòng chọn khách hàng'),
          ),
        );
        return;
      }
      if (cartState.order.addressId.isEmpty) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Vui lòng chọn địa chỉ giao hàng'),
          ),
        );
        return;
      }
      ref
          .read(cartNotifierProvider.notifier)
          .updateOrder(cartState.order.copyWith(
            statusCodeId: OrderStatusCodeData.pending.id,
            type: OrderType.sale,
          ));
      ref.read(cartNotifierProvider.notifier).updateInvoice(
            cartState.invoice.copyWith(
              paymentMethod: selectedPaymentMethod.value,
            ),
          );
      await ref.read(cartNotifierProvider.notifier).createOrder();
      if (!context.mounted) return;
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => const PaymentSuccess()));
    }

    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: SizedBox(
        width: MediaQuery.of(context).size.width * 0.9,
        child: FloatingActionButton.extended(
          onPressed: () {
            payAction();
          },
          icon: const Icon(Icons.shopping_cart),
          label: const Text(
            'Đặt hàng',
          ),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          'Thanh toán',
          style: TextStyle(color: Colors.black),
        ),
        leading: const BackButton(
          color: Colors.black,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(
          bottom: MediaQuery.of(context).size.height *
              0.1, // Adjust padding to avoid FAB overlap
        ),
        child: ListView(
          padding: const EdgeInsets.all(16.0),
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.4,
              child: Scrollbar(
                controller: scrollController,
                thumbVisibility: true,
                child: ListView.separated(
                  controller: scrollController,
                  itemCount: cartState.orderItems.length,
                  itemBuilder: (context, index) {
                    final productCategoryInfo = productCategoryInfos[index];
                    return OrderItemTile(
                      productCategoryInfo: productCategoryInfo,
                      orderItemEdit: cartState.orderItems[index],
                    );
                  },
                  separatorBuilder: (context, index) => const Divider(),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Giá ước tính",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                ),
                Text("${formatNumber(cartState.totalAmount.toInt())} ₫",
                    style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue))
              ],
            ),
            const SizedBox(
              height: 32,
            ),
            ExpansionTile(
              title: Text(
                "Phương thức thanh toán: ${selectedPaymentMethod.value.vietnameseLocalization}",
                style:
                    const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              children: PaymentMethod.values.map((method) {
                return RadioListTile<PaymentMethod>(
                  title: Row(
                    children: [
                      Icon(
                        method.icon,
                      ),
                      const SizedBox(width: 10),
                      Text(method.vietnameseLocalization),
                    ],
                  ),
                  value: method,
                  groupValue: selectedPaymentMethod.value,
                  onChanged: (PaymentMethod? value) {
                    if (value != null) {
                      selectedPaymentMethod.value = value;
                    }
                  },
                );
              }).toList(),
            ),
            if (userInfo.role == UserRole.staff) const GuestInfoTile(),
            if (userInfo.role == UserRole.customer) const UserAddressTile(),
            if (userInfo.role == UserRole.customer) const UserInfoTile(),
            ExpansionTile(
              title: const Text(
                "Ghi chú",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
              ),
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: TextField(
                    controller: noteController,
                    maxLines: 3,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Thêm ghi chú cho đơn hàng của bạn',
                    ),
                    onChanged: (value) {
                      ref.read(cartNotifierProvider.notifier).updateOrder(
                            cartState.order.copyWith(note: value),
                          );
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class UserInfoTile extends StatelessWidget {
  const UserInfoTile({super.key});

  @override
  Widget build(BuildContext context) {
    final userInfo = UserDto.fromRecord(PBApp.instance.authStore.model);
    return ExpansionTile(
      title: const Text(
        "Thông tin liên hệ",
        style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
      ),
      children: [
        ListTile(
          title: const Text("Tên"),
          subtitle: Text(userInfo.name),
          trailing: IconButton(
            icon: const Icon(Icons.edit),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const EditNameFormPage(),
                ),
              );
            },
          ),
        ),
        ListTile(
          title: const Text("Số điện thoại"),
          subtitle: Text(userInfo.phone),
          trailing: IconButton(
            icon: const Icon(Icons.edit),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const EditPhoneFormPage(),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}

class UserAddressTile extends HookConsumerWidget {
  const UserAddressTile({super.key});

  ExpansionTile _buildBaseExpansionTile(List<Widget> children) {
    return ExpansionTile(
      title: const Text(
        "Địa chỉ: Chưa chọn",
        style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
      ),
      children: children,
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final cartState = ref.watch(cartNotifierProvider);
    final userAddressState = ref.watch(currentUserAddressWithAddressProvider);
    var userAddresses = <(UserAddressDto, AddressDto)>[];
    switch (userAddressState) {
      case AsyncLoading():
        return _buildBaseExpansionTile([
          const Center(
            child: CircularProgressIndicator(),
          ),
        ]);
      case AsyncData(:final value):
        userAddresses = value;
      case AsyncError(:final error):
        return _buildBaseExpansionTile([
          Center(
            child: Text('Error: $error'),
          ),
        ]);
    }
    final selectedAddress = userAddresses.where((element) {
      return element.$2.id == cartState.order.addressId;
    }).firstOrNull;

    return ExpansionTile(
      title: Text(
        "Địa chỉ: ${selectedAddress?.$2.fullAddress.excerpt(maxLength: 20) ?? "Chưa chọn"}",
        style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
      ),
      children: [
        ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: userAddresses.length,
          itemBuilder: (context, index) {
            final address = userAddresses[index];
            return RadioListTile(
              title: Text(address.$2.fullAddress),
              value: address,
              groupValue: selectedAddress,
              onChanged: (value) {
                if (value != null) {
                  ref.read(cartNotifierProvider.notifier).updateOrder(
                        cartState.order.copyWith(addressId: value.$2.id),
                      );
                }
              },
            );
          },
        ),
        ListTile(
          leading: const Icon(Icons.add),
          title: const Center(child: Text('Thêm địa chỉ mới')),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const AddressForm(),
              ),
            );
          },
        ),
      ],
    );
  }
}

class GuestInfoTile extends HookConsumerWidget {
  const GuestInfoTile({super.key});

  ExpansionTile _buildBaseExpansionTile(List<Widget>? children) {
    return ExpansionTile(
      title: const Text(
        "Khách hàng: Chưa chọn",
        style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
      ),
      children: children ?? const [],
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final guestInfoState = ref.watch(singleGuestInfoOrNullProvider(
      ref.watch(cartNotifierProvider).order.guestId ?? "",
    ));
    late final GuestInfo? guestInfo;
    switch (guestInfoState) {
      case AsyncLoading():
        return _buildBaseExpansionTile([]);
      case AsyncData(:final value):
        guestInfo = value;
      case AsyncError(:final error):
        return _buildBaseExpansionTile(
          [
            Center(
              child: Text('Error: $error'),
            ),
          ],
        );
    }
    return ExpansionTile(
      title: Text(
        "Khách hàng: ${guestInfo?.guest.name ?? "Chưa chọn"}",
        style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
      ),
      children: [
        if (guestInfo != null)
          ListTile(
            title: Text("${guestInfo.guest.name} (${guestInfo.guest.phone})"),
            subtitle: Text(guestInfo.address.fullAddress),
            trailing: IconButton(
              icon: const Icon(Icons.edit),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => GuestEditFormPage(
                      guestInfo: guestInfo,
                    ),
                  ),
                );
              },
            ),
          ),
        ListTile(
          leading: const Icon(Icons.add),
          title: const Center(child: Text('Thêm khách hàng mới')),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const GuestEditFormPage(),
              ),
            );
          },
        ),
        ListTile(
          leading: const Icon(Icons.search),
          title: const Center(child: Text('Tìm khách hàng')),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const GuestSearchPage(),
              ),
            );
          },
        ),
      ],
    );
  }
}
