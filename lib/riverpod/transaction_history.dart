import 'package:foursquare/services/pb.dart';
import 'package:foursquare/shared/models/transaction_history.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'transaction_history.g.dart';

@riverpod
Future<List<TransactionHistoryDto>> transactionHistoryByEntity(
  TransactionHistoryByEntityRef ref, {
  required String entityType,
  required String entityId,
}) async {
  final records =
      await PBApp.instance.collection('transaction_history').getFullList(
            sort: '-created',
            filter: 'entityType = "$entityType" && entityId = "$entityId"',
          );
  return records.map((e) => TransactionHistoryDto.fromRecord(e)).toList();
}
