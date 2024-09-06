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

UserAddressDTO _$UserAddressDTOFromJson(Map<String, dynamic> json) {
  return _UserAddressDTO.fromJson(json);
}

/// @nodoc
mixin _$UserAddressDTO {
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
  String get type => throw _privateConstructorUsedError;
  @JsonKey(name: "friendlyName")
  String? get friendlyName => throw _privateConstructorUsedError;
  @JsonKey(name: "isDefault")
  bool? get isDefault => throw _privateConstructorUsedError;
  @JsonKey(name: "userId")
  String get userId => throw _privateConstructorUsedError;
  @JsonKey(name: "addressId")
  String get addressId => throw _privateConstructorUsedError;

  /// Serializes this UserAddressDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserAddressDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserAddressDTOCopyWith<UserAddressDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserAddressDTOCopyWith<$Res> {
  factory $UserAddressDTOCopyWith(
          UserAddressDTO value, $Res Function(UserAddressDTO) then) =
      _$UserAddressDTOCopyWithImpl<$Res, UserAddressDTO>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") String id,
      @JsonKey(name: "collectionId") String collectionId,
      @JsonKey(name: "collectionName") String collectionName,
      @JsonKey(name: "created") DateTime created,
      @JsonKey(name: "updated") DateTime updated,
      @JsonKey(name: "type") String type,
      @JsonKey(name: "friendlyName") String? friendlyName,
      @JsonKey(name: "isDefault") bool? isDefault,
      @JsonKey(name: "userId") String userId,
      @JsonKey(name: "addressId") String addressId});
}

/// @nodoc
class _$UserAddressDTOCopyWithImpl<$Res, $Val extends UserAddressDTO>
    implements $UserAddressDTOCopyWith<$Res> {
  _$UserAddressDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserAddressDTO
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
              as String,
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
abstract class _$$UserAddressDTOImplCopyWith<$Res>
    implements $UserAddressDTOCopyWith<$Res> {
  factory _$$UserAddressDTOImplCopyWith(_$UserAddressDTOImpl value,
          $Res Function(_$UserAddressDTOImpl) then) =
      __$$UserAddressDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") String id,
      @JsonKey(name: "collectionId") String collectionId,
      @JsonKey(name: "collectionName") String collectionName,
      @JsonKey(name: "created") DateTime created,
      @JsonKey(name: "updated") DateTime updated,
      @JsonKey(name: "type") String type,
      @JsonKey(name: "friendlyName") String? friendlyName,
      @JsonKey(name: "isDefault") bool? isDefault,
      @JsonKey(name: "userId") String userId,
      @JsonKey(name: "addressId") String addressId});
}

