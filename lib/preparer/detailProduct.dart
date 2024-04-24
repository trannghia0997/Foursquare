// ignore_for_file: file_names, unused_element, use_super_parameters
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:foursquare_client/data/product.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ProductScreen extends HookConsumerWidget {
  const ProductScreen({Key? key, required this.product}) : super(key: key);
  final Product product;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var selectedImageUrl = useState(product.imageUrls.first);
    var selectedQty = useState(product.qty);

    // Create TextEditingController
    final qtyController = useTextEditingController();

    void setSelectedImageUrl(String url) {
      selectedImageUrl.value = url;
    }

    void setSelectedQty(double qty) {
      selectedQty.value = qty;
    }

    var imagePreviews = product.imageUrls
        .map(
          (url) => Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: GestureDetector(
              onTap: () => setSelectedImageUrl(url),
              child: Container(
                height: 50,
                width: 50,
                padding: const EdgeInsets.all(2),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: selectedImageUrl.value == url
                      ? Border.all(
                          color: Theme.of(context).colorScheme.secondary,
                          width: 1.75)
                      : null,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Image.network(
                  url,
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
                      selectedImageUrl.value,
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
                    product.name,
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  const SizedBox(height: 4),
                  Text(
                    '${product.cost} VNĐ',
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
                    product.description ??
                        'If no description is available, this line will appear',
                    style: Theme.of(context)
                        .textTheme
                        .bodyLarge!
                        .copyWith(height: 1.5),
                  ),
                  const SizedBox(height: 18),
                  Text(
                    'Số lượng: ${product.qty.toString()}(m)',
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
                          onChanged: (value) {
                            if (value.isNotEmpty) {
                              selectedQty.value += double.parse(value).toInt();
                            }
                          },
                        ),
                      ),
                      const Spacer(),
                      ElevatedButton(
                        onPressed: () {
                          // Lưu số lượng vào product.qty
                          // product.qty = selectedQty.value;
                          setSelectedQty(selectedQty.value);
                          qtyController.clear();
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
