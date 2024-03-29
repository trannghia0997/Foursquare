import 'package:foursquare_client/data/product.dart';

class Order {
  final String id;
  final String clientName;
  final String clientPhone;
  final String clientAddress;
  final List<Product> products;
  final Status status;
  late final ProcessingStatus? processingStatus;

  Order({
    required this.id,
    required this.clientName,
    required this.clientPhone,
    required this.clientAddress,
    required this.products,
    required this.status,
    this.processingStatus,
  });

  void updateProcessingStatus(ProcessingStatus status) {
    processingStatus = status;
  }
}

List<Order> orders = [
  Order(
      id: "0001",
      clientName: "Nghia1",
      clientPhone: "0123456789",
      clientAddress: "KTX Bach Khoa",
      products: products,
      status: Status.processing,
      processingStatus: ProcessingStatus.nonProcessing),
  Order(
      id: "0002",
      clientName: "Nghia2",
      clientPhone: "0123456788",
      clientAddress: "KTX khu A",
      products: products,
      status: Status.processing,
      processingStatus: ProcessingStatus.isProcessing),
  Order(
      id: "0003",
      clientName: "Nghia3",
      clientPhone: "0123456787",
      clientAddress: "KTX khu B",
      products: products,
      status: Status.processing,
      processingStatus: ProcessingStatus.completedProcessing),
];
