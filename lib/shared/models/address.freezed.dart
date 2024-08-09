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
  String? get id => throw _privateConstructorUsedError;
  String? get line1 => throw _privateConstructorUsedError;
  JsonNullableType<String>? get line2 => throw _privateConstructorUsedError;
  String? get city => throw _privateConstructorUsedError;
  String? get state => throw _privateConstructorUsedError;
  String? get country => throw _privateConstructorUsedError;
  JsonNullableType<String>? get zipOrPostalcode =>
      throw _privateConstructorUsedError;
  String? get createdBy => throw _privateConstructorUsedError;
  DateTime? get createdDate => throw _privateConstructorUsedError;
  String? get lastModifiedBy => throw _privateConstructorUsedError;
  DateTime? get lastModifiedDate => throw _privateConstructorUsedError;

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
      {String? id,
      String? line1,
      JsonNullableType<String>? line2,
      String? city,
      String? state,
      String? country,
      JsonNullableType<String>? zipOrPostalcode,
      String? createdBy,
      DateTime? createdDate,
      String? lastModifiedBy,
      DateTime? lastModifiedDate});
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
    Object? id = freezed,
    Object? line1 = freezed,
    Object? line2 = freezed,
    Object? city = freezed,
    Object? state = freezed,
    Object? country = freezed,
    Object? zipOrPostalcode = freezed,
    Object? createdBy = freezed,
    Object? createdDate = freezed,
    Object? lastModifiedBy = freezed,
    Object? lastModifiedDate = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      line1: freezed == line1
          ? _value.line1
          : line1 // ignore: cast_nullable_to_non_nullable
              as String?,
      line2: freezed == line2
          ? _value.line2
          : line2 // ignore: cast_nullable_to_non_nullable
              as JsonNullableType<String>?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      zipOrPostalcode: freezed == zipOrPostalcode
          ? _value.zipOrPostalcode
          : zipOrPostalcode // ignore: cast_nullable_to_non_nullable
              as JsonNullableType<String>?,
      createdBy: freezed == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as String?,
      createdDate: freezed == createdDate
          ? _value.createdDate
          : createdDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      lastModifiedBy: freezed == lastModifiedBy
          ? _value.lastModifiedBy
          : lastModifiedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      lastModifiedDate: freezed == lastModifiedDate
          ? _value.lastModifiedDate
          : lastModifiedDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
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
      {String? id,
      String? line1,
      JsonNullableType<String>? line2,
      String? city,
      String? state,
      String? country,
      JsonNullableType<String>? zipOrPostalcode,
      String? createdBy,
      DateTime? createdDate,
      String? lastModifiedBy,
      DateTime? lastModifiedDate});
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
    Object? id = freezed,
    Object? line1 = freezed,
    Object? line2 = freezed,
    Object? city = freezed,
    Object? state = freezed,
    Object? country = freezed,
    Object? zipOrPostalcode = freezed,
    Object? createdBy = freezed,
    Object? createdDate = freezed,
    Object? lastModifiedBy = freezed,
    Object? lastModifiedDate = freezed,
  }) {
    return _then(_$AddressImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      line1: freezed == line1
          ? _value.line1
          : line1 // ignore: cast_nullable_to_non_nullable
              as String?,
      line2: freezed == line2
          ? _value.line2
          : line2 // ignore: cast_nullable_to_non_nullable
              as JsonNullableType<String>?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      zipOrPostalcode: freezed == zipOrPostalcode
          ? _value.zipOrPostalcode
          : zipOrPostalcode // ignore: cast_nullable_to_non_nullable
              as JsonNullableType<String>?,
      createdBy: freezed == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as String?,
      createdDate: freezed == createdDate
          ? _value.createdDate
          : createdDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      lastModifiedBy: freezed == lastModifiedBy
          ? _value.lastModifiedBy
          : lastModifiedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      lastModifiedDate: freezed == lastModifiedDate
          ? _value.lastModifiedDate
          : lastModifiedDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc

@JsonSerializable(includeIfNull: false)
class _$AddressImpl with DiagnosticableTreeMixin implements _Address {
  const _$AddressImpl(
      {this.id,
      this.line1,
      this.line2,
      this.city,
      this.state,
      this.country,
      this.zipOrPostalcode,
      this.createdBy,
      this.createdDate,
      this.lastModifiedBy,
      this.lastModifiedDate});

  factory _$AddressImpl.fromJson(Map<String, dynamic> json) =>
      _$$AddressImplFromJson(json);

  @override
  final String? id;
  @override
  final String? line1;
  @override
  final JsonNullableType<String>? line2;
  @override
  final String? city;
  @override
  final String? state;
  @override
  final String? country;
  @override
  final JsonNullableType<String>? zipOrPostalcode;
  @override
  final String? createdBy;
  @override
  final DateTime? createdDate;
  @override
  final String? lastModifiedBy;
  @override
  final DateTime? lastModifiedDate;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Address(id: $id, line1: $line1, line2: $line2, city: $city, state: $state, country: $country, zipOrPostalcode: $zipOrPostalcode, createdBy: $createdBy, createdDate: $createdDate, lastModifiedBy: $lastModifiedBy, lastModifiedDate: $lastModifiedDate)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Address'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('line1', line1))
      ..add(DiagnosticsProperty('line2', line2))
      ..add(DiagnosticsProperty('city', city))
      ..add(DiagnosticsProperty('state', state))
      ..add(DiagnosticsProperty('country', country))
      ..add(DiagnosticsProperty('zipOrPostalcode', zipOrPostalcode))
      ..add(DiagnosticsProperty('createdBy', createdBy))
      ..add(DiagnosticsProperty('createdDate', createdDate))
      ..add(DiagnosticsProperty('lastModifiedBy', lastModifiedBy))
      ..add(DiagnosticsProperty('lastModifiedDate', lastModifiedDate));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddressImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.line1, line1) || other.line1 == line1) &&
            (identical(other.line2, line2) || other.line2 == line2) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.zipOrPostalcode, zipOrPostalcode) ||
                other.zipOrPostalcode == zipOrPostalcode) &&
            (identical(other.createdBy, createdBy) ||
                other.createdBy == createdBy) &&
            (identical(other.createdDate, createdDate) ||
                other.createdDate == createdDate) &&
            (identical(other.lastModifiedBy, lastModifiedBy) ||
                other.lastModifiedBy == lastModifiedBy) &&
            (identical(other.lastModifiedDate, lastModifiedDate) ||
                other.lastModifiedDate == lastModifiedDate));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      line1,
      line2,
      city,
      state,
      country,
      zipOrPostalcode,
      createdBy,
      createdDate,
      lastModifiedBy,
      lastModifiedDate);

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
      {final String? id,
      final String? line1,
      final JsonNullableType<String>? line2,
      final String? city,
      final String? state,
      final String? country,
      final JsonNullableType<String>? zipOrPostalcode,
      final String? createdBy,
      final DateTime? createdDate,
      final String? lastModifiedBy,
      final DateTime? lastModifiedDate}) = _$AddressImpl;

  factory _Address.fromJson(Map<String, dynamic> json) = _$AddressImpl.fromJson;

  @override
  String? get id;
  @override
  String? get line1;
  @override
  JsonNullableType<String>? get line2;
  @override
  String? get city;
  @override
  String? get state;
  @override
  String? get country;
  @override
  JsonNullableType<String>? get zipOrPostalcode;
  @override
  String? get createdBy;
  @override
  DateTime? get createdDate;
  @override
  String? get lastModifiedBy;
  @override
  DateTime? get lastModifiedDate;

  /// Create a copy of Address
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddressImplCopyWith<_$AddressImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
