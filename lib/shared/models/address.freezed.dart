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

AddressDto _$AddressDtoFromJson(Map<String, dynamic> json) {
  return _AddressDto.fromJson(json);
}

/// @nodoc
mixin _$AddressDto {
  @JsonKey(name: "id")
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: "collectionId")
  String get collectionId => throw _privateConstructorUsedError;
  @JsonKey(name: "collectionName")
  String get collectionName => throw _privateConstructorUsedError;
  @JsonKey(name: "created")
  DateTime get created => throw _privateConstructorUsedError;
  @JsonKey(name: "updated")
  DateTime get updated => throw _privateConstructorUsedError;
  @JsonKey(name: "line1")
  String get line1 => throw _privateConstructorUsedError;
  @JsonKey(name: "line2")
  String? get line2 => throw _privateConstructorUsedError;
  @JsonKey(name: "city")
  String get city => throw _privateConstructorUsedError;
  @JsonKey(name: "state")
  String get state => throw _privateConstructorUsedError;
  @JsonKey(name: "country")
  String get country => throw _privateConstructorUsedError;
  @JsonKey(name: "zipOrPostcode")
  String? get zipOrPostcode => throw _privateConstructorUsedError;

  /// Serializes this AddressDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AddressDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AddressDtoCopyWith<AddressDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddressDtoCopyWith<$Res> {
  factory $AddressDtoCopyWith(
          AddressDto value, $Res Function(AddressDto) then) =
      _$AddressDtoCopyWithImpl<$Res, AddressDto>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") String id,
      @JsonKey(name: "collectionId") String collectionId,
      @JsonKey(name: "collectionName") String collectionName,
      @JsonKey(name: "created") DateTime created,
      @JsonKey(name: "updated") DateTime updated,
      @JsonKey(name: "line1") String line1,
      @JsonKey(name: "line2") String? line2,
      @JsonKey(name: "city") String city,
      @JsonKey(name: "state") String state,
      @JsonKey(name: "country") String country,
      @JsonKey(name: "zipOrPostcode") String? zipOrPostcode});
}

/// @nodoc
class _$AddressDtoCopyWithImpl<$Res, $Val extends AddressDto>
    implements $AddressDtoCopyWith<$Res> {
  _$AddressDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AddressDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? collectionId = null,
    Object? collectionName = null,
    Object? created = null,
    Object? updated = null,
    Object? line1 = null,
    Object? line2 = freezed,
    Object? city = null,
    Object? state = null,
    Object? country = null,
    Object? zipOrPostcode = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      collectionId: null == collectionId
          ? _value.collectionId
          : collectionId // ignore: cast_nullable_to_non_nullable
              as String,
      collectionName: null == collectionName
          ? _value.collectionName
          : collectionName // ignore: cast_nullable_to_non_nullable
              as String,
      created: null == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updated: null == updated
          ? _value.updated
          : updated // ignore: cast_nullable_to_non_nullable
              as DateTime,
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
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      zipOrPostcode: freezed == zipOrPostcode
          ? _value.zipOrPostcode
          : zipOrPostcode // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AddressDtoImplCopyWith<$Res>
    implements $AddressDtoCopyWith<$Res> {
  factory _$$AddressDtoImplCopyWith(
          _$AddressDtoImpl value, $Res Function(_$AddressDtoImpl) then) =
      __$$AddressDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") String id,
      @JsonKey(name: "collectionId") String collectionId,
      @JsonKey(name: "collectionName") String collectionName,
      @JsonKey(name: "created") DateTime created,
      @JsonKey(name: "updated") DateTime updated,
      @JsonKey(name: "line1") String line1,
      @JsonKey(name: "line2") String? line2,
      @JsonKey(name: "city") String city,
      @JsonKey(name: "state") String state,
      @JsonKey(name: "country") String country,
      @JsonKey(name: "zipOrPostcode") String? zipOrPostcode});
}

