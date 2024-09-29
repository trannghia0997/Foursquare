import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:pocketbase/pocketbase.dart';

part 'daily_income.freezed.dart';
part 'daily_income.g.dart';

@freezed
class DailyIncomeDto with _$DailyIncomeDto {
  const factory DailyIncomeDto({
    @JsonKey(name: "id") required String id,
    @JsonKey(name: "collectionId") required String collectionId,
    @JsonKey(name: "collectionName") required String collectionName,
    @JsonKey(name: "created") required DateTime created,
    @JsonKey(name: "updated") required DateTime updated,
    @JsonKey(name: "amountOfChange") required int amountOfChange,
  }) = _DailyIncomeDto;

  factory DailyIncomeDto.fromJson(Map<String, Object?> json) =>
      _$DailyIncomeDtoFromJson(json);

  factory DailyIncomeDto.fromRecord(RecordModel obj) =>
      DailyIncomeDto.fromJson(obj.toJson());
}
