// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'guest_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GuestInfoDto _$GuestInfoDtoFromJson(Map<String, dynamic> json) {
  return _GuestInfoDto.fromJson(json);
}

/// @nodoc
mixin _$GuestInfoDto {
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
  @JsonKey(name: "name")
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: "email")
  String? get email => throw _privateConstructorUsedError;
  @JsonKey(name: "phone")
  String get phone => throw _privateConstructorUsedError;
  @JsonKey(name: "addressId")
  String get addressId => throw _privateConstructorUsedError;

  /// Serializes this GuestInfoDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GuestInfoDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GuestInfoDtoCopyWith<GuestInfoDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GuestInfoDtoCopyWith<$Res> {
  factory $GuestInfoDtoCopyWith(
          GuestInfoDto value, $Res Function(GuestInfoDto) then) =
      _$GuestInfoDtoCopyWithImpl<$Res, GuestInfoDto>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") String id,
      @JsonKey(name: "collectionId") String collectionId,
      @JsonKey(name: "collectionName") String collectionName,
      @JsonKey(name: "created") DateTime created,
      @JsonKey(name: "updated") DateTime updated,
      @JsonKey(name: "name") String name,
      @JsonKey(name: "email") String? email,
      @JsonKey(name: "phone") String phone,
      @JsonKey(name: "addressId") String addressId});
}

/// @nodoc
class _$GuestInfoDtoCopyWithImpl<$Res, $Val extends GuestInfoDto>
    implements $GuestInfoDtoCopyWith<$Res> {
  _$GuestInfoDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GuestInfoDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? collectionId = null,
    Object? collectionName = null,
    Object? created = null,
    Object? updated = null,
    Object? name = null,
    Object? email = freezed,
    Object? phone = null,
    Object? addressId = null,
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
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      addressId: null == addressId
          ? _value.addressId
          : addressId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GuestInfoDtoImplCopyWith<$Res>
    implements $GuestInfoDtoCopyWith<$Res> {
  factory _$$GuestInfoDtoImplCopyWith(
          _$GuestInfoDtoImpl value, $Res Function(_$GuestInfoDtoImpl) then) =
      __$$GuestInfoDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") String id,
      @JsonKey(name: "collectionId") String collectionId,
      @JsonKey(name: "collectionName") String collectionName,
      @JsonKey(name: "created") DateTime created,
      @JsonKey(name: "updated") DateTime updated,
      @JsonKey(name: "name") String name,
      @JsonKey(name: "email") String? email,
      @JsonKey(name: "phone") String phone,
      @JsonKey(name: "addressId") String addressId});
}

/// @nodoc
class __$$GuestInfoDtoImplCopyWithImpl<$Res>
    extends _$GuestInfoDtoCopyWithImpl<$Res, _$GuestInfoDtoImpl>
    implements _$$GuestInfoDtoImplCopyWith<$Res> {
  __$$GuestInfoDtoImplCopyWithImpl(
      _$GuestInfoDtoImpl _value, $Res Function(_$GuestInfoDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of GuestInfoDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? collectionId = null,
    Object? collectionName = null,
    Object? created = null,
    Object? updated = null,
    Object? name = null,
    Object? email = freezed,
    Object? phone = null,
    Object? addressId = null,
  }) {
    return _then(_$GuestInfoDtoImpl(
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
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      addressId: null == addressId
          ? _value.addressId
          : addressId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GuestInfoDtoImpl with DiagnosticableTreeMixin implements _GuestInfoDto {
  const _$GuestInfoDtoImpl(
      {@JsonKey(name: "id") required this.id,
      @JsonKey(name: "collectionId") required this.collectionId,
      @JsonKey(name: "collectionName") required this.collectionName,
      @JsonKey(name: "created") required this.created,
      @JsonKey(name: "updated") required this.updated,
      @JsonKey(name: "name") required this.name,
      @JsonKey(name: "email") this.email,
      @JsonKey(name: "phone") required this.phone,
      @JsonKey(name: "addressId") required this.addressId});

  factory _$GuestInfoDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$GuestInfoDtoImplFromJson(json);

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
  @JsonKey(name: "name")
  final String name;
  @override
  @JsonKey(name: "email")
  final String? email;
  @override
  @JsonKey(name: "phone")
  final String phone;
  @override
  @JsonKey(name: "addressId")
  final String addressId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'GuestInfoDto(id: $id, collectionId: $collectionId, collectionName: $collectionName, created: $created, updated: $updated, name: $name, email: $email, phone: $phone, addressId: $addressId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'GuestInfoDto'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('collectionId', collectionId))
      ..add(DiagnosticsProperty('collectionName', collectionName))
      ..add(DiagnosticsProperty('created', created))
      ..add(DiagnosticsProperty('updated', updated))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('email', email))
      ..add(DiagnosticsProperty('phone', phone))
      ..add(DiagnosticsProperty('addressId', addressId));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GuestInfoDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.collectionId, collectionId) ||
                other.collectionId == collectionId) &&
            (identical(other.collectionName, collectionName) ||
                other.collectionName == collectionName) &&
            (identical(other.created, created) || other.created == created) &&
            (identical(other.updated, updated) || other.updated == updated) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.addressId, addressId) ||
                other.addressId == addressId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, collectionId, collectionName,
      created, updated, name, email, phone, addressId);

  /// Create a copy of GuestInfoDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GuestInfoDtoImplCopyWith<_$GuestInfoDtoImpl> get copyWith =>
      __$$GuestInfoDtoImplCopyWithImpl<_$GuestInfoDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GuestInfoDtoImplToJson(
      this,
    );
  }
}

