import 'package:foursquare/services/product/colour.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'product.freezed.dart';
part 'product.g.dart';

@freezed
class Product with _$Product {
  const Product._();

  const factory Product({
    required String id,
    DateTime? created,
    DateTime? updated,
    required String name,
    String? description,
    String? provider,
    required int price,
    int? qty,
    required List<String> imageUrls,
    required List<Colour> colours,
  }) = _Product;

  factory Product.fromJson(Map<String, Object?> json) =>
      _$ProductFromJson(json);

  Product removeImage(String url) {
    List<String> updatedImageUrls = List.from(imageUrls);
    updatedImageUrls.remove(url);
    return copyWith(imageUrls: updatedImageUrls);
  }
}

List<Product> products = [
  const Product(
    id: '00001',
    name: 'Vải lụa',
    imageUrls: [
      'https://i.ibb.co/bF9GsjZ/vailuado.jpg',
      'https://i.ibb.co/YcBgqwf/a004b6e20ef289b7a786f6d3509f0d0f.jpg',
      'https://i.ibb.co/drB25Dt/OIP.jpg',
    ],
    price: 300000,
    colours: [
      Colour(name: 'red', hex: '#FF0000'),
    ],
    description: 'Vải lụa là một loại vải quý hiếm được làm từ sợi tơ tằm...',
  ),
  const Product(
    id: '00002',
    name: 'Vải hoa văn',
    imageUrls: [
      'https://i.ibb.co/pjDjh23/7357ad905de155e3e468fcc81c693a53.jpg',
      'https://i.ibb.co/vj0M5wn/7f77511a346b09b8cf47426499316d5c.jpg',
    ],
    price: 300000,
    colours: [
      Colour(name: 'red', hex: '#FF0000'),
      Colour(name: 'blue', hex: '#0000FF'),
      Colour(name: 'orange', hex: '#FFA500')
    ],
  ),
  const Product(
    id: '00003',
    name: 'Vải len',
    imageUrls: [
      'https://i.ibb.co/ckxM1DY/R-2.jpg',
      'https://i.ibb.co/LpnWZ2C/OIP-3.jpg',
      'https://i.ibb.co/TBJR95D/OIP-2.jpg',
    ],
    price: 400000,
    colours: [
      Colour(name: 'black', hex: '#000000'),
      Colour(name: 'blue', hex: '#0000FF'),
      Colour(name: 'green', hex: '#008000'),
      Colour(name: 'red', hex: '#FF0000'),
      Colour(name: 'yellow', hex: '#FFFF00'),
    ],
  ),
  const Product(
    id: '00004',
    name: 'Athletic-Fit Stretch Jeans',
    imageUrls: [
      'https://images-na.ssl-images-amazon.com/images/I/91SIuLNN%2BlL._AC_UY679_.jpg',
      'https://images-na.ssl-images-amazon.com/images/I/91Qpp%2BRPLtL._AC_UX522_.jpg',
    ],
    price: 2999,
    colours: [],
  ),
  const Product(
    id: '00005',
    name: "Levi's Original Jeans",
    imageUrls: [
      'https://images-na.ssl-images-amazon.com/images/I/91L4zjZKF-L._AC_UX522_.jpg',
      'https://images-na.ssl-images-amazon.com/images/I/91Mf37jbSvL._AC_UX522_.jpg',
    ],
    price: 3999,
    colours: [],
  ),
  const Product(
    id: '00006',
    name: 'Performance Shorts',
    imageUrls: [
      'https://images-na.ssl-images-amazon.com/images/I/A1lTY32j6gL._AC_UX679_.jpg',
      'https://images-na.ssl-images-amazon.com/images/I/71JYOHJ%2BS-L._AC_UX522_.jpg',
    ],
    price: 1999,
    colours: [],
  ),
  const Product(
    id: '00007',
    name: "Levi's Cargo Shorts",
    imageUrls: [
      'https://images-na.ssl-images-amazon.com/images/I/915Io2JEUPL._AC_UX679_.jpg',
      'https://images-na.ssl-images-amazon.com/images/I/91WJgn0FNkL._AC_UX679_.jpg',
    ],
    price: 2999,
    colours: [],
  ),
  const Product(
    id: '00008',
    name: 'Short-Sleeve Crewneck',
    imageUrls: [
      'https://images-na.ssl-images-amazon.com/images/I/911mb8PkHSL._AC_UX522_.jpg',
      'https://images-na.ssl-images-amazon.com/images/I/81LDpImWPAL._AC_UX522_.jpg',
    ],
    price: 1699,
    colours: [],
  ),
  const Product(
    id: '00009',
    name: 'Waffle Knit Tunic Blouse',
    imageUrls: [
      'https://images-na.ssl-images-amazon.com/images/I/71lDML8KDQL._AC_UX522_.jpg',
      'https://images-na.ssl-images-amazon.com/images/I/61Ojm-DnojL._AC_UY679_.jpg',
    ],
    price: 2299,
    colours: [],
  ),
  const Product(
    id: '00010',
    name: "Levi's Straight 505 Jeans",
    imageUrls: [
      'https://images-na.ssl-images-amazon.com/images/I/51D4eXuwKaL._AC_UX679_.jpg',
      'https://images-na.ssl-images-amazon.com/images/I/51sHwN6mDzL._AC_UX679_.jpg',
    ],
    price: 3499,
    colours: [],
  ),
  const Product(
    id: '00011',
    name: "Levi's 715 Bootcut Jeans",
    imageUrls: [
      'https://images-na.ssl-images-amazon.com/images/I/81QwSgeXHTL._AC_UX522_.jpg',
      'https://images-na.ssl-images-amazon.com/images/I/81qmkt1Be0L._AC_UY679_.jpg',
    ],
    price: 3499,
    colours: [],
  ),
  const Product(
    id: '00012',
    name: '3-Pack Dog Toy',
    imageUrls: [
      'https://images-na.ssl-images-amazon.com/images/I/712YaF31-3L._AC_SL1000_.jpg',
      'https://images-na.ssl-images-amazon.com/images/I/71K1NzmHCfL._AC_SL1000_.jpg',
    ],
    price: 999,
    colours: [],
  ),
  const Product(
    id: '00013',
    name: 'Wobble Wag Giggle Ball',
    imageUrls: [
      'https://images-na.ssl-images-amazon.com/images/I/81XyqDXVwCL._AC_SX355_.jpg',
      'https://images-na.ssl-images-amazon.com/images/I/81Ye9KrP3pL._AC_SY355_.jpg',
    ],
    price: 1199,
    colours: [],
  ),
  const Product(
    id: '00014',
    name: 'Duck Hide Twists',
    imageUrls: [
      'https://images-na.ssl-images-amazon.com/images/I/51dS9c0xIdL._SX342_.jpg',
      'https://images-na.ssl-images-amazon.com/images/I/81z4lvRtc5L._SL1500_.jpg',
    ],
    price: 899,
    colours: [],
  ),
  const Product(
    id: '00015',
    name: "Mini Training Treats",
    imageUrls: [
      'https://images-na.ssl-images-amazon.com/images/I/81LV2CHtGKL._AC_SY355_.jpg',
      'https://images-na.ssl-images-amazon.com/images/I/81K30Bs9C6L._AC_SY355_.jpg',
    ],
    price: 1099,
    colours: [],
  ),
];