/// @nodoc
class __$$AddressDtoImplCopyWithImpl<$Res>
    extends _$AddressDtoCopyWithImpl<$Res, _$AddressDtoImpl>
    implements _$$AddressDtoImplCopyWith<$Res> {
  __$$AddressDtoImplCopyWithImpl(
      _$AddressDtoImpl _value, $Res Function(_$AddressDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of AddressDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? collectionId = null,
    Object? collectionName = null,
    Object? created = null,
    Object? updated = null,
    Object? line1 = null,
    Object? line2 = freezed,
    Object? city = null,
    Object? state = null,
    Object? country = null,
    Object? zipOrPostcode = freezed,
  }) {
    return _then(_$AddressDtoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      collectionId: null == collectionId
          ? _value.collectionId
          : collectionId // ignore: cast_nullable_to_non_nullable
              as String,
      collectionName: null == collectionName
          ? _value.collectionName
          : collectionName // ignore: cast_nullable_to_non_nullable
              as String,
      created: null == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updated: null == updated
          ? _value.updated
          : updated // ignore: cast_nullable_to_non_nullable
              as DateTime,
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
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      zipOrPostcode: freezed == zipOrPostcode
          ? _value.zipOrPostcode
          : zipOrPostcode // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AddressDtoImpl with DiagnosticableTreeMixin implements _AddressDto {
  const _$AddressDtoImpl(
      {@JsonKey(name: "id") required this.id,
      @JsonKey(name: "collectionId") required this.collectionId,
      @JsonKey(name: "collectionName") required this.collectionName,
      @JsonKey(name: "created") required this.created,
      @JsonKey(name: "updated") required this.updated,
      @JsonKey(name: "line1") required this.line1,
      @JsonKey(name: "line2") this.line2,
      @JsonKey(name: "city") required this.city,
      @JsonKey(name: "state") required this.state,
      @JsonKey(name: "country") required this.country,
      @JsonKey(name: "zipOrPostcode") this.zipOrPostcode});

  factory _$AddressDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$AddressDtoImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final String id;
  @override
  @JsonKey(name: "collectionId")
  final String collectionId;
  @override
  @JsonKey(name: "collectionName")
  final String collectionName;
  @override
  @JsonKey(name: "created")
  final DateTime created;
  @override
  @JsonKey(name: "updated")
  final DateTime updated;
  @override
  @JsonKey(name: "line1")
  final String line1;
  @override
  @JsonKey(name: "line2")
  final String? line2;
  @override
  @JsonKey(name: "city")
  final String city;
  @override
  @JsonKey(name: "state")
  final String state;
  @override
  @JsonKey(name: "country")
  final String country;
  @override
  @JsonKey(name: "zipOrPostcode")
  final String? zipOrPostcode;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AddressDto(id: $id, collectionId: $collectionId, collectionName: $collectionName, created: $created, updated: $updated, line1: $line1, line2: $line2, city: $city, state: $state, country: $country, zipOrPostcode: $zipOrPostcode)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AddressDto'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('collectionId', collectionId))
      ..add(DiagnosticsProperty('collectionName', collectionName))
      ..add(DiagnosticsProperty('created', created))
      ..add(DiagnosticsProperty('updated', updated))
      ..add(DiagnosticsProperty('line1', line1))
      ..add(DiagnosticsProperty('line2', line2))
      ..add(DiagnosticsProperty('city', city))
      ..add(DiagnosticsProperty('state', state))
      ..add(DiagnosticsProperty('country', country))
      ..add(DiagnosticsProperty('zipOrPostcode', zipOrPostcode));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddressDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.collectionId, collectionId) ||
                other.collectionId == collectionId) &&
            (identical(other.collectionName, collectionName) ||
                other.collectionName == collectionName) &&
            (identical(other.created, created) || other.created == created) &&
            (identical(other.updated, updated) || other.updated == updated) &&
            (identical(other.line1, line1) || other.line1 == line1) &&
            (identical(other.line2, line2) || other.line2 == line2) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.zipOrPostcode, zipOrPostcode) ||
                other.zipOrPostcode == zipOrPostcode));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, collectionId, collectionName,
      created, updated, line1, line2, city, state, country, zipOrPostcode);

  /// Create a copy of AddressDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddressDtoImplCopyWith<_$AddressDtoImpl> get copyWith =>
      __$$AddressDtoImplCopyWithImpl<_$AddressDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AddressDtoImplToJson(
      this,
    );
  }
}