abstract class _GuestInfoDto implements GuestInfoDto {
  const factory _GuestInfoDto(
          {@JsonKey(name: "id") required final String id,
          @JsonKey(name: "collectionId") required final String collectionId,
          @JsonKey(name: "collectionName") required final String collectionName,
          @JsonKey(name: "created") required final DateTime created,
          @JsonKey(name: "updated") required final DateTime updated,
          @JsonKey(name: "name") required final String name,
          @JsonKey(name: "email") final String? email,
          @JsonKey(name: "phone") required final String phone,
          @JsonKey(name: "addressId") required final String addressId}) =
      _$GuestInfoDtoImpl;

  factory _GuestInfoDto.fromJson(Map<String, dynamic> json) =
      _$GuestInfoDtoImpl.fromJson;

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
  @JsonKey(name: "name")
  String get name;
  @override
  @JsonKey(name: "email")
  String? get email;
  @override
  @JsonKey(name: "phone")
  String get phone;
  @override
  @JsonKey(name: "addressId")
  String get addressId;

  /// Create a copy of GuestInfoDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GuestInfoDtoImplCopyWith<_$GuestInfoDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

GuestInfoEditDto _$GuestInfoEditDtoFromJson(Map<String, dynamic> json) {
  return _GuestInfoEditDto.fromJson(json);
}

/// @nodoc
mixin _$GuestInfoEditDto {
  @JsonKey(name: "name")
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  set name(String value) => throw _privateConstructorUsedError;
  @JsonKey(name: "email")
  String? get email => throw _privateConstructorUsedError;
  @JsonKey(name: "email")
  set email(String? value) => throw _privateConstructorUsedError;
  @JsonKey(name: "phone")
  String get phone => throw _privateConstructorUsedError;
  @JsonKey(name: "phone")
  set phone(String value) => throw _privateConstructorUsedError;
  @JsonKey(name: "addressId")
  String get addressId => throw _privateConstructorUsedError;
  @JsonKey(name: "addressId")
  set addressId(String value) => throw _privateConstructorUsedError;

  /// Serializes this GuestInfoEditDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GuestInfoEditDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GuestInfoEditDtoCopyWith<GuestInfoEditDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GuestInfoEditDtoCopyWith<$Res> {
  factory $GuestInfoEditDtoCopyWith(
          GuestInfoEditDto value, $Res Function(GuestInfoEditDto) then) =
      _$GuestInfoEditDtoCopyWithImpl<$Res, GuestInfoEditDto>;
  @useResult
  $Res call(
      {@JsonKey(name: "name") String name,
      @JsonKey(name: "email") String? email,
      @JsonKey(name: "phone") String phone,
      @JsonKey(name: "addressId") String addressId});
}

/// @nodoc
class _$GuestInfoEditDtoCopyWithImpl<$Res, $Val extends GuestInfoEditDto>
    implements $GuestInfoEditDtoCopyWith<$Res> {
  _$GuestInfoEditDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GuestInfoEditDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? email = freezed,
    Object? phone = null,
    Object? addressId = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      addressId: null == addressId
          ? _value.addressId
          : addressId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GuestInfoEditDtoImplCopyWith<$Res>
    implements $GuestInfoEditDtoCopyWith<$Res> {
  factory _$$GuestInfoEditDtoImplCopyWith(_$GuestInfoEditDtoImpl value,
          $Res Function(_$GuestInfoEditDtoImpl) then) =
      __$$GuestInfoEditDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "name") String name,
      @JsonKey(name: "email") String? email,
      @JsonKey(name: "phone") String phone,
      @JsonKey(name: "addressId") String addressId});
}

