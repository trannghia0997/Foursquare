// ignore_for_file: unused_local_variable, file_names, use_key_in_widget_constructors, library_private_types_in_public_api, avoid_print

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:async';
import 'package:foursquare_client/data/product.dart';

class AddProductScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Thêm sản phẩm mới'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child:
              ProductForm(), // Tạo một widget ProductForm để nhập thông tin sản phẩm
        ),
      ),
    );
  }
}

class ProductForm extends StatefulWidget {
  @override
  _ProductFormState createState() => _ProductFormState();
}

class _ProductFormState extends State<ProductForm> {
  final TextEditingController productNameController = TextEditingController();
  final TextEditingController productCostController = TextEditingController();
  final TextEditingController productDescriptionController =
      TextEditingController();
      
  final List<XFile> _selectedImages = [];
  
  get colors => null;

  Future<void> _pickImages() async {
    List<XFile> resultList = <XFile>[];
    try {
      resultList = await ImagePicker().pickMultiImage(
        requestFullMetadata: true,
      );
    } on Exception catch (e) {
      print(e);
    }

    if (!mounted) return;

    setState(() {
      _selectedImages.clear();
      _selectedImages.addAll(resultList);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Column(
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
                  child: GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                    ),
                    itemCount: _selectedImages.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Image.file(
                        File(_selectedImages[index].path),
                        fit: BoxFit.cover,
                      );
                    },
                  ),
                ),
                const SizedBox(height: 18),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(height: 8),
                    ElevatedButton(
                      onPressed: _pickImages,
                      child: const Text('Chọn hình'),
                    ),
                  ],
                ),
              ],
            ),
          ),
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
                final List<String> imageUrls =
                    _selectedImages.map((file) => file.path).toList();
                final newProduct = Product(
                  name: productName,
                  imageUrls: imageUrls,
                  cost: productCost,
                  colors: colors,
                  description: productDescription,
                  qty: 0,
                  status: null,
                );

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
      ),
    ]);
  }
}
