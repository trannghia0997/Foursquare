import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:image_picker/image_picker.dart';

class AddProductScreen extends StatelessWidget {
  const AddProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Thêm sản phẩm mới'),
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: ProductForm(),
        ),
      ),
    );
  }
}

class ProductForm extends HookConsumerWidget {
  const ProductForm({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final productNameController = useTextEditingController();
    final productCostController = useTextEditingController();
    final productDescriptionController = useTextEditingController();
    final selectedImages = useState<List<XFile>>([]);

    Future<void> pickImages() async {
      List<XFile>? resultList = [];
      try {
        resultList = await ImagePicker().pickMultiImage(
          requestFullMetadata: true,
        );
      } on Exception catch (e) {
        if (kDebugMode) {
          debugPrint(e.toString());
        }
      }

      if (resultList != null && resultList.isNotEmpty) {
        if (selectedImages.value.isEmpty) {
          selectedImages.value = resultList;
          return;
        }
        final newImages = resultList
            .where(
              (newImage) => !selectedImages.value.any(
                (existingImage) => existingImage.name == newImage.name,
              ),
            )
            .toList();
        selectedImages.value = [
          ...selectedImages.value,
          ...newImages,
        ];
      }
    }

    void removeImage(int index) {
      selectedImages.value = List.from(selectedImages.value)..removeAt(index);
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: MediaQuery.of(context).size.height * 0.38,
          color: Colors.grey[200],
          padding: const EdgeInsets.symmetric(vertical: 18),
          child: selectedImages.value.isEmpty
              ? Center(
                  child: ElevatedButton(
                    onPressed: pickImages,
                    child: const Text('Chọn hình'),
                  ),
                )
              : GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount:
                        MediaQuery.of(context).size.width < 600 ? 3 : 6,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                  ),
                  itemCount: selectedImages.value.length + 1,
                  itemBuilder: (BuildContext context, int index) {
                    if (index == selectedImages.value.length) {
                      return GestureDetector(
                        onTap: pickImages,
                        child: Container(
                          color: Colors.grey[300],
                          child: const Icon(Icons.add_a_photo),
                        ),
                      );
                    }
                    return Stack(
                      children: [
                        GestureDetector(
                          onTap: () {
                            // Xem lại hình ảnh đã chọn
                            _showImagePreview(
                                context, selectedImages.value[index].path);
                          },
                          child: Image.file(
                            File(selectedImages.value[index].path),
                            width: double.infinity,
                            height: double.infinity,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Positioned(
                          top: 0,
                          right: 0,
                          child: IconButton(
                            icon: const Icon(Icons.close, color: Colors.red),
                            onPressed: () => removeImage(index),
                          ),
                        ),
                      ],
                    );
                  },
                ),
        ),
        const SizedBox(height: 12),
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
          controller: productDescriptionController,
          decoration: const InputDecoration(
            labelText: 'Mô tả sản phẩm',
          ),
          maxLines: null,
        ),
        const SizedBox(height: 12),
        ElevatedButton(
          onPressed: () async {
            final productName = productNameController.text;
            final productCost =
                double.tryParse(productCostController.text) ?? 0.0;

            if (productName.isNotEmpty && productCost > 0) {
              Navigator.of(context).pop();
            } else {
              // Hiển thị thông báo lỗi nếu thông tin không hợp lệ
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text(
                      'Vui lòng điền đầy đủ thông tin sản phẩm và giá trị giá phải lớn hơn 0.'),
                ),
              );
            }
          },
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Text('Thêm sản phẩm mới')],
          ),
        ),
      ],
    );
  }

  void _showImagePreview(BuildContext context, String imagePath) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          child: SizedBox(
            width: 300,
            height: 300,
            child: Image.file(
              File(imagePath),
              fit: BoxFit.cover,
            ),
          ),
        );
      },
    );
  }
}
