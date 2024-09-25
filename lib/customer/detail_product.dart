import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:foursquare/customer/cart.dart';
import 'package:foursquare/riverpod/cart.dart';
import 'package:foursquare/riverpod/product.dart';
import 'package:foursquare/shared/constants.dart';
import 'package:foursquare/shared/models/colour.dart';
import 'package:foursquare/shared/models/order_item.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:foursquare/shared/numeric.dart';

class DetailProductScreen extends HookConsumerWidget {
  const DetailProductScreen({super.key, required this.productInfo});
  final ProductInfo productInfo;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var selectedImageUrl = useState(productInfo.images.first.imageUrl);
    var selectedQty = useState(0);
    var selectedColor = useState(null as ColourDto?);
    var formKey = useMemoized(() => GlobalKey<FormState>());

    void setSelectedImageUrl(String url) {
      selectedImageUrl.value = url;
    }

    void setSelectedColor(ColourDto? color) {
      selectedColor.value = color;
    }

    var imagePreviews = productInfo.images
        .map(
          (image) => Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: GestureDetector(
              onTap: () => setSelectedImageUrl(image.imageUrl),
              child: Container(
                height: 50,
                width: 50,
                padding: const EdgeInsets.all(2),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: selectedImageUrl.value == image.imageUrl
                      ? Border.all(
                          color: Theme.of(context).colorScheme.secondary,
                          width: 1.75,
                        )
                      : null,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Image.network(image.imageUrl),
              ),
            ),
          ),
        )
        .toList();

    return Scaffold(
      appBar: AppBar(),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * .35,
                  color: Colors.grey[200],
                  padding: const EdgeInsets.symmetric(vertical: 18),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Image.network(
                          selectedImageUrl.value,
                          fit: BoxFit.cover,
                          color: Colors.grey[200],
                          colorBlendMode: BlendMode.multiply,
                        ),
                      ),
                      const SizedBox(height: 16),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: imagePreviews,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        productInfo.product.name,
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                      const SizedBox(height: 4),
                      Text(
                        '${formatNumber(productInfo.product.expectedPrice ?? 0)} VNĐ',
                        style: Theme.of(context)
                            .textTheme
                            .titleMedium!
                            .copyWith(
                              color: Theme.of(context).colorScheme.secondary,
                            ),
                      ),
                      const SizedBox(height: 12),
                      FilledButton.icon(
                        style: FilledButton.styleFrom(
                          minimumSize:
                              const Size.fromHeight(50), // Set the height
                          textStyle: const TextStyle(fontSize: 16),
                        ),
                        onPressed: () {
                          showModalBottomSheet(
                            context: context,
                            isScrollControlled: true,
                            builder: (BuildContext context) {
                              return StatefulBuilder(
                                builder: (BuildContext context,
                                    StateSetter setState) {
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
                                      key: formKey,
                                      autovalidateMode:
                                          AutovalidateMode.onUserInteraction,
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          const SizedBox(height: 16),
                                          const Text(
                                            'Chọn màu sắc:',
                                            style: TextStyle(
                                              fontSize: 17,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          Wrap(
                                            spacing: 8.0,
                                            children: productInfo.categories
                                                .map((category) {
                                              String hexColor = category
                                                  .$2.hexCode
                                                  .replaceFirst('#', '');
                                              if (hexColor.length == 6) {
                                                hexColor = 'FF$hexColor';
                                              }
                                              return ChoiceChip(
                                                avatar: Container(
                                                  width: 24,
                                                  height: 24,
                                                  decoration: BoxDecoration(
                                                    color: Color(int.parse(
                                                        hexColor,
                                                        radix: 16)),
                                                    shape: BoxShape.circle,
                                                  ),
                                                ),
                                                label: Text(category.$2.name),
                                                selected: selectedColor.value ==
                                                    category.$2,
                                                onSelected: (selected) {
                                                  setState(() {
                                                    setSelectedColor(selected
                                                        ? category.$2
                                                        : null);
                                                  });
                                                },
                                              );
                                            }).toList(),
                                          ),
                                          const SizedBox(height: 16),
                                          TextFormField(
                                            decoration: const InputDecoration(
                                              labelText: 'Số lượng',
                                            ),
                                            keyboardType: TextInputType.number,
                                            onChanged: (value) {
                                              selectedQty.value =
                                                  int.tryParse(value) ?? 0;
                                            },
                                            validator: (value) {
                                              if (value == null ||
                                                  value.isEmpty) {
                                                return 'Vui lòng điền số lượng.';
                                              }
                                              if (int.tryParse(value) == null ||
                                                  int.parse(value) <= 0) {
                                                return 'Số lượng phải lớn hơn 0.';
                                              }
                                              return null;
                                            },
                                          ),
                                          const SizedBox(height: 16),
                                          FilledButton.icon(
                                            onPressed: () {
                                              if (selectedColor.value != null &&
                                                  formKey.currentState!
                                                      .validate()) {
                                                final productCategoryId =
                                                    productInfo.categories
                                                        .firstWhere(
                                                            (category) =>
                                                                category
                                                                    .$2.id ==
                                                                selectedColor
                                                                    .value!.id)
                                                        .$1
                                                        .id;
                                                ref
                                                    .read(cartNotifierProvider
                                                        .notifier)
                                                    .addItemOrUpdateQuantity(
                                                      OrderItemEditDto(
                                                        unitPrice: productInfo
                                                            .product
                                                            .expectedPrice!,
                                                        orderId: "",
                                                        productCategoryId:
                                                            productCategoryId,
                                                        orderedQty:
                                                            selectedQty.value,
                                                      ),
                                                    );
                                                Navigator.pop(context);
                                              }
                                            },
                                            icon:
                                                const Icon(Icons.shopping_cart),
                                            label: const Text('Đặt hàng'),
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
                        icon: const Icon(Icons.shopping_cart),
                        label: const Text('Đặt hàng'),
                      ),
                      const SizedBox(height: 16),
                      OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          minimumSize: const Size.fromHeight(50),
                          textStyle: const TextStyle(fontSize: 16),
                        ),
                        onPressed: () {},
                        child: const Text('Liên hệ'),
                      ),
                      const SizedBox(height: 16),
                      const Text(
                        'Mô tả sản phẩm: ',
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        productInfo.product.description ?? 'Không có mô tả.',
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium!
                            .copyWith(height: 1.5),
                      ),
                      const SizedBox(height: 12),
                      const Text(
                        'Thẻ:',
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.bold),
                      ),
                      productInfo.tags.isEmpty
                          ? const Text('Không có thẻ nào.')
                          : Wrap(
                              spacing: 8.0,
                              runSpacing: 4.0,
                              children: productInfo.tags.map((tag) {
                                return Chip(
                                  label: Text(tag.name),
                                  backgroundColor: Theme.of(context)
                                      .colorScheme
                                      .secondary
                                      .withOpacity(0.1),
                                );
                              }).toList(),
                            ),
                      const SizedBox(height: 18),
                      const Text(
                        'Bình luận:',
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.bold),
                      ),
                      Column(
                        children: productInfo.comments.isNotEmpty
                            ? productInfo.comments.asMap().entries.map((entry) {
                                int index = entry.key;
                                CommentInfo commentInfo = entry.value;
                                return Column(
                                  children: [
                                    if (index > 0)
                                      Divider(
                                          color: Colors.grey[300],
                                          thickness: 1),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 8.0),
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          CircleAvatar(
                                            radius: 25,
                                            backgroundImage: NetworkImage(
                                              commentInfo.user.avatarUrl ??
                                                  defaultAvatarUrl,
                                            ),
                                          ),
                                          const SizedBox(width: 12),
                                          Expanded(
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Text(
                                                      commentInfo.user.name ??
                                                          '',
                                                      style: const TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                    Row(
                                                      children: List.generate(
                                                        commentInfo.comment
                                                                .rating ??
                                                            0,
                                                        (index) => const Icon(
                                                            Icons.star,
                                                            color: Colors.amber,
                                                            size: 18),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Text(
                                                  commentInfo.comment.content ??
                                                      '',
                                                  style: TextStyle(
                                                      color: Colors.grey[600]),
                                                ),
                                                Text(
                                                  '${commentInfo.comment.created.day}'
                                                  '/${commentInfo.comment.created.month}'
                                                  '/${commentInfo.comment.created.year}'
                                                  ' ${commentInfo.comment.created.hour}:${commentInfo.comment.created.minute}',
                                                  style: TextStyle(
                                                      color: Colors.grey[400],
                                                      fontSize: 12),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                );
                              }).toList()
                            : [
                                const Text('Không có bình luận nào.'),
                              ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: const CartFAB(),
    );
  }
}
