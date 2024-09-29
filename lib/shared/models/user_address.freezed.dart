// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_address.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserAddressDto _$UserAddressDtoFromJson(Map<String, dynamic> json) {
  return _UserAddressDto.fromJson(json);
}

/// @nodoc
mixin _$UserAddressDto {
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
  @JsonKey(name: "type")
  AddressType get type => throw _privateConstructorUsedError;
  @JsonKey(name: "friendlyName")
  String? get friendlyName => throw _privateConstructorUsedError;
  @JsonKey(name: "isDefault")
  bool? get isDefault => throw _privateConstructorUsedError;
  @JsonKey(name: "userId")
  String get userId => throw _privateConstructorUsedError;
  @JsonKey(name: "addressId")
  String get addressId => throw _privateConstructorUsedError;

  /// Serializes this UserAddressDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserAddressDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserAddressDtoCopyWith<UserAddressDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserAddressDtoCopyWith<$Res> {
  factory $UserAddressDtoCopyWith(
          UserAddressDto value, $Res Function(UserAddressDto) then) =
      _$UserAddressDtoCopyWithImpl<$Res, UserAddressDto>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") String id,
      @JsonKey(name: "collectionId") String collectionId,
      @JsonKey(name: "collectionName") String collectionName,
      @JsonKey(name: "created") DateTime created,
      @JsonKey(name: "updated") DateTime updated,
      @JsonKey(name: "type") AddressType type,
      @JsonKey(name: "friendlyName") String? friendlyName,
      @JsonKey(name: "isDefault") bool? isDefault,
      @JsonKey(name: "userId") String userId,
      @JsonKey(name: "addressId") String addressId});
}

/// @nodoc
class _$UserAddressDtoCopyWithImpl<$Res, $Val extends UserAddressDto>
    implements $UserAddressDtoCopyWith<$Res> {
  _$UserAddressDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserAddressDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? collectionId = null,
    Object? collectionName = null,
    Object? created = null,
    Object? updated = null,
    Object? type = null,
    Object? friendlyName = freezed,
    Object? isDefault = freezed,
    Object? userId = null,
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
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as AddressType,
      friendlyName: freezed == friendlyName
          ? _value.friendlyName
          : friendlyName // ignore: cast_nullable_to_non_nullable
              as String?,
      isDefault: freezed == isDefault
          ? _value.isDefault
          : isDefault // ignore: cast_nullable_to_non_nullable
              as bool?,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      addressId: null == addressId
          ? _value.addressId
          : addressId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserAddressDtoImplCopyWith<$Res>
    implements $UserAddressDtoCopyWith<$Res> {
  factory _$$UserAddressDtoImplCopyWith(_$UserAddressDtoImpl value,
          $Res Function(_$UserAddressDtoImpl) then) =
      __$$UserAddressDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") String id,
      @JsonKey(name: "collectionId") String collectionId,
      @JsonKey(name: "collectionName") String collectionName,
      @JsonKey(name: "created") DateTime created,
      @JsonKey(name: "updated") DateTime updated,
      @JsonKey(name: "type") AddressType type,
      @JsonKey(name: "friendlyName") String? friendlyName,
      @JsonKey(name: "isDefault") bool? isDefault,
      @JsonKey(name: "userId") String userId,
      @JsonKey(name: "addressId") String addressId});
}

