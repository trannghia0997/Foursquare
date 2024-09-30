import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:foursquare/services/pb.dart';
import 'package:foursquare/shared/models/comment.dart';
import 'package:foursquare/shared/models/enums/user_role.dart';
import 'package:foursquare/shared/models/product_category.dart';
import 'package:foursquare/shared/models/user.dart';
import 'package:foursquare/shopper/cart.dart';
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
    final selectedImageUrl = useState(productInfo.images.first.imageUrl);
    final selectedQty = useState(0);
    final selectedCategory = useState<(ProductCategoryDto, ColourDto)?>(null);
    final formKey = useMemoized(() => GlobalKey<FormState>());
    void setSelectedImageUrl(String url) {
      selectedImageUrl.value = url;
    }

    void setSelectedCategory((ProductCategoryDto, ColourDto)? category) {
      selectedCategory.value = category;
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
            padding: const EdgeInsets.only(
                bottom: 80), // Add padding to avoid FAB overlap
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
                                          ListTile(
                                            leading: Icon(Icons.info,
                                                color: Theme.of(context)
                                                    .colorScheme
                                                    .primary),
                                            title: const Text(
                                              'Thông tin sản phẩm',
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 18,
                                              ),
                                            ),
                                            subtitle: Text(
                                              'Tên: ${productInfo.product.name}\n'
                                              'Giá: ${formatNumber(productInfo.product.expectedPrice ?? 0)} VNĐ\n',
                                            ),
                                          ),
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
                                                selected:
                                                    selectedCategory.value ==
                                                        category,
                                                onSelected: (selected) {
                                                  setState(() {
                                                    setSelectedCategory(selected
                                                        ? category
                                                        : null);
                                                  });
                                                },
                                              );
                                            }).toList(),
                                          ),
                                          const SizedBox(height: 16),
                                          ProductQuantitySummaryText(
                                            productCategory:
                                                selectedCategory.value?.$1,
                                          ),
                                          const SizedBox(height: 16),
                                          TextFormField(
                                            decoration: const InputDecoration(
                                              labelText: 'Số lượng (m)',
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
                                            onPressed: () async {
                                              if (selectedCategory.value ==
                                                      null ||
                                                  !formKey.currentState!
                                                      .validate()) {
                                                return;
                                              }
                                              final productCategoryId =
                                                  selectedCategory.value!.$1.id;
                                              // Check if productQuantity exceeds the available quantity
                                              final productQuantity = ref
                                                  .read(
                                                    productQuantitySummaryViewByProductCategoryProvider(
                                                      productCategoryId,
                                                    ),
                                                  )
                                                  .when(
                                                    data: (data) =>
                                                        data?.totalQty ?? 0,
                                                    error: (error, _) => 0,
                                                    loading: () => 0,
                                                  );
                                              if (productQuantity != 0 &&
                                                  selectedQty.value >
                                                      productQuantity) {
                                                showDialog(
                                                  context: context,
                                                  builder: (context) {
                                                    return AlertDialog(
                                                      title: const Text(
                                                        'Số lượng không đủ',
                                                      ),
                                                      content: const Text(
                                                        'Số lượng sản phẩm không đủ để đáp ứng yêu cầu của bạn.',
                                                      ),
                                                      actions: [
                                                        TextButton(
                                                          onPressed: () {
                                                            Navigator.pop(
                                                                context);
                                                          },
                                                          child:
                                                              const Text('OK'),
                                                        ),
                                                      ],
                                                    );
                                                  },
                                                );
                                                return;
                                              }
                                              ref
                                                  .read(cartNotifierProvider
                                                      .notifier)
                                                  .addItemOrUpdateQuantity(
                                                    OrderItemEditDto(
                                                      unitPrice: productInfo
                                                          .product
                                                          .expectedPrice!
                                                          .toDouble(),
                                                      orderId: "",
                                                      productCategoryId:
                                                          productCategoryId,
                                                      orderedQty:
                                                          selectedQty.value,
                                                    ),
                                                  );
                                              Navigator.pop(context);
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
                      DescriptionSection(productInfo: productInfo),
                      const SizedBox(height: 16),
                      CommentSection(productInfo: productInfo),
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

class ProductQuantitySummaryText extends HookConsumerWidget {
  const ProductQuantitySummaryText({super.key, this.productCategory});
  final ProductCategoryDto? productCategory;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    if (productCategory == null) {
      return const Text(
        'Chọn màu sắc để xem số lượng.',
        style: TextStyle(fontSize: 16),
      );
    }
    final productQuantity = ref.watch(
      productQuantitySummaryViewByProductCategoryProvider(productCategory!.id),
    );
    return productQuantity.when(
      data: (data) {
        return Text(
          'Số lượng: ${formatNumber(data?.totalQty ?? 0)} m',
          style: Theme.of(context).textTheme.bodyMedium,
        );
      },
      error: (error, _) {
        return Text(
          'Không thể lấy dữ liệu',
          style: Theme.of(context).textTheme.bodyMedium,
        );
      },
      loading: () {
        return const Text(
          'Đang tải...',
          style: TextStyle(fontSize: 16),
        );
      },
    );
  }
}

class DescriptionSection extends StatelessWidget {
  const DescriptionSection({required this.productInfo, super.key});
  final ProductInfo productInfo;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Mô tả sản phẩm: ',
          style: Theme.of(context).textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.bold,
              ),
        ),
        Text(
          productInfo.product.description ?? 'Không có mô tả.',
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        const SizedBox(height: 12),
        Text(
          'Thẻ:',
          style: Theme.of(context).textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.bold,
              ),
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
      ],
    );
  }
}

