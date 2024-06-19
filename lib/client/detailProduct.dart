// ignore_for_file: file_names, use_super_parameters
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:foursquare_client/data/product.dart';
import 'package:foursquare_client/client/cart.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:foursquare_client/shared/numeric.dart';

enum ColorLabel {
  blue('Blue', Colors.blue),
  pink('Pink', Colors.pink),
  green('Green', Colors.green),
  yellow('Orange', Colors.orange),
  grey('Grey', Colors.grey);

  const ColorLabel(this.label, this.color);
  final String label;
  final Color color;
}

class ProductScreen extends HookConsumerWidget {
  const ProductScreen({Key? key, required this.product}) : super(key: key);
  final Product product;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var selectedImageUrl = useState(product.imageUrls.first);
    var selectedQty = useState(product.qty.toInt());
    var selectedColor = useState<ColorLabel?>(null);
    final colorController = useTextEditingController();

    void setSelectedImageUrl(String url) {
      selectedImageUrl.value = url;
    }

    void setSelectedColor(ColorLabel? color) {
      selectedColor.value = color;
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
                    '${formatNumber(product.cost.toInt())} VNĐ',
                    style: Theme.of(context).textTheme.titleMedium!.copyWith(
                          color: Theme.of(context).colorScheme.secondary,
                        ),
                  ),
                  const SizedBox(height: 12),
                  Row(
                    children: [
                      Text(
                        'Màu sắc:',
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                      const SizedBox(width: 10),
                      DropdownMenu<ColorLabel>(
                        initialSelection: ColorLabel.blue,
                        requestFocusOnTap: true,
                        controller: colorController,
                        onSelected: (value) => setSelectedColor(value),
                        dropdownMenuEntries: ColorLabel.values
                            .map<DropdownMenuEntry<ColorLabel>>(
                                (ColorLabel color) {
                          return DropdownMenuEntry<ColorLabel>(
                            value: color,
                            label: color.label,
                            labelWidget: Row(
                              children: [
                                Container(
                                  height: 20,
                                  width: 20,
                                  color: color.color,
                                ),
                                const SizedBox(width: 8),
                                Text(color.label),
                              ],
                            ),
                            style: MenuItemButton.styleFrom(
                              foregroundColor: color.color,
                            ),
                          );
                        }).toList(),
                      ),
                    ],
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
                          selectedQty.value++;
                        },
                      ),
                    ],
                  ),
                  const SizedBox(height: 18),
                  Text(
                    'Mô tả sản phẩm:',
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  Text(
                    product.description ?? 'None',
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium!
                        .copyWith(height: 1.5),
                  ),
                  const SizedBox(height: 18),
                  Center(
                    child: ElevatedButton(
                      onPressed: () {
                        if (selectedColor.value == null) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text('Vui lòng chọn màu sắc.'),
                              duration: Duration(seconds: 3),
                            ),
                          );
                        } else if (selectedQty.value <= 0) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content:
                                  Text('Vui lòng điền số lượng lớn hơn 0.'),
                              duration: Duration(seconds: 3),
                            ),
                          );
                        } else {
                          ref.read(cartNotifierProvider.notifier).addItem(
                                OrderItem(
                                  product: product,
                                  color: selectedColor.value ?? ColorLabel.blue,
                                  qty: selectedQty.value,
                                ),
                              );
                        }
                      },
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
