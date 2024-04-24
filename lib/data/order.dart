import 'package:foursquare_client/data/product.dart';
// import 'package:freezed_annotation/freezed_annotation.dart';

class Order {
  final String id;
  final String clientName;
  final String clientPhone;
  final String clientAddress;
  final List<Product> products;
  final Status status;
  final PaymentMethod paymentmenthod;
  late final String? note;
  late final ProcessingStatus? processingStatus;
  late final DeliveringStatus? deliveringStatus;

  Order({
    required this.id,
    required this.clientName,
    required this.clientPhone,
    required this.clientAddress,
    required this.products,
    required this.status,
    required this.paymentmenthod,
    this.note,
    this.processingStatus,
    this.deliveringStatus,
  });

  void updateProcessingStatus(ProcessingStatus status) {
    processingStatus = status;
  }

  void updateDeliveringStatus(DeliveringStatus status) {
    deliveringStatus = status;
  }
}

enum PaymentMethod {
  prepay,
  postpay, //receive goods and pay
}

List<Order> orders = [
  Order(
      id: "0001",
      clientName: "Nghia1",
      clientPhone: "0123456789",
      clientAddress: "KTX Bách Khoa, Dĩ An, Bình Dương",
      products: products,
      status: Status.processing,
      paymentmenthod: PaymentMethod.postpay,
      note: 'Hàng phải được bỏ trong thùng bảo đảm',
      processingStatus: ProcessingStatus.nonProcessing),
  Order(
      id: "0002",
      clientName: "Nghia2",
      clientPhone: "0123456788",
      clientAddress: "KTX khu A",
      products: products,
      status: Status.processing,
      paymentmenthod: PaymentMethod.prepay,
      processingStatus: ProcessingStatus.isProcessing),
  Order(
      id: "0003",
      clientName: "Nghia3",
      clientPhone: "0123456787",
      clientAddress: "KTX khu B",
      products: products,
      status: Status.processing,
      paymentmenthod: PaymentMethod.postpay,
      processingStatus: ProcessingStatus.completedProcessing),
  Order(
      id: "0001",
      clientName: "Nghia1",
      clientPhone: "0123456789",
      clientAddress: "KTX Bách Khoa, Dĩ An, Bình Dương",
      products: products,
      status: Status.delivering,
      paymentmenthod: PaymentMethod.postpay,
      note: 'Hàng phải được bỏ trong thùng bảo đảm',
      deliveringStatus: DeliveringStatus.nonDelivering),
  Order(
      id: "0002",
      clientName: "Nghia2",
      clientPhone: "0123456789",
      clientAddress: "KTX Bách Khoa, Dĩ An, Bình Dương",
      products: products,
      status: Status.delivering,
      paymentmenthod: PaymentMethod.postpay,
      deliveringStatus: DeliveringStatus.isDelivering),
  Order(
      id: "0003",
      clientName: "Nghia3",
      clientPhone: "0123456789",
      clientAddress: "KTX Bách Khoa, Dĩ An, Bình Dương",
      products: products,
      status: Status.delivering,
      paymentmenthod: PaymentMethod.postpay,
      deliveringStatus: DeliveringStatus.completedDlivering),
];