/// @nodoc
class __$$UserAddressDtoImplCopyWithImpl<$Res>
    extends _$UserAddressDtoCopyWithImpl<$Res, _$UserAddressDtoImpl>
    implements _$$UserAddressDtoImplCopyWith<$Res> {
  __$$UserAddressDtoImplCopyWithImpl(
      _$UserAddressDtoImpl _value, $Res Function(_$UserAddressDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserAddressDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? collectionId = null,
    Object? collectionName = null,
    Object? created = null,
    Object? updated = null,
    Object? type = null,
    Object? friendlyName = freezed,
    Object? isDefault = freezed,
    Object? userId = null,
    Object? addressId = null,
  }) {
    return _then(_$UserAddressDtoImpl(
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
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as AddressType,
      friendlyName: freezed == friendlyName
          ? _value.friendlyName
          : friendlyName // ignore: cast_nullable_to_non_nullable
              as String?,
      isDefault: freezed == isDefault
          ? _value.isDefault
          : isDefault // ignore: cast_nullable_to_non_nullable
              as bool?,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
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
class _$UserAddressDtoImpl
    with DiagnosticableTreeMixin
    implements _UserAddressDto {
  const _$UserAddressDtoImpl(
      {@JsonKey(name: "id") required this.id,
      @JsonKey(name: "collectionId") required this.collectionId,
      @JsonKey(name: "collectionName") required this.collectionName,
      @JsonKey(name: "created") required this.created,
      @JsonKey(name: "updated") required this.updated,
      @JsonKey(name: "type") required this.type,
      @JsonKey(name: "friendlyName") this.friendlyName,
      @JsonKey(name: "isDefault") this.isDefault,
      @JsonKey(name: "userId") required this.userId,
      @JsonKey(name: "addressId") required this.addressId});

  factory _$UserAddressDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserAddressDtoImplFromJson(json);

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
  @JsonKey(name: "type")
  final AddressType type;
  @override
  @JsonKey(name: "friendlyName")
  final String? friendlyName;
  @override
  @JsonKey(name: "isDefault")
  final bool? isDefault;
  @override
  @JsonKey(name: "userId")
  final String userId;
  @override
  @JsonKey(name: "addressId")
  final String addressId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UserAddressDto(id: $id, collectionId: $collectionId, collectionName: $collectionName, created: $created, updated: $updated, type: $type, friendlyName: $friendlyName, isDefault: $isDefault, userId: $userId, addressId: $addressId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UserAddressDto'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('collectionId', collectionId))
      ..add(DiagnosticsProperty('collectionName', collectionName))
      ..add(DiagnosticsProperty('created', created))
      ..add(DiagnosticsProperty('updated', updated))
      ..add(DiagnosticsProperty('type', type))
      ..add(DiagnosticsProperty('friendlyName', friendlyName))
      ..add(DiagnosticsProperty('isDefault', isDefault))
      ..add(DiagnosticsProperty('userId', userId))
      ..add(DiagnosticsProperty('addressId', addressId));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserAddressDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.collectionId, collectionId) ||
                other.collectionId == collectionId) &&
            (identical(other.collectionName, collectionName) ||
                other.collectionName == collectionName) &&
            (identical(other.created, created) || other.created == created) &&
            (identical(other.updated, updated) || other.updated == updated) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.friendlyName, friendlyName) ||
                other.friendlyName == friendlyName) &&
            (identical(other.isDefault, isDefault) ||
                other.isDefault == isDefault) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.addressId, addressId) ||
                other.addressId == addressId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, collectionId, collectionName,
      created, updated, type, friendlyName, isDefault, userId, addressId);

  /// Create a copy of UserAddressDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserAddressDtoImplCopyWith<_$UserAddressDtoImpl> get copyWith =>
      __$$UserAddressDtoImplCopyWithImpl<_$UserAddressDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserAddressDtoImplToJson(
      this,
    );
  }
}

abstract class _UserAddressDto implements UserAddressDto {
  const factory _UserAddressDto(
          {@JsonKey(name: "id") required final String id,
          @JsonKey(name: "collectionId") required final String collectionId,
          @JsonKey(name: "collectionName") required final String collectionName,
          @JsonKey(name: "created") required final DateTime created,
          @JsonKey(name: "updated") required final DateTime updated,
          @JsonKey(name: "type") required final AddressType type,
          @JsonKey(name: "friendlyName") final String? friendlyName,
          @JsonKey(name: "isDefault") final bool? isDefault,
          @JsonKey(name: "userId") required final String userId,
          @JsonKey(name: "addressId") required final String addressId}) =
      _$UserAddressDtoImpl;

