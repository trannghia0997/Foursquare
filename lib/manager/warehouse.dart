// ignore_for_file: unnecessary_import, unnecessary_string_interpolations, unused_element

import 'package:foursquare/services/warehouse/warehouse.dart';
import 'package:flutter/material.dart';
import 'package:foursquare/manager/detailWarehouse.dart';

class WarehousePage extends StatefulWidget {
  const WarehousePage({super.key});

  @override
  State<WarehousePage> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<WarehousePage> {
  @override
  Widget build(BuildContext context) {
    var listViewPadding =
        const EdgeInsets.symmetric(horizontal: 16, vertical: 24);
    return Scaffold(
      body: ListView(
        padding: listViewPadding,
        children: [
          Text(
            'Tất cả các kho bãi',
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          const SizedBox(height: 16),
          CategoryTile(
            warehouses: warehouses[0],
            imageUrl: 'https://i.postimg.cc/MTFSb8h6/Kho1.jpg',
          ),
          const SizedBox(height: 16),
          CategoryTile(
            warehouses: warehouses[1],
            imageUrl: '${warehouses[1].images}',
          ),
          const SizedBox(height: 16),
          CategoryTile(
            warehouses: warehouses[2],
            imageUrl: '${warehouses[2].images}',
          ),
        ],
      ),
    );
  }
}

class CategoryTile extends StatelessWidget {
  const CategoryTile(
      {required this.warehouses, required this.imageUrl, super.key});
  final String imageUrl;
  final Warehouse warehouses;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => _pushScreen(
        context: context,
        screen: DetailWarehouseScreen(
          warehouse: warehouses,
        ),
      ),
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
            ),
            Align(
              alignment: Alignment.center,
              child: Text(
                '${warehouses.warehouseAddress}',
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

void _pushScreen({required BuildContext context, required Widget screen}) {
  ThemeData themeData = Theme.of(context);
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (_) => Theme(data: themeData, child: screen),
    ),
  );
}
