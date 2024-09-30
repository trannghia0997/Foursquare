import 'package:foursquare/services/pb.dart';
import 'package:foursquare/shared/models/invoice.dart';
import 'package:foursquare/shared/models/invoice_line_item.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'invoice.g.dart';
part 'invoice.freezed.dart';

@freezed
class InvoiceInfo with _$InvoiceInfo {
  const factory InvoiceInfo({
    required InvoiceDto invoice,
    required List<InvoiceLineItemDto>? invoiceLineItems,
  }) = _InvoiceInfo;
}

@riverpod
Future<List<InvoiceInfo>> invoiceInfoByOrderId(
    InvoiceInfoByOrderIdRef ref, String orderId) async {
  final records = await PBApp.instance.collection('invoices').getFullList(
        filter: 'orderId = "$orderId"',
        expand: 'invoice_line_items_via_invoiceId',
        sort: '-updated',
      );
  return records.map((e) {
    final invoice = InvoiceDto.fromRecord(e);
    final invoiceLineItems = e.expand['invoice_line_items_via_invoiceId']
            ?.map((e) => InvoiceLineItemDto.fromRecord(e))
            .toList() ??
        [];
    return InvoiceInfo(
      invoice: invoice,
      invoiceLineItems: invoiceLineItems,
    );
  }).toList();
}
