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

/// @nodoc
mixin _$GuestInfo {
  GuestInfoDto get guest => throw _privateConstructorUsedError;
  AddressDto get address => throw _privateConstructorUsedError;

  /// Create a copy of GuestInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GuestInfoCopyWith<GuestInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GuestInfoCopyWith<$Res> {
  factory $GuestInfoCopyWith(GuestInfo value, $Res Function(GuestInfo) then) =
      _$GuestInfoCopyWithImpl<$Res, GuestInfo>;
  @useResult
  $Res call({GuestInfoDto guest, AddressDto address});

  $GuestInfoDtoCopyWith<$Res> get guest;
  $AddressDtoCopyWith<$Res> get address;
}

/// @nodoc
class _$GuestInfoCopyWithImpl<$Res, $Val extends GuestInfo>
    implements $GuestInfoCopyWith<$Res> {
  _$GuestInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GuestInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? guest = null,
    Object? address = null,
  }) {
    return _then(_value.copyWith(
      guest: null == guest
          ? _value.guest
          : guest // ignore: cast_nullable_to_non_nullable
              as GuestInfoDto,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as AddressDto,
    ) as $Val);
  }

  /// Create a copy of GuestInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GuestInfoDtoCopyWith<$Res> get guest {
    return $GuestInfoDtoCopyWith<$Res>(_value.guest, (value) {
      return _then(_value.copyWith(guest: value) as $Val);
    });
  }

  /// Create a copy of GuestInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AddressDtoCopyWith<$Res> get address {
    return $AddressDtoCopyWith<$Res>(_value.address, (value) {
      return _then(_value.copyWith(address: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GuestInfoImplCopyWith<$Res>
    implements $GuestInfoCopyWith<$Res> {
  factory _$$GuestInfoImplCopyWith(
          _$GuestInfoImpl value, $Res Function(_$GuestInfoImpl) then) =
      __$$GuestInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({GuestInfoDto guest, AddressDto address});

  @override
  $GuestInfoDtoCopyWith<$Res> get guest;
  @override
  $AddressDtoCopyWith<$Res> get address;
}

/// @nodoc
class __$$GuestInfoImplCopyWithImpl<$Res>
    extends _$GuestInfoCopyWithImpl<$Res, _$GuestInfoImpl>
    implements _$$GuestInfoImplCopyWith<$Res> {
  __$$GuestInfoImplCopyWithImpl(
      _$GuestInfoImpl _value, $Res Function(_$GuestInfoImpl) _then)
      : super(_value, _then);

  /// Create a copy of GuestInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? guest = null,
    Object? address = null,
  }) {
    return _then(_$GuestInfoImpl(
      guest: null == guest
          ? _value.guest
          : guest // ignore: cast_nullable_to_non_nullable
              as GuestInfoDto,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as AddressDto,
    ));
  }
}

/// @nodoc

class _$GuestInfoImpl with DiagnosticableTreeMixin implements _GuestInfo {
  const _$GuestInfoImpl({required this.guest, required this.address});

  @override
  final GuestInfoDto guest;
  @override
  final AddressDto address;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'GuestInfo(guest: $guest, address: $address)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'GuestInfo'))
      ..add(DiagnosticsProperty('guest', guest))
      ..add(DiagnosticsProperty('address', address));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GuestInfoImpl &&
            (identical(other.guest, guest) || other.guest == guest) &&
            (identical(other.address, address) || other.address == address));
  }

  @override
  int get hashCode => Object.hash(runtimeType, guest, address);

  /// Create a copy of GuestInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GuestInfoImplCopyWith<_$GuestInfoImpl> get copyWith =>
      __$$GuestInfoImplCopyWithImpl<_$GuestInfoImpl>(this, _$identity);
}

abstract class _GuestInfo implements GuestInfo {
  const factory _GuestInfo(
      {required final GuestInfoDto guest,
      required final AddressDto address}) = _$GuestInfoImpl;

  @override
  GuestInfoDto get guest;
  @override
  AddressDto get address;

  /// Create a copy of GuestInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GuestInfoImplCopyWith<_$GuestInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
