import 'package:flutter/foundation.dart';
import 'package:foursquare/services/pb.dart';
import 'package:foursquare/shared/models/address.dart';
import 'package:foursquare/shared/models/guest_info.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'guest_info.g.dart';
part 'guest_info.freezed.dart';

@freezed
class GuestInfo with _$GuestInfo {
  const factory GuestInfo({
    required GuestInfoDto guest,
    required AddressDto address,
  }) = _GuestInfo;
}

@riverpod
Future<List<GuestInfo>> guestInfoSearch(
    GuestInfoSearchRef ref, String query) async {
  if (query.isEmpty) return [];

  String buildQuery(String rawQuery) {
    if (RegExp(r'^\d+$').hasMatch(rawQuery)) {
      if (rawQuery[0] == '0') {
        return "phone ~ '${rawQuery.substring(1)}'";
      }
    }
    return "name ~ '$rawQuery' || phone ~ '$rawQuery' || email ~ '$rawQuery'";
  }

  return await PBApp.instance
      .collection('guest_info')
      .getFullList(
        filter: buildQuery(query),
        expand: 'addressId',
      )
      .then(
        (value) => value
            .map(
              (e) => GuestInfo(
                guest: GuestInfoDto.fromRecord(e),
                address: AddressDto.fromRecord(e.expand['addressId']!.first),
              ),
            )
            .toList(),
      );
}

@riverpod
Future<GuestInfo?> singleGuestInfoOrNull(
    SingleGuestInfoOrNullRef ref, String id) async {
  if (id.isEmpty) return null;
  return await PBApp.instance
      .collection('guest_info')
      .getOne(
        id,
        expand: 'addressId',
      )
      .then(
        (value) => GuestInfo(
          guest: GuestInfoDto.fromRecord(value),
          address: AddressDto.fromRecord(value.expand['addressId']!.first),
        ),
      );
}