class CommentSection extends HookConsumerWidget {
  const CommentSection({required this.productInfo, super.key});

  final ProductInfo productInfo;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userRole = UserDto.fromRecord(PBApp.instance.authStore.model).role;
    final commentController = useTextEditingController();
    final rating = useState(0);
    final isAddingComment = useState(false);
    final commentInfoState = ref.watch(
      commentInfoByProductIdProvider(productInfo.product.id),
    );
    final commentInfos = commentInfoState.when(
      data: (data) => data,
      error: (error, _) => <CommentInfo>[],
      loading: () => <CommentInfo>[],
    );

    Future<void> submitComment() async {
      if (userRole != UserRole.customer) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Chỉ khách hàng mới có thể bình luận.')),
        );
        return;
      }

      if (commentController.text.isEmpty || rating.value == 0) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Vui lòng điền nội dung và đánh giá.')),
        );
        return;
      }
      final commentEdit = CommentEditDto(
        content: commentController.text,
        rating: rating.value,
        productId: productInfo.product.id,
        userId: PBApp.instance.authStore.model.id,
      );

      // Check if the user has already commented on this product
      final hasCommented = commentInfos.any((comment) {
        return comment.user.id == PBApp.instance.authStore.model.id;
      });

      if (hasCommented) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Bạn đã bình luận sản phẩm này rồi.'),
          ),
        );
        return;
      }

      await PBApp.instance
          .collection('comments')
          .create(body: commentEdit.toJson());
      ref.invalidate(commentInfoByProductIdProvider(productInfo.product.id));
      commentController.clear();
      rating.value = 0;
      isAddingComment.value = false;
    }

    Future<void> removeComment(String commentId) async {
      final confirm = await showDialog<bool>(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text('Xác nhận'),
            content:
                const Text('Bạn có chắc chắn muốn xóa bình luận này không?'),
            actions: <Widget>[
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop(false);
                },
                child: const Text('Hủy'),
              ),
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop(true);
                },
                child: const Text('Xóa'),
              ),
            ],
          );
        },
      );

      if (confirm == true) {
        await PBApp.instance.collection('comments').delete(commentId);
        ref.invalidate(commentInfoByProductIdProvider(productInfo.product.id));
      }
    }

    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Bình luận',
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
            ),
            if (userRole == UserRole.customer)
              ElevatedButton.icon(
                onPressed: () {
                  isAddingComment.value = true;
                },
                icon: const Icon(Icons.add_comment),
                label: const Text('Thêm bình luận'),
              ),
          ],
        ),
        const SizedBox(height: 8),
        if (userRole == UserRole.customer && isAddingComment.value) ...[
          const Text(
            'Đánh giá sản phẩm:',
            style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
          ),
          Center(
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: List.generate(5, (index) {
                return IconButton(
                  icon: Icon(
                    index < rating.value ? Icons.star : Icons.star_border,
                    color: Colors.amber,
                    size: 32,
                  ),
                  onPressed: () {
                    rating.value = index + 1;
                  },
                );
              }),
            ),
          ),
          const SizedBox(height: 8),
          TextField(
            controller: commentController,
            decoration: const InputDecoration(
              labelText: 'Nội dung bình luận',
              border: OutlineInputBorder(),
            ),
            maxLines: 3,
          ),
          const SizedBox(height: 8),
          ElevatedButton.icon(
            onPressed: submitComment,
            icon: const Icon(Icons.send),
            label: const Text('Gửi'),
          ),
        ],
        const SizedBox(height: 8),
        if (commentInfos.isEmpty) ...[
          const Text('Không có bình luận nào.'),
        ],
        if (commentInfos.isNotEmpty)
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: commentInfos.length,
            itemBuilder: (context, index) {
              CommentInfo commentInfo = commentInfos[index];
              return Column(
                children: [
                  if (index > 0) Divider(color: Colors.grey[300], thickness: 1),
                  ListTile(
                    leading: CircleAvatar(
                      radius: 25,
                      backgroundImage: NetworkImage(
                        commentInfo.user.avatarUrl ?? defaultAvatarUrl,
                      ),
                    ),
                    title: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          commentInfo.user.name,
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Row(
                          children: List.generate(
                            commentInfo.comment.rating ?? 0,
                            (index) => const Icon(
                              Icons.star,
                              color: Colors.amber,
                              size: 16,
                            ),
                          ),
                        ),
                      ],
                    ),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          commentInfo.comment.content ?? '',
                          style: TextStyle(color: Colors.grey[600]),
                        ),
                        Text(
                          '${commentInfo.comment.created.day}'
                          '/${commentInfo.comment.created.month}'
                          '/${commentInfo.comment.created.year}'
                          ' ${commentInfo.comment.created.hour}:${commentInfo.comment.created.minute}',
                          style:
                              TextStyle(color: Colors.grey[400], fontSize: 12),
                        ),
                      ],
                    ),
                    trailing:
                        commentInfo.user.id == PBApp.instance.authStore.model.id
                            ? IconButton(
                                icon: const Icon(Icons.delete),
                                onPressed: () async {
                                  await removeComment(commentInfo.comment.id);
                                },
                              )
                            : null,
                  ),
                ],
              );
            },
          ),
      ],
    );
  }
}
