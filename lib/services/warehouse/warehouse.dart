import 'package:foursquare/services/product/product.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'warehouse.freezed.dart';
part 'warehouse.g.dart';

@freezed
class Warehouse with _$Warehouse {
  factory Warehouse({
    required String id,
    required String warehouseAddress,
    required String images,
    required List<Product> products,
    // List<User>? staff,
  }) = _Warehouse;

  factory Warehouse.fromJson(Map<String, Object?> json) =>
      _$WarehouseFromJson(json);
}

// List of Warehouses
List<Warehouse> warehouses = [
  Warehouse(
    id: 'warehouse1',
    warehouseAddress: '123 Main St, Springfield',
    images: 'https://i.postimg.cc/MTFSb8h6/Kho1.jpg',
    products: [
      products[0].copyWith(qty: 5000),
      products[1].copyWith(qty: 10000),
      products[2].copyWith(qty: 100),
    ],
  ),
  Warehouse(
    id: 'warehouse2',
    warehouseAddress: '456 Elm St, Shelbyville',
    images: 'https://i.postimg.cc/MTFSb8h6/Kho2.jpg',
    products: [],
  ),
  Warehouse(
    id: 'warehouse3',
    warehouseAddress: '789 Oak St, Capital City',
    images: 'https://i.postimg.cc/MTFSb8h6/Kho3.jpg',
    products: [],
  ),
];
