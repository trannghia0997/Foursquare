import 'package:foursquare/services/base_service.dart';
import 'package:foursquare/shared/models/invoice.dart';

class InvoiceService with BaseService<Invoice> {
  @override
  String get resourceName => 'invoices';
}