/// @nodoc
class __$$GuestInfoEditDtoImplCopyWithImpl<$Res>
    extends _$GuestInfoEditDtoCopyWithImpl<$Res, _$GuestInfoEditDtoImpl>
    implements _$$GuestInfoEditDtoImplCopyWith<$Res> {
  __$$GuestInfoEditDtoImplCopyWithImpl(_$GuestInfoEditDtoImpl _value,
      $Res Function(_$GuestInfoEditDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of GuestInfoEditDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? email = freezed,
    Object? phone = null,
    Object? addressId = null,
  }) {
    return _then(_$GuestInfoEditDtoImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      addressId: null == addressId
          ? _value.addressId
          : addressId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(includeIfNull: false)
class _$GuestInfoEditDtoImpl
    with DiagnosticableTreeMixin
    implements _GuestInfoEditDto {
  _$GuestInfoEditDtoImpl(
      {@JsonKey(name: "name") required this.name,
      @JsonKey(name: "email") this.email,
      @JsonKey(name: "phone") required this.phone,
      @JsonKey(name: "addressId") required this.addressId});

  factory _$GuestInfoEditDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$GuestInfoEditDtoImplFromJson(json);

  @override
  @JsonKey(name: "name")
  String name;
  @override
  @JsonKey(name: "email")
  String? email;
  @override
  @JsonKey(name: "phone")
  String phone;
  @override
  @JsonKey(name: "addressId")
  String addressId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'GuestInfoEditDto(name: $name, email: $email, phone: $phone, addressId: $addressId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'GuestInfoEditDto'))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('email', email))
      ..add(DiagnosticsProperty('phone', phone))
      ..add(DiagnosticsProperty('addressId', addressId));
  }

  /// Create a copy of GuestInfoEditDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GuestInfoEditDtoImplCopyWith<_$GuestInfoEditDtoImpl> get copyWith =>
      __$$GuestInfoEditDtoImplCopyWithImpl<_$GuestInfoEditDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GuestInfoEditDtoImplToJson(
      this,
    );
  }
}

abstract class _GuestInfoEditDto implements GuestInfoEditDto {
  factory _GuestInfoEditDto(
          {@JsonKey(name: "name") required String name,
          @JsonKey(name: "email") String? email,
          @JsonKey(name: "phone") required String phone,
          @JsonKey(name: "addressId") required String addressId}) =
      _$GuestInfoEditDtoImpl;

  factory _GuestInfoEditDto.fromJson(Map<String, dynamic> json) =
      _$GuestInfoEditDtoImpl.fromJson;

  @override
  @JsonKey(name: "name")
  String get name;
  @JsonKey(name: "name")
  set name(String value);
  @override
  @JsonKey(name: "email")
  String? get email;
  @JsonKey(name: "email")
  set email(String? value);
  @override
  @JsonKey(name: "phone")
  String get phone;
  @JsonKey(name: "phone")
  set phone(String value);
  @override
  @JsonKey(name: "addressId")
  String get addressId;
  @JsonKey(name: "addressId")
  set addressId(String value);

  /// Create a copy of GuestInfoEditDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GuestInfoEditDtoImplCopyWith<_$GuestInfoEditDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