abstract class _AddressDto implements AddressDto {
  const factory _AddressDto(
          {@JsonKey(name: "id") required final String id,
          @JsonKey(name: "collectionId") required final String collectionId,
          @JsonKey(name: "collectionName") required final String collectionName,
          @JsonKey(name: "created") required final DateTime created,
          @JsonKey(name: "updated") required final DateTime updated,
          @JsonKey(name: "line1") required final String line1,
          @JsonKey(name: "line2") final String? line2,
          @JsonKey(name: "city") required final String city,
          @JsonKey(name: "state") required final String state,
          @JsonKey(name: "country") required final String country,
          @JsonKey(name: "zipOrPostcode") final String? zipOrPostcode}) =
      _$AddressDtoImpl;

  factory _AddressDto.fromJson(Map<String, dynamic> json) =
      _$AddressDtoImpl.fromJson;

  @override
  @JsonKey(name: "id")
  String get id;
  @override
  @JsonKey(name: "collectionId")
  String get collectionId;
  @override
  @JsonKey(name: "collectionName")
  String get collectionName;
  @override
  @JsonKey(name: "created")
  DateTime get created;
  @override
  @JsonKey(name: "updated")
  DateTime get updated;
  @override
  @JsonKey(name: "line1")
  String get line1;
  @override
  @JsonKey(name: "line2")
  String? get line2;
  @override
  @JsonKey(name: "city")
  String get city;
  @override
  @JsonKey(name: "state")
  String get state;
  @override
  @JsonKey(name: "country")
  String get country;
  @override
  @JsonKey(name: "zipOrPostcode")
  String? get zipOrPostcode;

  /// Create a copy of AddressDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddressDtoImplCopyWith<_$AddressDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AddressEditDto _$AddressEditDtoFromJson(Map<String, dynamic> json) {
  return _AddressEditDto.fromJson(json);
}

/// @nodoc
mixin _$AddressEditDto {
  @JsonKey(name: "line1")
  String get line1 => throw _privateConstructorUsedError;
  @JsonKey(name: "line1")
  set line1(String value) => throw _privateConstructorUsedError;
  @JsonKey(name: "line2")
  String? get line2 => throw _privateConstructorUsedError;
  @JsonKey(name: "line2")
  set line2(String? value) => throw _privateConstructorUsedError;
  @JsonKey(name: "city")
  String get city => throw _privateConstructorUsedError;
  @JsonKey(name: "city")
  set city(String value) => throw _privateConstructorUsedError;
  @JsonKey(name: "state")
  String get state => throw _privateConstructorUsedError;
  @JsonKey(name: "state")
  set state(String value) => throw _privateConstructorUsedError;
  @JsonKey(name: "country")
  String get country => throw _privateConstructorUsedError;
  @JsonKey(name: "country")
  set country(String value) => throw _privateConstructorUsedError;
  @JsonKey(name: "zipOrPostcode")
  String? get zipOrPostcode => throw _privateConstructorUsedError;
  @JsonKey(name: "zipOrPostcode")
  set zipOrPostcode(String? value) => throw _privateConstructorUsedError;

  /// Serializes this AddressEditDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AddressEditDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AddressEditDtoCopyWith<AddressEditDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddressEditDtoCopyWith<$Res> {
  factory $AddressEditDtoCopyWith(
          AddressEditDto value, $Res Function(AddressEditDto) then) =
      _$AddressEditDtoCopyWithImpl<$Res, AddressEditDto>;
  @useResult
  $Res call(
      {@JsonKey(name: "line1") String line1,
      @JsonKey(name: "line2") String? line2,
      @JsonKey(name: "city") String city,
      @JsonKey(name: "state") String state,
      @JsonKey(name: "country") String country,
      @JsonKey(name: "zipOrPostcode") String? zipOrPostcode});
}

/// @nodoc
class _$AddressEditDtoCopyWithImpl<$Res, $Val extends AddressEditDto>
    implements $AddressEditDtoCopyWith<$Res> {
  _$AddressEditDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AddressEditDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? line1 = null,
    Object? line2 = freezed,
    Object? city = null,
    Object? state = null,
    Object? country = null,
    Object? zipOrPostcode = freezed,
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
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      zipOrPostcode: freezed == zipOrPostcode
          ? _value.zipOrPostcode
          : zipOrPostcode // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AddressEditDtoImplCopyWith<$Res>
    implements $AddressEditDtoCopyWith<$Res> {
  factory _$$AddressEditDtoImplCopyWith(_$AddressEditDtoImpl value,
          $Res Function(_$AddressEditDtoImpl) then) =
      __$$AddressEditDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "line1") String line1,
      @JsonKey(name: "line2") String? line2,
      @JsonKey(name: "city") String city,
      @JsonKey(name: "state") String state,
      @JsonKey(name: "country") String country,
      @JsonKey(name: "zipOrPostcode") String? zipOrPostcode});
}

