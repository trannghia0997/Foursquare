import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:foursquare_client/data/product.dart';
import 'package:foursquare_client/client/cart.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ProductScreen extends HookConsumerWidget {
  const ProductScreen({required this.product, super.key});
  final Product product;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var selectedImageUrl = useState(product.imageUrls.first);
    var selectedQty = useState(product.qty.toInt()); // Convert double to int
    void setSelectedImageUrl(String url) {
      selectedImageUrl.value = url;
    }

    // void setSelectedQty(double qty) {
    //   selectedQty.value = qty.toInt();
    // }

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
        actions: const [
          CartAppBarAction(),
        ],
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
                        .bodyMedium!
                        .copyWith(height: 1.5),
                  ),
                  const SizedBox(height: 18),
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
                      SizedBox(
                        width: 50, // Width of the TextFormField
                        child: TextFormField(
                          initialValue: selectedQty.value.toString(),
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.center,
                          style: const TextStyle(fontSize: 18),
                          onChanged: (newValue) {
                            if (newValue.isNotEmpty) {
                              selectedQty.value = int.parse(newValue);
                            }
                          },
                        ),
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
                  const SizedBox(height: 18),
                  Center(
                    child: ElevatedButton(
                      onPressed: () =>
                          ref.read(cartNotifierProvider.notifier).addItem(
                                OrderItem(
                                  product: product,
                                  qty: selectedQty.value,
                                ),
                              ),
                      child: const Text('Thêm vào giỏ hàng'),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration: BoxDecoration(
//         color: Theme.of(context).primaryColorLight,
//         borderRadius: BorderRadius.circular(18),
//       ),
//       child: TextField(
//         onChanged: widget.onChanged,
//         controller: _textEditingController,
//         textAlignVertical: TextAlignVertical.center,
//         textInputAction: TextInputAction.search,
//         decoration: InputDecoration(
//           border: InputBorder.none,
//           isDense: true,
//           contentPadding:
//               kIsWeb ? const EdgeInsets.only(top: 10) : EdgeInsets.zero,
//           prefixIconConstraints: const BoxConstraints(
//             minHeight: 36,
//             minWidth: 36,
//           ),
//           prefixIcon: const Icon(
//             Icons.search,
//           ),
//           hintText: 'Search for a product',
//           suffixIconConstraints: const BoxConstraints(
//             minHeight: 36,
//             minWidth: 36,
//           ),
//           suffixIcon: IconButton(
//             constraints: const BoxConstraints(
//               minHeight: 36,
//               minWidth: 36,
//             ),
//             splashRadius: 24,
//             icon: const Icon(
//               Icons.clear,
//             ),
//             onPressed: () {
//               _textEditingController.clear();
//               widget.onChanged(_textEditingController.text);
//               FocusScope.of(context).unfocus();
//             },
//           ),
//         ),
//       ),
//     );
//   }
// }

// Tạo đơn: Ghi chú,
// Thêm màu thêm loại vải, text số lượng
