// ignore_for_file: unused_local_variable, file_names, use_key_in_widget_constructors, unused_element

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class AddNewProductPage extends HookConsumerWidget {
  const AddNewProductPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // State variables for managing product information
    var productNameController = useTextEditingController();
    var productCostController = useTextEditingController();
    var productDescriptionController = useTextEditingController();
    var imageUrls = useState<List<String>>([]);

    void addImage(String url) {
      imageUrls.value.add(url);
    }

    void removeImage(String url) {
      imageUrls.value.remove(url);
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Thêm sản phẩm mới'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Widgets for entering product information
            TextField(
              controller: productNameController,
              decoration: const InputDecoration(labelText: 'Tên sản phẩm'),
            ),
            const SizedBox(height: 12),
            TextField(
              controller: productCostController,
              decoration: const InputDecoration(labelText: 'Giá (VNĐ)'),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 12),
            TextField(
              controller: productDescriptionController,
              decoration: const InputDecoration(labelText: 'Mô tả sản phẩm'),
              maxLines: null,
            ),
            const SizedBox(height: 12),
            // Widget for adding images
            ElevatedButton(
              onPressed: () {
                // Show image selection dialog or navigate to image selection screen
              },
              child: const Text('Thêm hình'),
            ),
            const SizedBox(height: 12),
            // Preview of selected images
            GridView.builder(
              shrinkWrap: true,
              itemCount: imageUrls.value.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 8,
                mainAxisSpacing: 8,
              ),
              itemBuilder: (context, index) {
                return Stack(
                  children: [
                    Image.network(
                      imageUrls.value[index],
                      fit: BoxFit.cover,
                      width: 100,
                      height: 100,
                    ),
                    Positioned(
                      top: 0,
                      right: 0,
                      child: GestureDetector(
                        onTap: () {
                          removeImage(imageUrls.value[index]);
                        },
                        child: const CircleAvatar(
                          radius: 12,
                          backgroundColor: Colors.red,
                          child: Icon(
                            Icons.close,
                            color: Colors.white,
                            size: 16,
                          ),
                        ),
                      ),
                    ),
                  ],
                );
              },
            ),
            const SizedBox(height: 12),
            // Button to submit new product
            ElevatedButton(
              onPressed: () {
                // Validate input and submit new product
                String name = productNameController.text;
                double cost = double.tryParse(productCostController.text) ?? 0;
                String description = productDescriptionController.text;
                // ref.read(productProvider.notifier).addProduct(
                //       Product(
                //         name: name,
                //         cost: cost,
                //         description: description,
                //         imageUrls: imageUrls.value,
                //       ),
                //     );
                // Show a snackbar or navigate back to the previous screen
              },
              child: const Text('Thêm sản phẩm'),
            ),
          ],
        ),
      ),
    );
  }
}
