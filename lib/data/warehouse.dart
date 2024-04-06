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

List<Warehouse> warehouses = [
  Warehouse(
    id: "01",
    warehouseAddress: "KTX Bach Khoa 1",
    images: 'https://i.ibb.co/vdtGKvs/image.jpg',
    staff: [UserData.preparerUser, UserData.shipperUser],
    products: [products.first],
  ),
  Warehouse(
    id: "02",
    warehouseAddress: "KTX Bach Khoa 2",
    images: 'https://i.ibb.co/C8SLFtN/850b2cee5a42f06e058c78645fa00c60.jpg',
    staff: [UserData.preparerUserA],
    products: products,
  ),
  Warehouse(
    id: "03",
    warehouseAddress: "KTX Bach Khoa 3",
    images: 'https://i.ibb.co/zSS54s6/Cho-vai-Minh-Phung.jpg',
    staff: [UserData.preparerUserB],
    products: products,
  ),
];
