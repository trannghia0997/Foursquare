import 'package:flutter/material.dart';
import 'package:foursquare/manager/detail_warehouse.dart';
import 'package:foursquare/riverpod/working_unit.dart';
import 'package:foursquare/shared/image.dart';
import 'package:foursquare/shared/models/address.dart';
import 'package:foursquare/shared/models/enums/working_unit_type.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class WarehouseManagementPage extends HookConsumerWidget {
  const WarehouseManagementPage({super.key});

  Widget _buildBaseWidget(Widget child) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Quản lý kho bãi'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
        child: child,
      ),
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final warehouseList =
        ref.watch(workingUnitInfoByTypeProvider(WorkingUnitType.warehouse));
    return warehouseList.when(
      data: (List<WorkingUnitInfo> data) => _buildBaseWidget(Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: data.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      CategoryTile(
                        warehouse: data[index],
                      ),
                      const SizedBox(height: 16),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      )),
      error: (Object error, _) => _buildBaseWidget(
        Center(
          child: Text(
            'Error: $error',
          ),
        ),
      ),
      loading: () => _buildBaseWidget(const Center(
        child: CircularProgressIndicator(),
      )),
    );
  }
}

class CategoryTile extends StatelessWidget {
  const CategoryTile({
    required this.warehouse,
    super.key,
  });

  final WorkingUnitInfo warehouse;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailWarehouseScreen(
              warehouse: warehouse,
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
              warehouse.workingUnit.imageUrl ??
                  generateRandomImageUrl(
                    seed: warehouse.workingUnit.id,
                  ),
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
                warehouse.workingUnit.name,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                      color: Colors.white,
                    ),
              ),
            ),
            Positioned(
              top: 8,
              right: 8,
              child: IconButton(
                icon: const Icon(Icons.info, color: Colors.white),
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return SimpleDialog(
                        title: Text(
                          warehouse.workingUnit.name,
                          textAlign: TextAlign.center,
                        ),
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Center(
                              child: Text(
                                'Địa chỉ: ${warehouse.address?.fullAddress ?? ''}',
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: const Text('Close'),
                          ),
                        ],
                      );
                    },
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
