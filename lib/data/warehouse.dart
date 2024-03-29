import 'package:foursquare_client/data/product.dart';
import 'package:foursquare_client/profile/userData/user.dart';
import 'package:foursquare_client/profile/userData/user_data.dart';

class Warehouse {
  final String id;
  final String warehouseAddress;
  final String images;
  final List<User> staff;
  final List<Product> products;

  Warehouse({
    required this.id,
    required this.warehouseAddress,
    required this.images,
    required this.staff,
    required this.products,
  });
}

List<User> users = [UserData().preparerUser, UserData.shipperUser];

List<Warehouse> warehouses = [
  Warehouse(
    id: "01",
    warehouseAddress: "KTX Bach Khoa 1",
    images: 'https://i.postimg.cc/MTFSb8h6/Kho1.jpg',
    staff: users,
    products: products,
  ),
  Warehouse(
    id: "02",
    warehouseAddress: "KTX Bach Khoa 2",
    images: 'https://i.postimg.cc/23pNM7kg/Kho2.jpg',
    staff: users,
    products: products,
  ),
  Warehouse(
    id: "03",
    warehouseAddress: "KTX Bach Khoa 3",
    images: 'https://i.postimg.cc/0jKqVBsp/Kho3.jpg',
    staff: users,
    products: products,
  ),
];
