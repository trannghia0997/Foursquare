import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart';

class EditProductScreen extends HookConsumerWidget {
  const EditProductScreen({required this.product, super.key});
  final Product product;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var selectedImageUrl = useState(product.imageUrls.first);
    var selectedQty = useState(0);
    var productNameController = useTextEditingController(text: product.name);
    var productCostController =
        useTextEditingController(text: product.price.toString());
    var productDescriptionController =
        useTextEditingController(text: product.description ?? '');
    var imageUrls = [...product.imageUrls];

    void setSelectedImageUrl(String url) {
      selectedImageUrl.value = url;
    }

    void setSelectedQty(int qty) {
      selectedQty.value = qty;
    }

    void addImage(String url) {
      imageUrls.add(url);
      setSelectedImageUrl(url);
    }

    // ignore: unused_element
    void removeImage(String url) {
      imageUrls.remove(url);
      if (selectedImageUrl.value == url && imageUrls.isNotEmpty) {
        setSelectedImageUrl(imageUrls.first);
      }
    }

    var imagePreviews = imageUrls
        .map(
          (url) => _buildImagePreview(url, context),
        )
        .toList();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Chỉnh sửa thông tin sản phẩm'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: MediaQuery.of(context).size.height * .38,
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(height: 8),
                      ElevatedButton(
                        onPressed: () async {
                          final image = await ImagePicker()
                              .pickImage(source: ImageSource.gallery);

                          if (image == null) return;

                          final location =
                              await getApplicationDocumentsDirectory();
                          final name = basename(image.path);
                          final imageFile = File('${location.path}/$name');
                          final newImage =
                              await File(image.path).copy(imageFile.path);

                          addImage(newImage.path); // Thêm ảnh vào danh sách
                        },
                        child: const Text('Thêm hình'),
                      ),
                      // const SizedBox(width: 16),
                      // ElevatedButton(
                      //   onPressed: () {
                      //     // Remove image functionality goes here
                      //     // For demonstration, let's assume the first image is removed
                      //     if (imageUrls.isNotEmpty) {
                      //       removeImage(imageUrls.first);
                      //     }
                      //   },
                      //   child: const Text('Xóa hình'),
                      // ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextField(
                    controller: productNameController,
                    decoration: const InputDecoration(
                      labelText: 'Tên sản phẩm',
                    ),
                  ),
                  const SizedBox(height: 12),
                  TextField(
                    controller: productCostController,
                    decoration: const InputDecoration(
                      labelText: 'Giá (VNĐ)',
                    ),
                    keyboardType: TextInputType.number,
                  ),
                  const SizedBox(height: 12),
                  TextField(
                    controller: TextEditingController(
                        text: selectedQty.value.toString()),
                    decoration: const InputDecoration(
                      labelText: 'Số lượng',
                    ),
                    keyboardType: TextInputType.number,
                    onChanged: (value) {
                      setSelectedQty(int.tryParse(value) ?? 0);
                    },
                  ),
                  const SizedBox(height: 12),
                  TextField(
                    controller: productDescriptionController,
                    decoration: const InputDecoration(
                      labelText: 'Mô tả sản phẩm',
                    ),
                    maxLines: null,
                  ),
                  const SizedBox(height: 12),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          // Update product information
                          // ref.read(productProvider.notifier).updateProduct(
                          //   product.copyWith(
                          //     name: productNameController.text,
                          //     cost: double.parse(productCostController.text),
                          //     description: productDescriptionController.text,
                          //     imageUrls: imageUrls,
                          //     qty: selectedQty.value.toDouble(),
                          //   ),
                          // );
                          // Show a snackbar or navigate back to the previous screen
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

  Widget _buildImagePreview(String url, BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Stack(
        alignment: Alignment.topRight,
        children: [
          GestureDetector(
            onTap: () {
              product.removeImage(url);
            },
            child: Container(
              height: 50,
              width: 50,
              padding: const EdgeInsets.all(2),
              decoration: BoxDecoration(
                color: Colors.white,
                // border: selectedImageUrl.value == url
                //     ? Border.all(
                //         color: Theme.of(context).colorScheme.secondary,
                //         width: 1.75)
                //     : null,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Image.network(url),
            ),
          ),
          const Icon(Icons.close, color: Colors.red), // Delete icon
        ],
      ),
    );
  }
}
