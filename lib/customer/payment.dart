import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:foursquare/riverpod/cart.dart';
import 'package:foursquare/riverpod/user_address.dart';
import 'package:foursquare/shared/extension.dart';
import 'package:foursquare/shared/models/address.dart';
import 'package:foursquare/shared/models/data/order_status_code.dart';
import 'package:foursquare/shared/models/enums/order_type.dart';
import 'package:foursquare/shared/models/enums/payment_method.dart';
import 'package:foursquare/shared/models/user_address.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:foursquare/shared/numeric.dart';
import 'package:foursquare/shared/animation.dart';
import 'package:foursquare/customer/payment_success.dart';
import 'package:foursquare/customer/select_address.dart';

class PaymentScreen extends HookConsumerWidget {
  const PaymentScreen({super.key, required this.paymentCost});
  final int paymentCost;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final cartState = ref.watch(cartNotifierProvider);
    var activeCard = useState(0);
    var selectedPaymentMethod = useState(PaymentMethod.cash);
    var userAddress = ref.watch(currentUserAddressWithAddressProvider);
    var userAddresses = <(UserAddressDto, AddressDto)>[];
    switch (userAddress) {
      case AsyncLoading():
        return const Center(child: CircularProgressIndicator());
      case AsyncData(:final value):
        userAddresses = value;
      case AsyncError(:final error):
        return Center(child: Text('Error: $error'));
    }
    final selectedAddress = userAddresses.where((element) {
      return element.$1.id == cartState.order.addressId;
    }).firstOrNull;
    Future<void> payAction() async {
      ref
          .read(cartNotifierProvider.notifier)
          .updateOrder(cartState.order.copyWith(
            statusCodeId: OrderStatusCodeData.pending.id,
            type: OrderType.sale,
          ));
      await ref.read(cartNotifierProvider.notifier).createOrder();
      if (!context.mounted) return;
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => const PaymentSuccess()));
    }

    return Scaffold(
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
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Payment Method 1
                if (activeCard.value == 0)
                  FadeAnimation(
                      1.2,
                      AnimatedOpacity(
                        duration: const Duration(milliseconds: 500),
                        opacity: activeCard.value == 0 ? 1 : 0,
                        child: Container(
                          width: double.infinity,
                          height: 200,
                          padding: const EdgeInsets.all(20.0),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              gradient: LinearGradient(
                                colors: [
                                  Colors.green,
                                  Colors.green.shade400,
                                  Colors.green.shade800,
                                ],
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                              )),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  "Credit Card",
                                  style: TextStyle(color: Colors.white),
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      "**** **** **** 7890",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 30),
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        const Text(
                                          "theflutterlover",
                                          style: TextStyle(color: Colors.white),
                                        ),
                                        Image.network(
                                            'https://img.icons8.com/color/2x/mastercard-logo.png',
                                            height: 50),
                                      ],
                                    )
                                  ],
                                )
                              ]),
                        ),
                      ))

                // Payment Method 2
                else if (activeCard.value == 1)
                  FadeAnimation(
                      1.2,
                      AnimatedOpacity(
                        duration: const Duration(milliseconds: 500),
                        opacity: activeCard.value == 1 ? 1 : 0,
                        child: Container(
                          width: double.infinity,
                          height: 200,
                          padding: const EdgeInsets.all(30.0),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              // color: Colors.grey.shade200
                              gradient: LinearGradient(
                                colors: [
                                  Colors.grey.shade200,
                                  Colors.grey.shade100,
                                  Colors.grey.shade200,
                                  Colors.grey.shade300,
                                ],
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                              )),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Image.network(
                                        'https://img.icons8.com/ios/2x/mac-os.png',
                                        height: 50),
                                    const SizedBox(
                                      height: 30,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        const Text(
                                          "Minh Nghia with Love",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 18),
                                        ),
                                        Image.network(
                                          'https://img.icons8.com/ios/2x/sim-card-chip.png',
                                          height: 35,
                                        ),
                                      ],
                                    )
                                  ],
                                )
                              ]),
                        ),
                      )),

                // Payment Method 3
                if (activeCard.value == 2)
                  FadeAnimation(
                      1.2,
                      AnimatedOpacity(
                        duration: const Duration(milliseconds: 500),
                        opacity: activeCard.value == 2 ? 1 : 0,
                        child: Container(
                          width: double.infinity,
                          height: 200,
                          padding: const EdgeInsets.all(30.0),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              // color: Colors.grey.shade200
                              gradient: LinearGradient(
                                colors: [
                                  Colors.grey.shade200,
                                  Colors.grey.shade100,
                                  Colors.grey.shade200,
                                  Colors.grey.shade300,
                                ],
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                              )),
                          child: const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                    'Bạn lựa chọn hình thức thanh toán sau khi nhận hàng')
                              ]),
                        ),
                      )),
                const SizedBox(
                  height: 50,
                ),
                const FadeAnimation(
                    1.2,
                    Text(
                      "Phương thức thanh toán",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    )),
                const SizedBox(
                  height: 20,
                ),

                // Pay with credit card
                FadeAnimation(
                    1.3,
                    Row(children: [
                      GestureDetector(
                        onTap: () {
                          activeCard.value = 0;
                          selectedPaymentMethod.value =
                              PaymentMethod.creditCard;
                        },
                        child: AnimatedContainer(
                          duration: const Duration(milliseconds: 300),
                          margin: const EdgeInsets.only(right: 10),
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(18),
                            border: activeCard.value == 0
                                ? Border.all(
                                    color: Colors.grey.shade300, width: 1)
                                : Border.all(
                                    color: Colors.grey.shade300.withOpacity(0),
                                    width: 1),
                          ),
                          child: Image.network(
                            'https://img.icons8.com/color/2x/mastercard-logo.png',
                            height: 50,
                          ),
                        ),
                      ),

                      // Pay with credit card
                      GestureDetector(
                        onTap: () {
                          activeCard.value = 1;
                          selectedPaymentMethod.value =
                              PaymentMethod.creditCard;
                        },
                        child: AnimatedContainer(
                          duration: const Duration(milliseconds: 300),
                          margin: const EdgeInsets.only(right: 10),
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(18),
                            border: activeCard.value == 1
                                ? Border.all(
                                    color: Colors.grey.shade300, width: 1)
                                : Border.all(
                                    color: Colors.grey.shade300.withOpacity(0),
                                    width: 1),
                          ),
                          child: Image.network(
                            'https://img.icons8.com/ios-filled/2x/apple-pay.png',
                            height: 50,
                          ),
                        ),
                      ),

                      // Pay with cash
                      GestureDetector(
                        onTap: () {
                          activeCard.value = 2;
                          selectedPaymentMethod.value = PaymentMethod.cash;
                        },
                        child: AnimatedContainer(
                          duration: const Duration(milliseconds: 300),
                          margin: const EdgeInsets.only(right: 10),
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(18),
                            border: activeCard.value == 2
                                ? Border.all(
                                    color: Colors.grey.shade300, width: 1)
                                : Border.all(
                                    color: Colors.grey.shade300.withOpacity(0),
                                    width: 1),
                          ),
                          child: Image.network(
                            'https://i.ibb.co/3vgQ5d1/shipcod.png',
                            height: 50,
                          ),
                        ),
                      ),
                    ])),
                const SizedBox(
                  height: 30,
                ),
                FadeAnimation(
                    1.4,
                    Container(
                      height: 50,
                      padding: const EdgeInsets.only(
                        left: 20,
                      ),
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "Mã giảm giá",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w600),
                          ),
                          TextButton(
                              onPressed: () {}, child: const Text("Thêm mã"))
                        ],
                      ),
                    )),
                const SizedBox(
                  height: 20,
                ),
                FadeAnimation(
                    1.5,
                    Container(
                      height: 50,
                      padding: const EdgeInsets.only(
                        left: 20,
                      ),
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // Select Address
                          const Text(
                            "Địa chỉ",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w600),
                          ),
                          TextButton(
                              onPressed: () {
                                showDialog(
                                  context: context,
                                  builder: (context) => const SelectAddress(),
                                );
                              },
                              child: Row(
                                children: [
                                  Text(
                                    selectedAddress?.$2.fullAddress
                                            .excerpt(maxLength: 20) ??
                                        '',
                                  ),
                                  const Icon(
                                    Icons.keyboard_arrow_down,
                                    size: 20,
                                  )
                                ],
                              ))
                        ],
                      ),
                    )),
                const SizedBox(
                  height: 50,
                ),
                FadeAnimation(
                    1.5,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Giá ước tính",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w600),
                        ),
                        Text("${formatNumber(cartState.totalAmount)} VNĐ",
                            style: const TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.blue))
                      ],
                    )),
                const SizedBox(height: 30),
                FadeAnimation(
                  1.4,
                  MaterialButton(
                    onPressed: () {
                      payAction();
                    },
                    height: 50,
                    elevation: 0,
                    splashColor: Colors.blue,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    color: Theme.of(context).primaryColor,
                    child: const Center(
                      child: Text(
                        "Đặt hàng",
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ));
  }
}
