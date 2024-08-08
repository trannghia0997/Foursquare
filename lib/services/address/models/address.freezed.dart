// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'address.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Address _$AddressFromJson(Map<String, dynamic> json) {
  return _Address.fromJson(json);
}

/// @nodoc
mixin _$Address {
  String get line1 => throw _privateConstructorUsedError;
  String? get line2 => throw _privateConstructorUsedError;
  String get city => throw _privateConstructorUsedError;
  String get country => throw _privateConstructorUsedError;
  String get state => throw _privateConstructorUsedError;
  @JsonKey(name: 'zip_or_postcode')
  String? get zipOrPostcode => throw _privateConstructorUsedError;
  @JsonKey(name: 'other_address_details')
  String? get otherAddressDetails => throw _privateConstructorUsedError;

  /// Serializes this Address to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Address
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AddressCopyWith<Address> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddressCopyWith<$Res> {
  factory $AddressCopyWith(Address value, $Res Function(Address) then) =
      _$AddressCopyWithImpl<$Res, Address>;
  @useResult
  $Res call(
      {String line1,
      String? line2,
      String city,
      String country,
      String state,
      @JsonKey(name: 'zip_or_postcode') String? zipOrPostcode,
      @JsonKey(name: 'other_address_details') String? otherAddressDetails});
}

/// @nodoc
class _$AddressCopyWithImpl<$Res, $Val extends Address>
    implements $AddressCopyWith<$Res> {
  _$AddressCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Address
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? line1 = null,
    Object? line2 = freezed,
    Object? city = null,
    Object? country = null,
    Object? state = null,
    Object? zipOrPostcode = freezed,
    Object? otherAddressDetails = freezed,
  }) {
    return _then(_value.copyWith(
      line1: null == line1
          ? _value.line1
          : line1 // ignore: cast_nullable_to_non_nullable
              as String,
      line2: freezed == line2
          ? _value.line2
          : line2 // ignore: cast_nullable_to_non_nullable
              as String?,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String,
      zipOrPostcode: freezed == zipOrPostcode
          ? _value.zipOrPostcode
          : zipOrPostcode // ignore: cast_nullable_to_non_nullable
              as String?,
      otherAddressDetails: freezed == otherAddressDetails
          ? _value.otherAddressDetails
          : otherAddressDetails // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AddressImplCopyWith<$Res> implements $AddressCopyWith<$Res> {
  factory _$$AddressImplCopyWith(
          _$AddressImpl value, $Res Function(_$AddressImpl) then) =
      __$$AddressImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String line1,
      String? line2,
      String city,
      String country,
      String state,
      @JsonKey(name: 'zip_or_postcode') String? zipOrPostcode,
      @JsonKey(name: 'other_address_details') String? otherAddressDetails});
}

/// @nodoc
class __$$AddressImplCopyWithImpl<$Res>
    extends _$AddressCopyWithImpl<$Res, _$AddressImpl>
    implements _$$AddressImplCopyWith<$Res> {
  __$$AddressImplCopyWithImpl(
      _$AddressImpl _value, $Res Function(_$AddressImpl) _then)
      : super(_value, _then);

  /// Create a copy of Address
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? line1 = null,
    Object? line2 = freezed,
    Object? city = null,
    Object? country = null,
    Object? state = null,
    Object? zipOrPostcode = freezed,
    Object? otherAddressDetails = freezed,
  }) {
    return _then(_$AddressImpl(
      line1: null == line1
          ? _value.line1
          : line1 // ignore: cast_nullable_to_non_nullable
              as String,
      line2: freezed == line2
          ? _value.line2
          : line2 // ignore: cast_nullable_to_non_nullable
              as String?,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String,
      zipOrPostcode: freezed == zipOrPostcode
          ? _value.zipOrPostcode
          : zipOrPostcode // ignore: cast_nullable_to_non_nullable
              as String?,
      otherAddressDetails: freezed == otherAddressDetails
          ? _value.otherAddressDetails
          : otherAddressDetails // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AddressImpl with DiagnosticableTreeMixin implements _Address {
  const _$AddressImpl(
      {required this.line1,
      this.line2,
      required this.city,
      required this.country,
      required this.state,
      @JsonKey(name: 'zip_or_postcode') this.zipOrPostcode,
      @JsonKey(name: 'other_address_details') this.otherAddressDetails});

  factory _$AddressImpl.fromJson(Map<String, dynamic> json) =>
      _$$AddressImplFromJson(json);

  @override
  final String line1;
  @override
  final String? line2;
  @override
  final String city;
  @override
  final String country;
  @override
  final String state;
  @override
  @JsonKey(name: 'zip_or_postcode')
  final String? zipOrPostcode;
  @override
  @JsonKey(name: 'other_address_details')
  final String? otherAddressDetails;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Address(line1: $line1, line2: $line2, city: $city, country: $country, state: $state, zipOrPostcode: $zipOrPostcode, otherAddressDetails: $otherAddressDetails)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Address'))
      ..add(DiagnosticsProperty('line1', line1))
      ..add(DiagnosticsProperty('line2', line2))
      ..add(DiagnosticsProperty('city', city))
      ..add(DiagnosticsProperty('country', country))
      ..add(DiagnosticsProperty('state', state))
      ..add(DiagnosticsProperty('zipOrPostcode', zipOrPostcode))
      ..add(DiagnosticsProperty('otherAddressDetails', otherAddressDetails));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddressImpl &&
            (identical(other.line1, line1) || other.line1 == line1) &&
            (identical(other.line2, line2) || other.line2 == line2) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.zipOrPostcode, zipOrPostcode) ||
                other.zipOrPostcode == zipOrPostcode) &&
            (identical(other.otherAddressDetails, otherAddressDetails) ||
                other.otherAddressDetails == otherAddressDetails));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, line1, line2, city, country,
      state, zipOrPostcode, otherAddressDetails);

  /// Create a copy of Address
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddressImplCopyWith<_$AddressImpl> get copyWith =>
      __$$AddressImplCopyWithImpl<_$AddressImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AddressImplToJson(
      this,
    );
  }
}

abstract class _Address implements Address {
  const factory _Address(
      {required final String line1,
      final String? line2,
      required final String city,
      required final String country,
      required final String state,
      @JsonKey(name: 'zip_or_postcode') final String? zipOrPostcode,
      @JsonKey(name: 'other_address_details')
      final String? otherAddressDetails}) = _$AddressImpl;

  factory _Address.fromJson(Map<String, dynamic> json) = _$AddressImpl.fromJson;

  @override
  String get line1;
  @override
  String? get line2;
  @override
  String get city;
  @override
  String get country;
  @override
  String get state;
  @override
  @JsonKey(name: 'zip_or_postcode')
  String? get zipOrPostcode;
  @override
  @JsonKey(name: 'other_address_details')
  String? get otherAddressDetails;

  /// Create a copy of Address
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddressImplCopyWith<_$AddressImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
