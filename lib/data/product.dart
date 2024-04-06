import 'package:freezed_annotation/freezed_annotation.dart';

part 'product.freezed.dart';


@freezed

class Product with _$Product {

  const factory Product({

    required String name,

    required List<String> imageUrls,

    required double cost,

    String? description,

    required double qty,

    required Status? status,

  }) = _Product;

  // void set stud_qty(double qty){
  //   this.qty = qty;
  // }
  
  Product addImage(String imageUrl) {
    final List<String> newImageUrls = List.from(imageUrls)..add(imageUrl);
    return copyWith(imageUrls: newImageUrls);
  }

  Product removeImage(String imageUrl) {
    final List<String> newImageUrls = List.from(imageUrls)..remove(imageUrl);
    return copyWith(imageUrls: newImageUrls);
  }
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


List<Product> products = [

  const Product(

      name: 'Vải lụa đỏ',

      imageUrls: [

        'https://i.ibb.co/bF9GsjZ/vailuado.jpg',

        'https://i.ibb.co/YcBgqwf/a004b6e20ef289b7a786f6d3509f0d0f.jpg',

        'https://i.ibb.co/drB25Dt/OIP.jpg',

      ],

      cost: 300000,

      status: null,

      qty: 0),

  const Product(

    name: 'Short Sleeve Henley - Blue',

    imageUrls: [

      'https://images-na.ssl-images-amazon.com/images/I/81tpGc13OgL._AC_UX522_.jpg',

      'https://images-na.ssl-images-amazon.com/images/I/81oNSlos2tL._AC_UY679_.jpg',

      'https://images-na.ssl-images-amazon.com/images/I/819ea2vQIjL._AC_UY679_.jpg',

      'https://images-na.ssl-images-amazon.com/images/I/91SH0RB-8dL._AC_UY606_.jpg',

    ],

    cost: 300000,

    status: null,

    qty: 0,

  ),

  const Product(

    name: 'Polo RL V-Neck',

    imageUrls: [

      'https://images-na.ssl-images-amazon.com/images/I/61m68nuygSL._AC_UX522_.jpg',

      'https://images-na.ssl-images-amazon.com/images/I/61URnzIoCPL._AC_UX522_.jpg',

    ],

    cost: 24.99,

    status: null,

    qty: 0,

  ),

  const Product(

    name: 'Athletic-Fit Stretch Jeans',

    imageUrls: [

      'https://images-na.ssl-images-amazon.com/images/I/91SIuLNN%2BlL._AC_UY679_.jpg',

      'https://images-na.ssl-images-amazon.com/images/I/91Qpp%2BRPLtL._AC_UX522_.jpg',

    ],

    cost: 29.99,

    status: null,

    qty: 0,

  ),

  const Product(

    name: "Levi's Original Jeans",

    imageUrls: [

      'https://images-na.ssl-images-amazon.com/images/I/91L4zjZKF-L._AC_UX522_.jpg',

      'https://images-na.ssl-images-amazon.com/images/I/91Mf37jbSvL._AC_UX522_.jpg',

    ],

    cost: 39.99,

    status: null,

    qty: 0,

  ),

  const Product(

    name: '2-Pack Performance Shorts',

    imageUrls: [

      'https://images-na.ssl-images-amazon.com/images/I/A1lTY32j6gL._AC_UX679_.jpg',

      'https://images-na.ssl-images-amazon.com/images/I/71JYOHJ%2BS-L._AC_UX522_.jpg',

    ],

    cost: 19.99,

    status: null,

    qty: 0,

  ),

  const Product(

    name: "Levi's Cargo Shorts",

    imageUrls: [

      'https://images-na.ssl-images-amazon.com/images/I/915Io2JEUPL._AC_UX679_.jpg',

      'https://images-na.ssl-images-amazon.com/images/I/91WJgn0FNkL._AC_UX679_.jpg',

    ],

    cost: 29.99,

    status: null,

    qty: 0,

  ),

  const Product(

    name: '2-Pack Short-Sleeve Crewneck',

    imageUrls: [

      'https://images-na.ssl-images-amazon.com/images/I/911mb8PkHSL._AC_UX522_.jpg',

      'https://images-na.ssl-images-amazon.com/images/I/81LDpImWPAL._AC_UX522_.jpg',

    ],

    cost: 16.99,

    status: null,

    qty: 0,

  ),

  const Product(

    name: 'Waffle Knit Tunic Blouse',

    imageUrls: [

      'https://images-na.ssl-images-amazon.com/images/I/71lDML8KDQL._AC_UX522_.jpg',

      'https://images-na.ssl-images-amazon.com/images/I/61Ojm-DnojL._AC_UY679_.jpg',

    ],

    status: null,

    cost: 22.99,

    qty: 0,

  ),

  const Product(

    name: "Levi's Straight 505 Jeans",

    imageUrls: [

      'https://images-na.ssl-images-amazon.com/images/I/51D4eXuwKaL._AC_UX679_.jpg',

      'https://images-na.ssl-images-amazon.com/images/I/51sHwN6mDzL._AC_UX679_.jpg',

    ],

    cost: 34.99,

    status: null,

    qty: 0,

  ),

  const Product(

    name: "Levi's 715 Bootcut Jeans",

    imageUrls: [

      'https://images-na.ssl-images-amazon.com/images/I/81QwSgeXHTL._AC_UX522_.jpg',

      'https://images-na.ssl-images-amazon.com/images/I/81qmkt1Be0L._AC_UY679_.jpg',

    ],

    cost: 34.99,

    status: null,

    qty: 0,

  ),

  const Product(

    name: '3-Pack - Squeaky Plush Dog Toy',

    imageUrls: [

      'https://images-na.ssl-images-amazon.com/images/I/712YaF31-3L._AC_SL1000_.jpg',

      'https://images-na.ssl-images-amazon.com/images/I/71K1NzmHCfL._AC_SL1000_.jpg',

    ],

    cost: 9.99,

    status: null,

    qty: 0,

  ),

  const Product(

    name: 'Wobble Wag Giggle Ball',

    imageUrls: [

      'https://images-na.ssl-images-amazon.com/images/I/81XyqDXVwCL._AC_SX355_.jpg',

      'https://images-na.ssl-images-amazon.com/images/I/81Ye9KrP3pL._AC_SY355_.jpg',

    ],

    cost: 11.99,

    status: null,

    qty: 0,

  ),

  const Product(

    name: 'Duck Hide Twists',

    imageUrls: [

      'https://images-na.ssl-images-amazon.com/images/I/51dS9c0xIdL._SX342_.jpg',

      'https://images-na.ssl-images-amazon.com/images/I/81z4lvRtc5L._SL1500_.jpg',

    ],

    cost: 8.99,

    status: null,

    qty: 0,

  ),

  const Product(

    name: "Zuke's Mini Training Treats",

    imageUrls: [

      'https://images-na.ssl-images-amazon.com/images/I/81LV2CHtGKL._AC_SY355_.jpg',

      'https://images-na.ssl-images-amazon.com/images/I/81K30Bs9C6L._AC_SY355_.jpg',

    ],

    cost: 10.99,

    status: null,

    qty: 0,

  ),

];

