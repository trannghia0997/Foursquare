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

UserAddress _$UserAddressFromJson(Map<String, dynamic> json) {
  return _UserAddress.fromJson(json);
}

/// @nodoc
mixin _$UserAddress {
  @JsonKey(name: 'user_id')
  String get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'address_id')
  String get addressId => throw _privateConstructorUsedError;
  @JsonKey(name: 'friendly_name')
  String get friendlyName => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_default')
  bool get isDefault => throw _privateConstructorUsedError;
  @JsonKey(includeFromJson: false, includeToJson: false)
  RecordModel? get record => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserAddressCopyWith<UserAddress> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserAddressCopyWith<$Res> {
  factory $UserAddressCopyWith(
          UserAddress value, $Res Function(UserAddress) then) =
      _$UserAddressCopyWithImpl<$Res, UserAddress>;
  @useResult
  $Res call(
      {@JsonKey(name: 'user_id') String userId,
      @JsonKey(name: 'address_id') String addressId,
      @JsonKey(name: 'friendly_name') String friendlyName,
      @JsonKey(name: 'is_default') bool isDefault,
      @JsonKey(includeFromJson: false, includeToJson: false)
      RecordModel? record});
}

/// @nodoc
class _$UserAddressCopyWithImpl<$Res, $Val extends UserAddress>
    implements $UserAddressCopyWith<$Res> {
  _$UserAddressCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? addressId = null,
    Object? friendlyName = null,
    Object? isDefault = null,
    Object? record = freezed,
  }) {
    return _then(_value.copyWith(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      addressId: null == addressId
          ? _value.addressId
          : addressId // ignore: cast_nullable_to_non_nullable
              as String,
      friendlyName: null == friendlyName
          ? _value.friendlyName
          : friendlyName // ignore: cast_nullable_to_non_nullable
              as String,
      isDefault: null == isDefault
          ? _value.isDefault
          : isDefault // ignore: cast_nullable_to_non_nullable
              as bool,
      record: freezed == record
          ? _value.record
          : record // ignore: cast_nullable_to_non_nullable
              as RecordModel?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserAddressImplCopyWith<$Res>
    implements $UserAddressCopyWith<$Res> {
  factory _$$UserAddressImplCopyWith(
          _$UserAddressImpl value, $Res Function(_$UserAddressImpl) then) =
      __$$UserAddressImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'user_id') String userId,
      @JsonKey(name: 'address_id') String addressId,
      @JsonKey(name: 'friendly_name') String friendlyName,
      @JsonKey(name: 'is_default') bool isDefault,
      @JsonKey(includeFromJson: false, includeToJson: false)
      RecordModel? record});
}

/// @nodoc
class __$$UserAddressImplCopyWithImpl<$Res>
    extends _$UserAddressCopyWithImpl<$Res, _$UserAddressImpl>
    implements _$$UserAddressImplCopyWith<$Res> {
  __$$UserAddressImplCopyWithImpl(
      _$UserAddressImpl _value, $Res Function(_$UserAddressImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? addressId = null,
    Object? friendlyName = null,
    Object? isDefault = null,
    Object? record = freezed,
  }) {
    return _then(_$UserAddressImpl(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      addressId: null == addressId
          ? _value.addressId
          : addressId // ignore: cast_nullable_to_non_nullable
              as String,
      friendlyName: null == friendlyName
          ? _value.friendlyName
          : friendlyName // ignore: cast_nullable_to_non_nullable
              as String,
      isDefault: null == isDefault
          ? _value.isDefault
          : isDefault // ignore: cast_nullable_to_non_nullable
              as bool,
      record: freezed == record
          ? _value.record
          : record // ignore: cast_nullable_to_non_nullable
              as RecordModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserAddressImpl with DiagnosticableTreeMixin implements _UserAddress {
  const _$UserAddressImpl(
      {@JsonKey(name: 'user_id') required this.userId,
      @JsonKey(name: 'address_id') required this.addressId,
      @JsonKey(name: 'friendly_name') required this.friendlyName,
      @JsonKey(name: 'is_default') this.isDefault = false,
      @JsonKey(includeFromJson: false, includeToJson: false) this.record});

  factory _$UserAddressImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserAddressImplFromJson(json);

  @override
  @JsonKey(name: 'user_id')
  final String userId;
  @override
  @JsonKey(name: 'address_id')
  final String addressId;
  @override
  @JsonKey(name: 'friendly_name')
  final String friendlyName;
  @override
  @JsonKey(name: 'is_default')
  final bool isDefault;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  final RecordModel? record;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UserAddress(userId: $userId, addressId: $addressId, friendlyName: $friendlyName, isDefault: $isDefault, record: $record)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UserAddress'))
      ..add(DiagnosticsProperty('userId', userId))
      ..add(DiagnosticsProperty('addressId', addressId))
      ..add(DiagnosticsProperty('friendlyName', friendlyName))
      ..add(DiagnosticsProperty('isDefault', isDefault))
      ..add(DiagnosticsProperty('record', record));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserAddressImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.addressId, addressId) ||
                other.addressId == addressId) &&
            (identical(other.friendlyName, friendlyName) ||
                other.friendlyName == friendlyName) &&
            (identical(other.isDefault, isDefault) ||
                other.isDefault == isDefault) &&
            (identical(other.record, record) || other.record == record));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, userId, addressId, friendlyName, isDefault, record);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserAddressImplCopyWith<_$UserAddressImpl> get copyWith =>
      __$$UserAddressImplCopyWithImpl<_$UserAddressImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserAddressImplToJson(
      this,
    );
  }
}

abstract class _UserAddress implements UserAddress {
  const factory _UserAddress(
      {@JsonKey(name: 'user_id') required final String userId,
      @JsonKey(name: 'address_id') required final String addressId,
      @JsonKey(name: 'friendly_name') required final String friendlyName,
      @JsonKey(name: 'is_default') final bool isDefault,
      @JsonKey(includeFromJson: false, includeToJson: false)
      final RecordModel? record}) = _$UserAddressImpl;

  factory _UserAddress.fromJson(Map<String, dynamic> json) =
      _$UserAddressImpl.fromJson;

  @override
  @JsonKey(name: 'user_id')
  String get userId;
  @override
  @JsonKey(name: 'address_id')
  String get addressId;
  @override
  @JsonKey(name: 'friendly_name')
  String get friendlyName;
  @override
  @JsonKey(name: 'is_default')
  bool get isDefault;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  RecordModel? get record;
  @override
  @JsonKey(ignore: true)
  _$$UserAddressImplCopyWith<_$UserAddressImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
