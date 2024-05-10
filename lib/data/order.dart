import 'package:foursquare_client/data/product.dart';
// import 'package:freezed_annotation/freezed_annotation.dart';

class Order {
  final String id;
  final String clientName;
  final String clientPhone;
  final String clientAddress;
  final List<Product> products;
  Status status;
  final PaymentMethod paymentmenthod;
  late final String? note;
  late ProcessingStatus? processingStatus;
  late DeliveringStatus? deliveringStatus;

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

  void setStatus(Status status) {
    this.status = status;
  }

  void setProcessingStatus(ProcessingStatus status) {
    processingStatus = status;
  }

  void setDeliveringStatus(DeliveringStatus status) {
    deliveringStatus = status;
  }

  void setNote(String note) {
    this.note = note;
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
  Order(
      id: "1111",
      clientName: "Nghia1",
      clientPhone: "0123456789",
      clientAddress: "KTX Bách Khoa, Dĩ An, Bình Dương",
      products: [
        products[0].copyWithProduct(qty: 1000),
        products[1].copyWithProduct(qty: 999),
        products[2].copyWithProduct(qty: 10)
      ],
      status: Status.pending,
      paymentmenthod: PaymentMethod.postpay,
      note: 'Hàng phải được bỏ trong thùng bảo đảm, đính kèm theo hóa đơn'),
];