/// @nodoc
class __$$UserAddressDTOImplCopyWithImpl<$Res>
    extends _$UserAddressDTOCopyWithImpl<$Res, _$UserAddressDTOImpl>
    implements _$$UserAddressDTOImplCopyWith<$Res> {
  __$$UserAddressDTOImplCopyWithImpl(
      _$UserAddressDTOImpl _value, $Res Function(_$UserAddressDTOImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserAddressDTO
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
    return _then(_$UserAddressDTOImpl(
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
              as String,
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
class _$UserAddressDTOImpl
    with DiagnosticableTreeMixin
    implements _UserAddressDTO {
  const _$UserAddressDTOImpl(
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

  factory _$UserAddressDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserAddressDTOImplFromJson(json);

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
  final String type;
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
    return 'UserAddressDTO(id: $id, collectionId: $collectionId, collectionName: $collectionName, created: $created, updated: $updated, type: $type, friendlyName: $friendlyName, isDefault: $isDefault, userId: $userId, addressId: $addressId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UserAddressDTO'))
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
            other is _$UserAddressDTOImpl &&
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

  /// Create a copy of UserAddressDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserAddressDTOImplCopyWith<_$UserAddressDTOImpl> get copyWith =>
      __$$UserAddressDTOImplCopyWithImpl<_$UserAddressDTOImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserAddressDTOImplToJson(
      this,
    );
  }
}

abstract class _UserAddressDTO implements UserAddressDTO {
  const factory _UserAddressDTO(
          {@JsonKey(name: "id") required final String id,
          @JsonKey(name: "collectionId") required final String collectionId,
          @JsonKey(name: "collectionName") required final String collectionName,
          @JsonKey(name: "created") required final DateTime created,
          @JsonKey(name: "updated") required final DateTime updated,
          @JsonKey(name: "type") required final String type,
          @JsonKey(name: "friendlyName") final String? friendlyName,
          @JsonKey(name: "isDefault") final bool? isDefault,
          @JsonKey(name: "userId") required final String userId,
          @JsonKey(name: "addressId") required final String addressId}) =
      _$UserAddressDTOImpl;

  factory _UserAddressDTO.fromJson(Map<String, dynamic> json) =
      _$UserAddressDTOImpl.fromJson;

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
  String get type;
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

  /// Create a copy of UserAddressDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserAddressDTOImplCopyWith<_$UserAddressDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UserAddressEditDTO _$UserAddressEditDTOFromJson(Map<String, dynamic> json) {
  return _UserAddressEditDTO.fromJson(json);
}

/// @nodoc
mixin _$UserAddressEditDTO {
  @JsonKey(name: "type")
  String get type => throw _privateConstructorUsedError;
  @JsonKey(name: "type")
  set type(String value) => throw _privateConstructorUsedError;
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

  /// Serializes this UserAddressEditDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserAddressEditDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserAddressEditDTOCopyWith<UserAddressEditDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserAddressEditDTOCopyWith<$Res> {
  factory $UserAddressEditDTOCopyWith(
          UserAddressEditDTO value, $Res Function(UserAddressEditDTO) then) =
      _$UserAddressEditDTOCopyWithImpl<$Res, UserAddressEditDTO>;
  @useResult
  $Res call(
      {@JsonKey(name: "type") String type,
      @JsonKey(name: "friendlyName") String? friendlyName,
      @JsonKey(name: "isDefault") bool? isDefault,
      @JsonKey(name: "userId") String userId,
      @JsonKey(name: "addressId") String addressId});
}

/// @nodoc
class _$UserAddressEditDTOCopyWithImpl<$Res, $Val extends UserAddressEditDTO>
    implements $UserAddressEditDTOCopyWith<$Res> {
  _$UserAddressEditDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserAddressEditDTO
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
              as String,
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
abstract class _$$UserAddressEditDTOImplCopyWith<$Res>
    implements $UserAddressEditDTOCopyWith<$Res> {
  factory _$$UserAddressEditDTOImplCopyWith(_$UserAddressEditDTOImpl value,
          $Res Function(_$UserAddressEditDTOImpl) then) =
      __$$UserAddressEditDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "type") String type,
      @JsonKey(name: "friendlyName") String? friendlyName,
      @JsonKey(name: "isDefault") bool? isDefault,
      @JsonKey(name: "userId") String userId,
      @JsonKey(name: "addressId") String addressId});
}

/// @nodoc
class __$$UserAddressEditDTOImplCopyWithImpl<$Res>
    extends _$UserAddressEditDTOCopyWithImpl<$Res, _$UserAddressEditDTOImpl>
    implements _$$UserAddressEditDTOImplCopyWith<$Res> {
  __$$UserAddressEditDTOImplCopyWithImpl(_$UserAddressEditDTOImpl _value,
      $Res Function(_$UserAddressEditDTOImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserAddressEditDTO
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
    return _then(_$UserAddressEditDTOImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
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
class _$UserAddressEditDTOImpl
    with DiagnosticableTreeMixin
    implements _UserAddressEditDTO {
  _$UserAddressEditDTOImpl(
      {@JsonKey(name: "type") required this.type,
      @JsonKey(name: "friendlyName") this.friendlyName,
      @JsonKey(name: "isDefault") this.isDefault,
      @JsonKey(name: "userId") required this.userId,
      @JsonKey(name: "addressId") required this.addressId});

  factory _$UserAddressEditDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserAddressEditDTOImplFromJson(json);

  @override
  @JsonKey(name: "type")
  String type;
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
    return 'UserAddressEditDTO(type: $type, friendlyName: $friendlyName, isDefault: $isDefault, userId: $userId, addressId: $addressId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UserAddressEditDTO'))
      ..add(DiagnosticsProperty('type', type))
      ..add(DiagnosticsProperty('friendlyName', friendlyName))
      ..add(DiagnosticsProperty('isDefault', isDefault))
      ..add(DiagnosticsProperty('userId', userId))
      ..add(DiagnosticsProperty('addressId', addressId));
  }

  /// Create a copy of UserAddressEditDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserAddressEditDTOImplCopyWith<_$UserAddressEditDTOImpl> get copyWith =>
      __$$UserAddressEditDTOImplCopyWithImpl<_$UserAddressEditDTOImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserAddressEditDTOImplToJson(
      this,
    );
  }
}

abstract class _UserAddressEditDTO implements UserAddressEditDTO {
  factory _UserAddressEditDTO(
          {@JsonKey(name: "type") required String type,
          @JsonKey(name: "friendlyName") String? friendlyName,
          @JsonKey(name: "isDefault") bool? isDefault,
          @JsonKey(name: "userId") required String userId,
          @JsonKey(name: "addressId") required String addressId}) =
      _$UserAddressEditDTOImpl;

  factory _UserAddressEditDTO.fromJson(Map<String, dynamic> json) =
      _$UserAddressEditDTOImpl.fromJson;

  @override
  @JsonKey(name: "type")
  String get type;
  @JsonKey(name: "type")
  set type(String value);
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

  /// Create a copy of UserAddressEditDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserAddressEditDTOImplCopyWith<_$UserAddressEditDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
