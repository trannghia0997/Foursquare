import 'package:foursquare/services/base_service.dart';
import 'package:foursquare/shared/models/invoice_status.dart';

class InvoiceStatusService with BaseService<InvoiceStatus> {
  @override
  String get resourceName => 'invoice-statuses';
}
