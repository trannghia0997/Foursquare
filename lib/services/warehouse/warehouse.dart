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

  void updateProductQty(String productId, int newQty) {
    if (newQty < 0) {
      throw ArgumentError('Số lượng sản phẩm không đủ');
    }
    final productIndex =
        products.indexWhere((product) => product.id == productId);
    if (productIndex != -1) {
      products[productIndex] = products[productIndex].copyWith(qty: newQty);
    }
  }
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
      products[3].copyWith(qty: 200),
      products[4].copyWith(qty: 300),
      products[5].copyWith(qty: 400),
      products[6].copyWith(qty: 500),
      products[7].copyWith(qty: 600),
      products[8].copyWith(qty: 700),
      products[9].copyWith(qty: 800),
      products[10].copyWith(qty: 900),
      products[11].copyWith(qty: 1000),
      products[12].copyWith(qty: 1100),
      products[13].copyWith(qty: 1200),
      products[14].copyWith(qty: 1300),
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
