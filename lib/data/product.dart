// ignore_for_file: unnecessary_this
// import 'package:freezed_annotation/freezed_annotation.dart';
// part 'product.freezed.dart';

// class Product {
//   final String name;
//   final List<String> imageUrls;
//   final double cost;
//   final List<ProductColor> colors;
//   final String? description;
//   final double qty;
//   final Status? status;

//   Product({
//     required this.name,
//     required this.imageUrls,
//     required this.cost,
//     required this.colors,
//     this.description,
//     required this.qty,
//     this.status,
//   });

//   get isFavorite => null;

//   Product copyWithProduct({double? qty}) {
//     return Product(
//       name: this.name,
//       imageUrls: this.imageUrls,
//       cost: this.cost,
//       colors: this.colors,
//       qty: qty ?? this.qty,
//       status: null,
//     );
//   }

//   Product copyWithProductStatus({Status? status}) {
//     return Product(
//       name: this.name,
//       imageUrls: this.imageUrls,
//       cost: this.cost,
//       colors: this.colors,
//       qty: this.qty,
//       status: null,
//     );
//   }

//   Product copyWithProductImage({required List<String> imageUrls}) {
//     return Product(
//       name: this.name,
//       imageUrls: this.imageUrls,
//       cost: this.cost,
//       colors: this.colors,
//       qty: this.qty,
//       status: null,
//     );
//   }

//   Product addImage(String imageUrl) {
//     final List<String> newImageUrls = List.from(imageUrls)..add(imageUrl);
//     return copyWithProductImage(imageUrls: newImageUrls);
//   }

//   Product removeImage(String imageUrl) {
//     final List<String> newImageUrls = List.from(imageUrls)..remove(imageUrl);
//     return copyWithProductImage(imageUrls: newImageUrls);
//   }
// }

// enum ProductColor {
//   red,
//   blue,
//   green,
//   yellow,
//   black,
// }

// enum Status {
//   pending,
//   processing,
//   delivering,
//   completed,
//   canceled,
// }

// enum ProcessingStatus {
//   nonProcessing,
//   isProcessing,
//   completedProcessing,
// }

// enum DeliveringStatus {
//   nonDelivering,
//   isDelivering,
//   completedDlivering,
// }