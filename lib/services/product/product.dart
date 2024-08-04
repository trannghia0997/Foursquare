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
    description:
        'Vải hoa văn với họa tiết đa dạng, phù hợp cho nhiều mục đích sử dụng...',
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
    description:
        'Vải len mềm mại, giữ ấm tốt, thích hợp cho các sản phẩm mùa đông...',
  ),
  const Product(
    id: '00004',
    name: 'Vải cotton',
    imageUrls: [
      'https://i.ibb.co/6rQdZs5/Vai-cotton1.jpg',
      'https://i.ibb.co/vq22mkr/Vai-cotton2.jpg',
      'https://i.ibb.co/qm1PqpF/vai-cotton3.jpg',
    ],
    price: 200000,
    colours: [
      Colour(name: 'white', hex: '#FFFFFF'),
      Colour(name: 'black', hex: '#000000'),
    ],
    description:
        'Vải cotton mềm mại, thoáng mát, thích hợp cho mọi loại trang phục...',
  ),
  const Product(
    id: '00005',
    name: 'Vải nhung',
    imageUrls: [
      'https://i.ibb.co/MB5cLSz/vai-nhung1.jpg',
      'https://i.ibb.co/QK8xZJm/vai-nhung2.jpg',
      'https://i.ibb.co/fk9N80D/vai-nhung3.jpg',
      'https://i.ibb.co/NrbkgY5/vai-nhung4.jpg',
    ],
    price: 350000,
    colours: [
      Colour(name: 'purple', hex: '#800080'),
      Colour(name: 'red', hex: '#FF0000'),
    ],
    description:
        'Vải nhung mềm mại, sang trọng, thích hợp cho các sản phẩm cao cấp...',
  ),
  const Product(
    id: '00006',
    name: 'Vải kaki',
    imageUrls: [
      'https://i.ibb.co/6PMqMwW/vai-kaki1.jpg',
      'https://i.ibb.co/PxwdTD6/vai-kaki2.jpg',
      'https://i.ibb.co/Fkvc6fh/vai-kaki3.jpg',
      'https://i.ibb.co/bgDspR0/vai-kaki4.jpg',
      'https://i.ibb.co/SP6qQKK/vai-kaki5.jpg',
    ],
    price: 250000,
    colours: [
      Colour(name: 'green', hex: '#008000'),
      Colour(name: 'brown', hex: '#A52A2A'),
    ],
    description:
        'Vải kaki bền chắc, thích hợp cho trang phục công sở và dã ngoại...',
  ),
  const Product(
    id: '00007',
    name: 'Vải đũi',
    imageUrls: [
      'https://i.ibb.co/sPPz3Ld/vai-dui1.jpg',
      'https://i.ibb.co/PtWn2rz/vai-dui2.jpg',
      'https://i.ibb.co/2WwPZyN/vai-dui3.jpg',
      'https://i.ibb.co/S6m7jMX/vai-dui4.jpg',
    ],
    price: 300000,
    colours: [
      Colour(name: 'white', hex: '#FFFFFF'),
      Colour(name: 'cream', hex: '#FFFDD0'),
    ],
    description:
        'Vải đũi nhẹ nhàng, thoáng mát, thích hợp cho trang phục mùa hè...',
  ),
  const Product(
    id: '00008',
    name: 'Vải denim',
    imageUrls: [
      'https://i.ibb.co/C9zmp7J/vai-denim1.jpg',
      'https://i.ibb.co/1QWggs7/vai-denim2.jpg',
      'https://i.ibb.co/6yFghdN/vai-denim3.jpg',
      'https://i.ibb.co/r4VD8Fz/vai-denim4.webp',
      'https://i.ibb.co/26JmxG8/vai-denim5.jpg',
    ],
    price: 280000,
    colours: [
      Colour(name: 'blue', hex: '#0000FF'),
      Colour(name: 'black', hex: '#000000'),
    ],
    description: 'Vải denim bền chắc, thích hợp cho các sản phẩm quần jeans...',
  ),
  const Product(
    id: '00009',
    name: 'Vải chiffon',
    imageUrls: [
      'https://i.ibb.co/Df2vfJn/vai-chiffon1.jpg',
      'https://i.ibb.co/GTgVnpH/vai-chiffon2.jpg',
      'https://i.ibb.co/Syj8Hb4/vai-chiffon3.jpg',
    ],
    price: 320000,
    colours: [
      Colour(name: 'pink', hex: '#FFC0CB'),
      Colour(name: 'blue', hex: '#ADD8E6'),
    ],
    description:
        'Vải chiffon nhẹ nhàng, bay bổng, thích hợp cho các sản phẩm áo dài...',
  ),
  const Product(
    id: '00010',
    name: 'Vải organza',
    imageUrls: [
      'https://i.ibb.co/sw4H509/vai-organza1.jpg',
      'https://i.ibb.co/GJVpSmp/vai-organza2.jpg',
      'https://i.ibb.co/9NmgcWH/vai-organza3.jpg',
    ],
    price: 370000,
    colours: [
      Colour(name: 'white', hex: '#FFFFFF'),
      Colour(name: 'purple', hex: '#800080'),
    ],
    description:
        'Vải organza trong suốt, lấp lánh, thích hợp cho các sản phẩm váy cưới...',
  ),
  const Product(
    id: '00011',
    name: 'Vải voan',
    imageUrls: [
      'https://i.ibb.co/zZ5HYkn/vai-voan1.jpg',
      'https://i.ibb.co/bWHYv2Z/vai-voan2.jpg',
      'https://i.ibb.co/y66jxWx/vai-voan3.jpg',
      'https://i.ibb.co/84BmvJ0/vai-voan4.jpg',
    ],
    price: 330000,
    colours: [
      Colour(name: 'white', hex: '#FFFFFF'),
      Colour(name: 'black', hex: '#000000'),
    ],
    description:
        'Vải voan mềm mại, thoáng mát, thích hợp cho các sản phẩm áo cánh...',
  ),
  const Product(
    id: '00012',
    name: 'Vải lụa satin',
    imageUrls: [
      'https://i.ibb.co/W6cmfFW/vai-lua-satin1.png',
      'https://i.ibb.co/L6zWz07/vai-lua-satin2.jpg',
      'https://i.ibb.co/F3bMVS6/vai-lua-satin3.jpg',
    ],
    price: 450000,
    colours: [
      Colour(name: 'red', hex: '#FF0000'),
      Colour(name: 'blue', hex: '#0000FF'),
    ],
    description:
        'Vải lụa satin bóng mượt, sang trọng, thích hợp cho các sản phẩm áo dài...',
  ),
  const Product(
    id: '00013',
    name: 'Vải taffeta',
    imageUrls: [
      'https://i.ibb.co/ZhLp8Fb/vai-taffeta1.jpg',
      'https://i.ibb.co/QkvhHLz/vai-taffeta2.jpg',
      'https://i.ibb.co/ZdhHp1P/vai-taffeta3.webp',
    ],
    price: 400000,
    colours: [
      Colour(name: 'purple', hex: '#800080'),
      Colour(name: 'green', hex: '#008000'),
    ],
    description:
        'Vải taffeta cứng cáp, thích hợp cho các sản phẩm váy dạ hội...',
  ),
  const Product(
    id: '00014',
    name: 'Vải thun',
    imageUrls: [
      'https://i.ibb.co/ZmPKDP1/vai-thun1.jpg',
      'https://i.ibb.co/HNfXfMQ/vai-thun2.jpg',
      'https://i.ibb.co/F0svbnr/vai-thun3.jpg',
    ],
    price: 220000,
    colours: [
      Colour(name: 'black', hex: '#000000'),
      Colour(name: 'white', hex: '#FFFFFF'),
    ],
    description:
        'Vải thun co giãn, thoải mái, thích hợp cho các sản phẩm áo thun...',
  ),
  const Product(
    id: '00015',
    name: 'Vải ren',
    imageUrls: [
      'https://i.ibb.co/NZYdQwY/vai-ren1.jpg',
      'https://i.ibb.co/9GTv83y/vai-ren2.jpg',
      'https://i.ibb.co/dcCnC2F/vai-ren3.jpg',
      'https://i.ibb.co/pdcMsbS/vai-ren4.jpg',
      'https://i.ibb.co/Rv1xkbC/vai-ren5.jpg',
    ],
    price: 380000,
    colours: [
      Colour(name: 'white', hex: '#FFFFFF'),
      Colour(name: 'black', hex: '#000000'),
    ],
    description:
        'Vải ren tinh tế, sang trọng, thích hợp cho các sản phẩm nội y...',
  ),
];
