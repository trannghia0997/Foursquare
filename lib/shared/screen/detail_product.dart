import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:foursquare/riverpod/product.dart';
import 'package:foursquare/services/pb.dart';
import 'package:foursquare/shared/models/product_image.dart';
import 'package:foursquare/shared/models/product_quantity.dart';
import 'package:foursquare/shared/extension.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class DetailProductScreen extends HookConsumerWidget {
  const DetailProductScreen(
      {super.key, required this.product, required this.workingUnitId});
  final ProductCategoryInfo product;
  final String workingUnitId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var selectedImageUrl = useState(product.images.first);
    final qtyValue =
        ref.watch(productQuantityInfoByWorkingUnitProvider(workingUnitId));
    List<ProductQuantityInfo> productQuantityInfo = qtyValue.when(
      data: (data) => data,
      loading: () => [],
      error: (error, _) => [],
    );
    // Get the product quantity info of the current product
    final productQtyInfo = productQuantityInfo
        .where((element) => element.quantity.categoryId == product.category.id)
        .firstOrNull;
    final qtyController = useTextEditingController.fromValue(
      const TextEditingValue(text: '0'),
    );
    final priorityController = useTextEditingController.fromValue(
      TextEditingValue(
          text: productQtyInfo?.quantity.priority.toString() ?? '1'),
    );
    final formKey = useMemoized(() => GlobalKey<FormState>());
    void setSelectedImageUrl(ProductImageDto url) {
      selectedImageUrl.value = url;
    }

    var imagePreviews = product.images
        .map(
          (item) => Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: GestureDetector(
              onTap: () => setSelectedImageUrl(item),
              child: Container(
                height: 50,
                width: 50,
                padding: const EdgeInsets.all(2),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: selectedImageUrl.value == item
                      ? Border.all(
                          color: Theme.of(context).colorScheme.secondary,
                          width: 1.75)
                      : null,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Image.network(
                  item.imageUrl,
                ),
              ),
            ),
          ),
        )
        .toList();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Thay đổi số lượng'),
      ),
      body: SingleChildScrollView(
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
                      selectedImageUrl.value.imageUrl,
                      fit: BoxFit.cover,
                      color: Colors.grey[200],
                      colorBlendMode: BlendMode.multiply,
                    ),
                  ),
                  const SizedBox(height: 18),
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
                    product.category.name ?? product.product.name,
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                  const SizedBox(height: 4),
                  Text(
                    '${product.product.expectedPrice?.formattedNumber ?? '0'} ₫',
                    style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                          color: Theme.of(context).colorScheme.secondary,
                        ),
                  ),
                  const SizedBox(height: 12),
                  Text(
                    'Mô tả',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  Text(
                    product.product.description ?? 'Không có mô tả',
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  const SizedBox(height: 16),
                  Text(
                    'Số lượng hiện tại: ${productQtyInfo?.quantity.qty ?? 0} m',
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  const SizedBox(height: 16),
                  Form(
                    key: formKey,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextFormField(
                          controller: qtyController,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            labelText: 'Thêm số lượng',
                            hintText: '0',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Vui lòng nhập số lượng muốn thêm';
                            }
                            final qty = int.tryParse(value);
                            if (qty == null || qty < 0) {
                              return 'Số lượng muốn thêm phải lớn hơn hoặc bằng 0';
                            }
                            return null;
                          },
                        ),
                        const SizedBox(height: 16),
                        TextFormField(
                          controller: priorityController,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            labelText: 'Độ ưu tiên',
                            hintText: '0',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Vui lòng nhập độ ưu tiên';
                            }
                            final priority = int.tryParse(value);
                            if (priority == null ||
                                priority < 1 ||
                                priority > 5) {
                              return 'Độ ưu tiên phải từ 1 đến 5';
                            }
                            return null;
                          },
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 16),
                  Center(
                    child: FilledButton(
                      onPressed: () async {
                        if (!formKey.currentState!.validate()) {
                          return;
                        }
                        late final ProductQuantityEditDto productQtyEdit;
                        if (productQtyInfo != null) {
                          productQtyEdit = ProductQuantityEditDto.fromJson(
                            productQtyInfo.quantity.toJson(),
                          );
                          productQtyEdit.qty = (productQtyEdit.qty ?? 0) +
                              int.parse(qtyController.text);
                          productQtyEdit.priority =
                              int.parse(priorityController.text);
                          await PBApp.instance
                              .collection('product_quantities')
                              .update(productQtyInfo.quantity.id,
                                  body: productQtyEdit.toJson());
                        } else {
                          productQtyEdit = ProductQuantityEditDto(
                            priority: int.parse(priorityController.text),
                            qty: int.parse(qtyController.text),
                            categoryId: product.category.id,
                            workingUnitId: workingUnitId,
                          );
                          await PBApp.instance
                              .collection('product_quantities')
                              .create(body: productQtyEdit.toJson());
                        }
                        ref.invalidate(
                          productQuantityInfoByWorkingUnitProvider(
                              workingUnitId),
                        );
                        if (!context.mounted) {
                          return;
                        }
                        Navigator.of(context).pop();
                      },
                      child: const Text('Lưu thay đổi'),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