/// @nodoc
class __$$AddressEditDtoImplCopyWithImpl<$Res>
    extends _$AddressEditDtoCopyWithImpl<$Res, _$AddressEditDtoImpl>
    implements _$$AddressEditDtoImplCopyWith<$Res> {
  __$$AddressEditDtoImplCopyWithImpl(
      _$AddressEditDtoImpl _value, $Res Function(_$AddressEditDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of AddressEditDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? line1 = null,
    Object? line2 = freezed,
    Object? city = null,
    Object? state = null,
    Object? country = null,
    Object? zipOrPostcode = freezed,
  }) {
    return _then(_$AddressEditDtoImpl(
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
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      zipOrPostcode: freezed == zipOrPostcode
          ? _value.zipOrPostcode
          : zipOrPostcode // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(includeIfNull: false)
class _$AddressEditDtoImpl
    with DiagnosticableTreeMixin
    implements _AddressEditDto {
  _$AddressEditDtoImpl(
      {@JsonKey(name: "line1") required this.line1,
      @JsonKey(name: "line2") this.line2,
      @JsonKey(name: "city") required this.city,
      @JsonKey(name: "state") required this.state,
      @JsonKey(name: "country") required this.country,
      @JsonKey(name: "zipOrPostcode") this.zipOrPostcode});

  factory _$AddressEditDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$AddressEditDtoImplFromJson(json);

  @override
  @JsonKey(name: "line1")
  String line1;
  @override
  @JsonKey(name: "line2")
  String? line2;
  @override
  @JsonKey(name: "city")
  String city;
  @override
  @JsonKey(name: "state")
  String state;
  @override
  @JsonKey(name: "country")
  String country;
  @override
  @JsonKey(name: "zipOrPostcode")
  String? zipOrPostcode;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AddressEditDto(line1: $line1, line2: $line2, city: $city, state: $state, country: $country, zipOrPostcode: $zipOrPostcode)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AddressEditDto'))
      ..add(DiagnosticsProperty('line1', line1))
      ..add(DiagnosticsProperty('line2', line2))
      ..add(DiagnosticsProperty('city', city))
      ..add(DiagnosticsProperty('state', state))
      ..add(DiagnosticsProperty('country', country))
      ..add(DiagnosticsProperty('zipOrPostcode', zipOrPostcode));
  }

  /// Create a copy of AddressEditDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddressEditDtoImplCopyWith<_$AddressEditDtoImpl> get copyWith =>
      __$$AddressEditDtoImplCopyWithImpl<_$AddressEditDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AddressEditDtoImplToJson(
      this,
    );
  }
}

abstract class _AddressEditDto implements AddressEditDto {
  factory _AddressEditDto(
          {@JsonKey(name: "line1") required String line1,
          @JsonKey(name: "line2") String? line2,
          @JsonKey(name: "city") required String city,
          @JsonKey(name: "state") required String state,
          @JsonKey(name: "country") required String country,
          @JsonKey(name: "zipOrPostcode") String? zipOrPostcode}) =
      _$AddressEditDtoImpl;

  factory _AddressEditDto.fromJson(Map<String, dynamic> json) =
      _$AddressEditDtoImpl.fromJson;

  @override
  @JsonKey(name: "line1")
  String get line1;
  @JsonKey(name: "line1")
  set line1(String value);
  @override
  @JsonKey(name: "line2")
  String? get line2;
  @JsonKey(name: "line2")
  set line2(String? value);
  @override
  @JsonKey(name: "city")
  String get city;
  @JsonKey(name: "city")
  set city(String value);
  @override
  @JsonKey(name: "state")
  String get state;
  @JsonKey(name: "state")
  set state(String value);
  @override
  @JsonKey(name: "country")
  String get country;
  @JsonKey(name: "country")
  set country(String value);
  @override
  @JsonKey(name: "zipOrPostcode")
  String? get zipOrPostcode;
  @JsonKey(name: "zipOrPostcode")
  set zipOrPostcode(String? value);

  /// Create a copy of AddressEditDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddressEditDtoImplCopyWith<_$AddressEditDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
