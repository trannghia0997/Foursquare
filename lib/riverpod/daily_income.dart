import 'package:foursquare/services/pb.dart';
import 'package:foursquare/shared/models/daily_income.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'daily_income.g.dart';

@riverpod
Future<List<DailyIncomeDto>> dailyIncomeByRange(
  DailyIncomeByRangeRef ref,
  DateTime fromDate,
  DateTime toDate,
) async {
  final fromDateTimeUtc = fromDate.toUtc().toString();
  final toDateTimeUtc = toDate.toUtc().toString();
  final records = await PBApp.instance.collection('daily_income').getFullList(
        filter: 'created >= "$fromDateTimeUtc" && created <= "$toDateTimeUtc"',
        sort: '-created',
      );
  return records.map((e) => DailyIncomeDto.fromRecord(e)).toList();
}
