import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:foursquare/riverpod/product.dart';
import 'package:foursquare/riverpod/staff_info.dart';
import 'package:foursquare/services/pb.dart';
import 'package:foursquare/shared/models/product_image.dart';
import 'package:foursquare/shared/models/product_quantity.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class DetailProductScreen extends HookConsumerWidget {
  const DetailProductScreen({super.key, required this.product});
  final ProductCategoryInfoModel product;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var selectedImageUrl = useState(product.images.first);
    // StaffInfo is always present because we fetch it at login time.
    final staffInfo = ref
        .watch(staffInfoProvider(PBApp.instance.authStore.model.id))
        .requireValue;
    final qtyValue = ref.watch(
        productQuantityInfoByWarehouseProvider(staffInfo.staff.workingUnitId!));
    List<ProductQuantityInfoModel> productQuantityInfo = qtyValue.when(
      data: (data) => data,
      loading: () => [],
      error: (error, _) => [],
    );
    // Get the product quantity info of the current product
    final productQtyInfo = productQuantityInfo
        .where((element) => element.quantity.categoryId == product.category.id)
        .firstOrNull;
    final qtyController = useTextEditingController();

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
        title: const Text('Nhập thêm số lượng vào kho'),
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
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  const SizedBox(height: 4),
                  Text(
                    '${product.product.expectedPrice} VNĐ',
                    style: Theme.of(context).textTheme.titleMedium!.copyWith(
                          color: Theme.of(context).colorScheme.secondary,
                        ),
                  ),
                  const SizedBox(height: 12),
                  Text(
                    'Product Description',
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  Text(
                    product.product.description ?? 'N/A',
                    style: Theme.of(context)
                        .textTheme
                        .bodyLarge!
                        .copyWith(height: 1.5),
                  ),
                  const SizedBox(height: 18),
                  Text(
                    'Số lượng: ${productQtyInfo?.quantity.qty ?? 0}(m)',
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  Row(
                    children: [
                      Text(
                        'Thêm số lượng: ',
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                      SizedBox(
                        width: 100,
                        child: TextField(
                          controller:
                              qtyController, // Assign TextEditingController
                          keyboardType: TextInputType.number,
                          decoration: const InputDecoration(
                            hintText: '0',
                          ),
                        ),
                      ),
                      const Spacer(),
                      ElevatedButton(
                        onPressed: () {
                          ProductQuantityEditDto productQtyEdit;
                          if (productQtyInfo != null) {
                            productQtyEdit = ProductQuantityEditDto.fromJson(
                              productQtyInfo.quantity.toJson(),
                            );
                            productQtyEdit.qty = (productQtyEdit.qty ?? 0) +
                                int.parse(qtyController.text);
                          } else {
                            productQtyEdit = ProductQuantityEditDto(
                              qty: int.parse(qtyController.text),
                              categoryId: product.category.id,
                              workingUnitId: staffInfo.staff.workingUnitId!,
                            );
                          }
                        },
                        child: const Text('Lưu thay đổi'),
                      ),
                    ],
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
