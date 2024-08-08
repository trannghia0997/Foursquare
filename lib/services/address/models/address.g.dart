// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AddressImpl _$$AddressImplFromJson(Map<String, dynamic> json) =>
    _$AddressImpl(
      line1: json['line1'] as String,
      line2: json['line2'] as String?,
      city: json['city'] as String,
      country: json['country'] as String,
      state: json['state'] as String,
      zipOrPostcode: json['zip_or_postcode'] as String?,
      otherAddressDetails: json['other_address_details'] as String?,
    );

Map<String, dynamic> _$$AddressImplToJson(_$AddressImpl instance) =>
    <String, dynamic>{
      'line1': instance.line1,
      'line2': instance.line2,
      'city': instance.city,
      'country': instance.country,
      'state': instance.state,
      'zip_or_postcode': instance.zipOrPostcode,
      'other_address_details': instance.otherAddressDetails,
    };
