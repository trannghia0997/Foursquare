// ignore_for_file: unnecessary_this
// import 'package:freezed_annotation/freezed_annotation.dart';
// part 'product.freezed.dart';

class Product {
  final String name;
  final List<String> imageUrls;
  final double cost;
  final List<ProductColor> colors;
  final String? description;
  final double qty;
  final Status? status;

  Product({
    required this.name,
    required this.imageUrls,
    required this.cost,
    required this.colors,
    this.description,
    required this.qty,
    this.status,
  });

  get isFavorite => null;

  Product copyWithProduct({double? qty}) {
    return Product(
      name: this.name,
      imageUrls: this.imageUrls,
      cost: this.cost,
      colors: this.colors,
      qty: qty ?? this.qty,
      status: null,
    );
  }

  Product copyWithProductStatus({Status? status}) {
    return Product(
      name: this.name,
      imageUrls: this.imageUrls,
      cost: this.cost,
      colors: this.colors,
      qty: this.qty,
      status: null,
    );
  }

  Product copyWithProductImage({required List<String> imageUrls}) {
    return Product(
      name: this.name,
      imageUrls: this.imageUrls,
      cost: this.cost,
      colors: this.colors,
      qty: this.qty,
      status: null,
    );
  }

  Product addImage(String imageUrl) {
    final List<String> newImageUrls = List.from(imageUrls)..add(imageUrl);
    return copyWithProductImage(imageUrls: newImageUrls);
  }

  Product removeImage(String imageUrl) {
    final List<String> newImageUrls = List.from(imageUrls)..remove(imageUrl);
    return copyWithProductImage(imageUrls: newImageUrls);
  }
}

enum ProductColor {
  red,
  blue,
  green,
  yellow,
  black,
}

enum Status {
  pending,
  processing,
  delivering,
  completed,
  canceled,
}

enum ProcessingStatus {
  nonProcessing,
  isProcessing,
  completedProcessing,
}

enum DeliveringStatus {
  nonDelivering,
  isDelivering,
  completedDlivering,
}

