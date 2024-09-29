// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'working_unit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$WorkingUnitInfo {
  WorkingUnitDto get workingUnit => throw _privateConstructorUsedError;
  AddressDto? get address => throw _privateConstructorUsedError;

  /// Create a copy of WorkingUnitInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WorkingUnitInfoCopyWith<WorkingUnitInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WorkingUnitInfoCopyWith<$Res> {
  factory $WorkingUnitInfoCopyWith(
          WorkingUnitInfo value, $Res Function(WorkingUnitInfo) then) =
      _$WorkingUnitInfoCopyWithImpl<$Res, WorkingUnitInfo>;
  @useResult
  $Res call({WorkingUnitDto workingUnit, AddressDto? address});

  $WorkingUnitDtoCopyWith<$Res> get workingUnit;
  $AddressDtoCopyWith<$Res>? get address;
}

/// @nodoc
class _$WorkingUnitInfoCopyWithImpl<$Res, $Val extends WorkingUnitInfo>
    implements $WorkingUnitInfoCopyWith<$Res> {
  _$WorkingUnitInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WorkingUnitInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? workingUnit = null,
    Object? address = freezed,
  }) {
    return _then(_value.copyWith(
      workingUnit: null == workingUnit
          ? _value.workingUnit
          : workingUnit // ignore: cast_nullable_to_non_nullable
              as WorkingUnitDto,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as AddressDto?,
    ) as $Val);
  }

  /// Create a copy of WorkingUnitInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $WorkingUnitDtoCopyWith<$Res> get workingUnit {
    return $WorkingUnitDtoCopyWith<$Res>(_value.workingUnit, (value) {
      return _then(_value.copyWith(workingUnit: value) as $Val);
    });
  }

  /// Create a copy of WorkingUnitInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AddressDtoCopyWith<$Res>? get address {
    if (_value.address == null) {
      return null;
    }

    return $AddressDtoCopyWith<$Res>(_value.address!, (value) {
      return _then(_value.copyWith(address: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$WorkingUnitInfoImplCopyWith<$Res>
    implements $WorkingUnitInfoCopyWith<$Res> {
  factory _$$WorkingUnitInfoImplCopyWith(_$WorkingUnitInfoImpl value,
          $Res Function(_$WorkingUnitInfoImpl) then) =
      __$$WorkingUnitInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({WorkingUnitDto workingUnit, AddressDto? address});

  @override
  $WorkingUnitDtoCopyWith<$Res> get workingUnit;
  @override
  $AddressDtoCopyWith<$Res>? get address;
}

/// @nodoc
class __$$WorkingUnitInfoImplCopyWithImpl<$Res>
    extends _$WorkingUnitInfoCopyWithImpl<$Res, _$WorkingUnitInfoImpl>
    implements _$$WorkingUnitInfoImplCopyWith<$Res> {
  __$$WorkingUnitInfoImplCopyWithImpl(
      _$WorkingUnitInfoImpl _value, $Res Function(_$WorkingUnitInfoImpl) _then)
      : super(_value, _then);

  /// Create a copy of WorkingUnitInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? workingUnit = null,
    Object? address = freezed,
  }) {
    return _then(_$WorkingUnitInfoImpl(
      workingUnit: null == workingUnit
          ? _value.workingUnit
          : workingUnit // ignore: cast_nullable_to_non_nullable
              as WorkingUnitDto,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as AddressDto?,
    ));
  }
}

/// @nodoc

class _$WorkingUnitInfoImpl implements _WorkingUnitInfo {
  const _$WorkingUnitInfoImpl({required this.workingUnit, this.address});

  @override
  final WorkingUnitDto workingUnit;
  @override
  final AddressDto? address;

  @override
  String toString() {
    return 'WorkingUnitInfo(workingUnit: $workingUnit, address: $address)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WorkingUnitInfoImpl &&
            (identical(other.workingUnit, workingUnit) ||
                other.workingUnit == workingUnit) &&
            (identical(other.address, address) || other.address == address));
  }

  @override
  int get hashCode => Object.hash(runtimeType, workingUnit, address);

  /// Create a copy of WorkingUnitInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WorkingUnitInfoImplCopyWith<_$WorkingUnitInfoImpl> get copyWith =>
      __$$WorkingUnitInfoImplCopyWithImpl<_$WorkingUnitInfoImpl>(
          this, _$identity);
}

abstract class _WorkingUnitInfo implements WorkingUnitInfo {
  const factory _WorkingUnitInfo(
      {required final WorkingUnitDto workingUnit,
      final AddressDto? address}) = _$WorkingUnitInfoImpl;

  @override
  WorkingUnitDto get workingUnit;
  @override
  AddressDto? get address;

  /// Create a copy of WorkingUnitInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WorkingUnitInfoImplCopyWith<_$WorkingUnitInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
