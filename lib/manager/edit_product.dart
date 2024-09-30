import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:foursquare/services/pb.dart';
import 'package:foursquare/shared/models/product.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class EditProductScreen extends HookConsumerWidget {
  const EditProductScreen({
    required this.product,
    super.key,
  });

  final ProductDto product;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedQty = useState(0);
    final productNameController = useTextEditingController(text: product.name);
    final productCostController =
        useTextEditingController(text: product.expectedPrice.toString());
    final productDescriptionController =
        useTextEditingController(text: product.description ?? '');

    return Scaffold(
      appBar: AppBar(
        title: const Text('Chỉnh sửa thông tin sản phẩm'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
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
                      selectedQty.value = int.tryParse(value) ?? 0;
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
                        onPressed: () async {
                          final productEdit = ProductEditDto.fromJson(
                              product.toJson())
                            ..name = productNameController.text
                            ..expectedPrice =
                                int.tryParse(productCostController.text) ?? 0
                            ..description = productDescriptionController.text;
                          await PBApp.instance
                              .collection('products')
                              .update(product.id, body: productEdit.toJson());
                          if (!context.mounted) return;
                          Navigator.of(context).pop();
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