List<Product> products = [
  Product(
      name: 'Vải lụa',
      imageUrls: [
        'https://i.ibb.co/bF9GsjZ/vailuado.jpg',
        'https://i.ibb.co/YcBgqwf/a004b6e20ef289b7a786f6d3509f0d0f.jpg',
        'https://i.ibb.co/drB25Dt/OIP.jpg',
      ],
      cost: 300000,
      colors: [ProductColor.red],
      description:
          'Vải lụa là một loại vải quý hiếm được làm từ sợi tơ tằm. Đây là một số mô tả về vải lụa: Mềm mại và mượt mà: Vải lụa có cảm giác mềm mại và mượt mà khi chạm vào. Điều này làm cho nó rất dễ chịu khi tiếp xúc với da. Bóng loáng và lấp lánh: Lụa được biết đến với độ bóng cao và khả năng phản chiếu ánh sáng tốt, tạo ra một vẻ đẹp lấp lánh và sang trọng. Mỏng nhẹ và thoáng mát: Vải lụa có cấu trúc mỏng nhẹ, cho phép không khí lưu thông tốt qua vải, tạo cảm giác thoáng mát khi mặc. Tính đàn hồi và co giãn hạn chế: Lụa có tính đàn hồi tự nhiên hạn chế so với các loại vải khác như cotton hay polyester, do đó cần được sử dụng và bền đó để Res Man Can S Est France Toulouse Saint',
      status: null,
      qty: 0),
  Product(
    name: 'Vải hoa văn',
    imageUrls: [
      'https://i.ibb.co/pjDjh23/7357ad905de155e3e468fcc81c693a53.jpg',
      'https://i.ibb.co/vj0M5wn/7f77511a346b09b8cf47426499316d5c.jpg',
    ],
    cost: 300000,
    colors: [ProductColor.green, ProductColor.blue],
    status: null,
    qty: 0,
  ),
  Product(
    name: 'Vải len',
    imageUrls: [
      'https://i.ibb.co/ckxM1DY/R-2.jpg',
      'https://i.ibb.co/LpnWZ2C/OIP-3.jpg',
      'https://i.ibb.co/TBJR95D/OIP-2.jpg',
    ],
    cost: 400000,
    colors: [
      ProductColor.black,
      ProductColor.blue,
      ProductColor.green,
      ProductColor.red,
      ProductColor.yellow
    ],
    status: null,
    qty: 0,
  ),
  Product(
    name: 'Athletic-Fit Stretch Jeans',
    imageUrls: [
      'https://images-na.ssl-images-amazon.com/images/I/91SIuLNN%2BlL._AC_UY679_.jpg',
      'https://images-na.ssl-images-amazon.com/images/I/91Qpp%2BRPLtL._AC_UX522_.jpg',
    ],
    cost: 29.99,
    colors: [],
    status: null,
    qty: 0,
  ),
  Product(
    name: "Levi's Original Jeans",
    imageUrls: [
      'https://images-na.ssl-images-amazon.com/images/I/91L4zjZKF-L._AC_UX522_.jpg',
      'https://images-na.ssl-images-amazon.com/images/I/91Mf37jbSvL._AC_UX522_.jpg',
    ],
    cost: 39.99,
    colors: [],
    status: null,
    qty: 0,
  ),
  Product(
    name: 'Performance Shorts',
    imageUrls: [
      'https://images-na.ssl-images-amazon.com/images/I/A1lTY32j6gL._AC_UX679_.jpg',
      'https://images-na.ssl-images-amazon.com/images/I/71JYOHJ%2BS-L._AC_UX522_.jpg',
    ],
    cost: 19.99,
    colors: [],
    status: null,
    qty: 0,
  ),
  Product(
    name: "Levi's Cargo Shorts",
    imageUrls: [
      'https://images-na.ssl-images-amazon.com/images/I/915Io2JEUPL._AC_UX679_.jpg',
      'https://images-na.ssl-images-amazon.com/images/I/91WJgn0FNkL._AC_UX679_.jpg',
    ],
    cost: 29.99,
    colors: [],
    status: null,
    qty: 0,
  ),
  Product(
    name: 'Short-Sleeve Crewneck',
    imageUrls: [
      'https://images-na.ssl-images-amazon.com/images/I/911mb8PkHSL._AC_UX522_.jpg',
      'https://images-na.ssl-images-amazon.com/images/I/81LDpImWPAL._AC_UX522_.jpg',
    ],
    cost: 16.99,
    colors: [],
    status: null,
    qty: 0,
  ),
  Product(
    name: 'Waffle Knit Tunic Blouse',
    imageUrls: [
      'https://images-na.ssl-images-amazon.com/images/I/71lDML8KDQL._AC_UX522_.jpg',
      'https://images-na.ssl-images-amazon.com/images/I/61Ojm-DnojL._AC_UY679_.jpg',
    ],
    status: null,
    colors: [],
    cost: 22.99,
    qty: 0,
  ),
  Product(
    name: "Levi's Straight 505 Jeans",
    imageUrls: [
      'https://images-na.ssl-images-amazon.com/images/I/51D4eXuwKaL._AC_UX679_.jpg',
      'https://images-na.ssl-images-amazon.com/images/I/51sHwN6mDzL._AC_UX679_.jpg',
    ],
    cost: 34.99,
    colors: [],
    status: null,
    qty: 0,
  ),
  Product(
    name: "Levi's 715 Bootcut Jeans",
    imageUrls: [
      'https://images-na.ssl-images-amazon.com/images/I/81QwSgeXHTL._AC_UX522_.jpg',
      'https://images-na.ssl-images-amazon.com/images/I/81qmkt1Be0L._AC_UY679_.jpg',
    ],
    cost: 34.99,
    colors: [],
    status: null,
    qty: 0,
  ),
  Product(
    name: '3-Pack Dog Toy',
    imageUrls: [
      'https://images-na.ssl-images-amazon.com/images/I/712YaF31-3L._AC_SL1000_.jpg',
      'https://images-na.ssl-images-amazon.com/images/I/71K1NzmHCfL._AC_SL1000_.jpg',
    ],
    cost: 9.99,
    colors: [],
    status: null,
    qty: 0,
  ),
  Product(
    name: 'Wobble Wag Giggle Ball',
    imageUrls: [
      'https://images-na.ssl-images-amazon.com/images/I/81XyqDXVwCL._AC_SX355_.jpg',
      'https://images-na.ssl-images-amazon.com/images/I/81Ye9KrP3pL._AC_SY355_.jpg',
    ],
    cost: 11.99,
    colors: [],
    status: null,
    qty: 0,
  ),
  Product(
    name: 'Duck Hide Twists',
    imageUrls: [
      'https://images-na.ssl-images-amazon.com/images/I/51dS9c0xIdL._SX342_.jpg',
      'https://images-na.ssl-images-amazon.com/images/I/81z4lvRtc5L._SL1500_.jpg',
    ],
    cost: 8.99,
    colors: [],
    status: null,
    qty: 0,
  ),
  Product(
    name: "Mini Training Treats",
    imageUrls: [
      'https://images-na.ssl-images-amazon.com/images/I/81LV2CHtGKL._AC_SY355_.jpg',
      'https://images-na.ssl-images-amazon.com/images/I/81K30Bs9C6L._AC_SY355_.jpg',
    ],
    cost: 10.99,
    colors: [],
    status: null,
    qty: 0,
  ),
];
