// ignore_for_file: unused_local_variable, file_names, library_private_types_in_public_api, avoid_print

import 'dart:io';

import 'package:flutter/material.dart';
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

class ProductForm extends StatefulWidget {
  const ProductForm({super.key});

  @override
  _ProductFormState createState() => _ProductFormState();
}

class _ProductFormState extends State<ProductForm> {
  final TextEditingController productNameController = TextEditingController();
  final TextEditingController productCostController = TextEditingController();
  final TextEditingController productDescriptionController =
      TextEditingController();

  List<XFile> _selectedImages = [];

  Future<void> _pickImages() async {
    List<XFile>? resultList = [];
    try {
      resultList = await ImagePicker().pickMultiImage(
        requestFullMetadata: true,
      );
    } on Exception catch (e) {
      print(e);
    }

    if (resultList != null && resultList.isNotEmpty) {
      setState(() {
        _selectedImages = resultList!;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: MediaQuery.of(context).size.height * 0.38,
          color: Colors.grey[200],
          padding: const EdgeInsets.symmetric(vertical: 18),
          child: _selectedImages.isEmpty
              ? Center(
                  child: ElevatedButton(
                    onPressed: _pickImages,
                    child: const Text('Chọn hình'),
                  ),
                )
              : ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: _selectedImages.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GestureDetector(
                        onTap: () {
                          // Xem lại hình ảnh đã chọn
                          _showImagePreview(_selectedImages[index].path);
                        },
                        child: Image.file(
                          File(_selectedImages[index].path),
                          width: 100,
                          height: 100,
                          fit: BoxFit.cover,
                        ),
                      ),
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
          onPressed: () {
            // Lưu thông tin sản phẩm mới
            final productName = productNameController.text;
            final productCost =
                double.tryParse(productCostController.text) ?? 0.0;
            final productDescription = productDescriptionController.text;

            if (productName.isNotEmpty && productCost > 0) {
              // Lưu sản phẩm mới vào danh sách hoặc thực hiện hành động cần thiết
              // ref.read(productProvider.notifier).addProduct(newProduct);
              // Đóng màn hình sau khi thêm sản phẩm thành công
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

  void _showImagePreview(String imagePath) {
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
