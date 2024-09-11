import 'package:flutter/material.dart';
import 'package:foursquare/manager/detail_warehouse.dart';

class WarehouseManamentPage extends StatefulWidget {
  final List<Warehouse> warehouses;

  const WarehouseManamentPage({super.key, required this.warehouses});

  @override
  State<WarehouseManamentPage> createState() => _WarehouseManamentPageState();
}

class _WarehouseManamentPageState extends State<WarehouseManamentPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Quản lý kho bãi'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: widget.warehouses.length,
                itemBuilder: (context, index) {
                  final warehouse = widget.warehouses[index];
                  return Column(
                    children: [
                      CategoryTile(
                        warehouses: warehouse,
                        imageUrl: warehouse.images,
                      ),
                      const SizedBox(height: 16),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CategoryTile extends StatelessWidget {
  const CategoryTile({
    required this.warehouses,
    required this.imageUrl,
    super.key,
  });

  final String imageUrl;
  final Warehouse warehouses;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailWarehouseScreen(
              warehouse: warehouses,
            ),
          ),
        );
      },
      child: Container(
        height: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
        ),
        clipBehavior: Clip.antiAlias,
        child: Stack(
          fit: StackFit.expand,
          children: [
            Image.network(
              imageUrl,
              color: Colors.grey[200],
              colorBlendMode: BlendMode.darken,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) {
                return const Center(child: Text('Không thể tải hình ảnh'));
              },
              loadingBuilder: (context, child, progress) {
                if (progress == null) {
                  return child;
                } else {
                  return const Center(child: CircularProgressIndicator());
                }
              },
            ),
            Align(
              alignment: Alignment.center,
              child: Text(
                warehouses.warehouseAddress,
                style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                      color: Colors.white,
                    ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