  factory _UserAddressDto.fromJson(Map<String, dynamic> json) =
      _$UserAddressDtoImpl.fromJson;

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
  @JsonKey(name: "type")
  AddressType get type;
  @override
  @JsonKey(name: "friendlyName")
  String? get friendlyName;
  @override
  @JsonKey(name: "isDefault")
  bool? get isDefault;
  @override
  @JsonKey(name: "userId")
  String get userId;
  @override
  @JsonKey(name: "addressId")
  String get addressId;

  /// Create a copy of UserAddressDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserAddressDtoImplCopyWith<_$UserAddressDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UserAddressEditDto _$UserAddressEditDtoFromJson(Map<String, dynamic> json) {
  return _UserAddressEditDto.fromJson(json);
}

/// @nodoc
mixin _$UserAddressEditDto {
  @JsonKey(name: "type")
  AddressType get type => throw _privateConstructorUsedError;
  @JsonKey(name: "type")
  set type(AddressType value) => throw _privateConstructorUsedError;
  @JsonKey(name: "friendlyName")
  String? get friendlyName => throw _privateConstructorUsedError;
  @JsonKey(name: "friendlyName")
  set friendlyName(String? value) => throw _privateConstructorUsedError;
  @JsonKey(name: "isDefault")
  bool? get isDefault => throw _privateConstructorUsedError;
  @JsonKey(name: "isDefault")
  set isDefault(bool? value) => throw _privateConstructorUsedError;
  @JsonKey(name: "userId")
  String get userId => throw _privateConstructorUsedError;
  @JsonKey(name: "userId")
  set userId(String value) => throw _privateConstructorUsedError;
  @JsonKey(name: "addressId")
  String get addressId => throw _privateConstructorUsedError;
  @JsonKey(name: "addressId")
  set addressId(String value) => throw _privateConstructorUsedError;

  /// Serializes this UserAddressEditDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserAddressEditDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserAddressEditDtoCopyWith<UserAddressEditDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserAddressEditDtoCopyWith<$Res> {
  factory $UserAddressEditDtoCopyWith(
          UserAddressEditDto value, $Res Function(UserAddressEditDto) then) =
      _$UserAddressEditDtoCopyWithImpl<$Res, UserAddressEditDto>;
  @useResult
  $Res call(
      {@JsonKey(name: "type") AddressType type,
      @JsonKey(name: "friendlyName") String? friendlyName,
      @JsonKey(name: "isDefault") bool? isDefault,
      @JsonKey(name: "userId") String userId,
      @JsonKey(name: "addressId") String addressId});
}

/// @nodoc
class _$UserAddressEditDtoCopyWithImpl<$Res, $Val extends UserAddressEditDto>
    implements $UserAddressEditDtoCopyWith<$Res> {
  _$UserAddressEditDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserAddressEditDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? friendlyName = freezed,
    Object? isDefault = freezed,
    Object? userId = null,
    Object? addressId = null,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as AddressType,
      friendlyName: freezed == friendlyName
          ? _value.friendlyName
          : friendlyName // ignore: cast_nullable_to_non_nullable
              as String?,
      isDefault: freezed == isDefault
          ? _value.isDefault
          : isDefault // ignore: cast_nullable_to_non_nullable
              as bool?,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      addressId: null == addressId
          ? _value.addressId
          : addressId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserAddressEditDtoImplCopyWith<$Res>
    implements $UserAddressEditDtoCopyWith<$Res> {
  factory _$$UserAddressEditDtoImplCopyWith(_$UserAddressEditDtoImpl value,
          $Res Function(_$UserAddressEditDtoImpl) then) =
      __$$UserAddressEditDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "type") AddressType type,
      @JsonKey(name: "friendlyName") String? friendlyName,
      @JsonKey(name: "isDefault") bool? isDefault,
      @JsonKey(name: "userId") String userId,
      @JsonKey(name: "addressId") String addressId});
}

