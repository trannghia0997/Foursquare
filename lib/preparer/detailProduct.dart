// ignore_for_file: file_names, unused_element
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:foursquare_client/data/product.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ProductScreen extends HookConsumerWidget {
  const ProductScreen({required this.product, Key? key}) : super(key: key);
  final Product product;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var selectedImageUrl = useState(product.imageUrls.first);
    var selectedQty = useState(product.qty.toInt()); // Convert double to int
    void setSelectedImageUrl(String url) {
      selectedImageUrl.value = url;
    }

    void setSelectedQty(double qty) {
      selectedQty.value = qty.toInt(); // Convert double to int
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
      body: Column(
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
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    product.name,
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  const SizedBox(
                    height: 4,
                  ),
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
                        .bodyMedium!
                        .copyWith(height: 1.5),
                  ),
                  const SizedBox(
                    height: 18,
                  ),
                  Row(
                    children: [
                      Text(
                        'Số lượng (m):',
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                      IconButton(
                        icon: const Icon(Icons.remove),
                        onPressed: () {
                          if (selectedQty.value > 1) {
                            selectedQty.value--;
                          }
                        },
                      ),
                      Text(
                        selectedQty.value.toString(),
                        style: const TextStyle(fontSize: 18),
                      ),
                      IconButton(
                        icon: const Icon(Icons.add),
                        onPressed: () {
                          // You can add checks here, for example, maximum quantity
                          selectedQty.value++;
                        },
                      ),
                    ],
                  ),
                  const Spacer(),
                  // Add setter of qty
                  // Center(
                  //   child: ElevatedButton(
                  //     onPressed: () =>
                  //         product.qty = selectedQty.value,
                  //     child: const Text('Lưu thay đổi'),
                  //   ),
                  // )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
