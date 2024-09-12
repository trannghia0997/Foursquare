import 'package:foursquare/riverpod/order.dart';
import 'package:foursquare/shared/models/colour.dart';
import 'package:foursquare/shared/models/invoice.dart';
import 'package:foursquare/shared/models/product_category.dart';
import 'package:foursquare/shared/models/shipment.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'shipment.g.dart';
part 'shipment.freezed.dart';

@freezed
class ShipmentInfoModel with _$ShipmentInfoModel {
  const factory ShipmentInfoModel({
    required ShipmentDto shipment,
    required OrderInfoModel order,
    required InvoiceDto invoice,
    required List<(ProductCategoryDto, ColourDto)> categories,
  }) = _ShipmentInfoModel;
}

@riverpod
Future<ShipmentInfoModel> shipmentInfo(
    ShipmentInfoRef ref, String shipmentId) async {
  throw UnimplementedError();
}
