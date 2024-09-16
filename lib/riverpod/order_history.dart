import 'package:foursquare/services/pb.dart';
import 'package:foursquare/shared/models/order_history.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'order_history.g.dart';

@riverpod
Future<List<OrderHistoryDto>> orderHistoryByOrder(
    OrderHistoryByOrderRef ref, String orderId) async {
  final records = await PBApp.instance.collection('order_history').getFullList(
        sort: '-created',
        filter: 'orderId = $orderId',
      );
  return records.map((e) => OrderHistoryDto.fromRecord(e)).toList();
}