/// @nodoc
class __$$UserAddressEditDtoImplCopyWithImpl<$Res>
    extends _$UserAddressEditDtoCopyWithImpl<$Res, _$UserAddressEditDtoImpl>
    implements _$$UserAddressEditDtoImplCopyWith<$Res> {
  __$$UserAddressEditDtoImplCopyWithImpl(_$UserAddressEditDtoImpl _value,
      $Res Function(_$UserAddressEditDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserAddressEditDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? friendlyName = freezed,
    Object? isDefault = freezed,
    Object? userId = null,
    Object? addressId = null,
  }) {
    return _then(_$UserAddressEditDtoImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as AddressType,
      friendlyName: freezed == friendlyName
          ? _value.friendlyName
          : friendlyName // ignore: cast_nullable_to_non_nullable
              as String?,
      isDefault: freezed == isDefault
          ? _value.isDefault
          : isDefault // ignore: cast_nullable_to_non_nullable
              as bool?,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
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
class _$UserAddressEditDtoImpl
    with DiagnosticableTreeMixin
    implements _UserAddressEditDto {
  _$UserAddressEditDtoImpl(
      {@JsonKey(name: "type") required this.type,
      @JsonKey(name: "friendlyName") this.friendlyName,
      @JsonKey(name: "isDefault") this.isDefault,
      @JsonKey(name: "userId") required this.userId,
      @JsonKey(name: "addressId") required this.addressId});

  factory _$UserAddressEditDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserAddressEditDtoImplFromJson(json);

  @override
  @JsonKey(name: "type")
  AddressType type;
  @override
  @JsonKey(name: "friendlyName")
  String? friendlyName;
  @override
  @JsonKey(name: "isDefault")
  bool? isDefault;
  @override
  @JsonKey(name: "userId")
  String userId;
  @override
  @JsonKey(name: "addressId")
  String addressId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UserAddressEditDto(type: $type, friendlyName: $friendlyName, isDefault: $isDefault, userId: $userId, addressId: $addressId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UserAddressEditDto'))
      ..add(DiagnosticsProperty('type', type))
      ..add(DiagnosticsProperty('friendlyName', friendlyName))
      ..add(DiagnosticsProperty('isDefault', isDefault))
      ..add(DiagnosticsProperty('userId', userId))
      ..add(DiagnosticsProperty('addressId', addressId));
  }

  /// Create a copy of UserAddressEditDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserAddressEditDtoImplCopyWith<_$UserAddressEditDtoImpl> get copyWith =>
      __$$UserAddressEditDtoImplCopyWithImpl<_$UserAddressEditDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserAddressEditDtoImplToJson(
      this,
    );
  }
}

abstract class _UserAddressEditDto implements UserAddressEditDto {
  factory _UserAddressEditDto(
          {@JsonKey(name: "type") required AddressType type,
          @JsonKey(name: "friendlyName") String? friendlyName,
          @JsonKey(name: "isDefault") bool? isDefault,
          @JsonKey(name: "userId") required String userId,
          @JsonKey(name: "addressId") required String addressId}) =
      _$UserAddressEditDtoImpl;

  factory _UserAddressEditDto.fromJson(Map<String, dynamic> json) =
      _$UserAddressEditDtoImpl.fromJson;

  @override
  @JsonKey(name: "type")
  AddressType get type;
  @JsonKey(name: "type")
  set type(AddressType value);
  @override
  @JsonKey(name: "friendlyName")
  String? get friendlyName;
  @JsonKey(name: "friendlyName")
  set friendlyName(String? value);
  @override
  @JsonKey(name: "isDefault")
  bool? get isDefault;
  @JsonKey(name: "isDefault")
  set isDefault(bool? value);
  @override
  @JsonKey(name: "userId")
  String get userId;
  @JsonKey(name: "userId")
  set userId(String value);
  @override
  @JsonKey(name: "addressId")
  String get addressId;
  @JsonKey(name: "addressId")
  set addressId(String value);

  /// Create a copy of UserAddressEditDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserAddressEditDtoImplCopyWith<_$UserAddressEditDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
