// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'staff_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$StaffInfo {
  StaffInfoDto get staff => throw _privateConstructorUsedError;
  UserDto get user => throw _privateConstructorUsedError;
  WorkingUnitDto get workingUnit => throw _privateConstructorUsedError;

  /// Create a copy of StaffInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StaffInfoCopyWith<StaffInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StaffInfoCopyWith<$Res> {
  factory $StaffInfoCopyWith(StaffInfo value, $Res Function(StaffInfo) then) =
      _$StaffInfoCopyWithImpl<$Res, StaffInfo>;
  @useResult
  $Res call({StaffInfoDto staff, UserDto user, WorkingUnitDto workingUnit});

  $StaffInfoDtoCopyWith<$Res> get staff;
  $UserDtoCopyWith<$Res> get user;
  $WorkingUnitDtoCopyWith<$Res> get workingUnit;
}

/// @nodoc
class _$StaffInfoCopyWithImpl<$Res, $Val extends StaffInfo>
    implements $StaffInfoCopyWith<$Res> {
  _$StaffInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StaffInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? staff = null,
    Object? user = null,
    Object? workingUnit = null,
  }) {
    return _then(_value.copyWith(
      staff: null == staff
          ? _value.staff
          : staff // ignore: cast_nullable_to_non_nullable
              as StaffInfoDto,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserDto,
      workingUnit: null == workingUnit
          ? _value.workingUnit
          : workingUnit // ignore: cast_nullable_to_non_nullable
              as WorkingUnitDto,
    ) as $Val);
  }

  /// Create a copy of StaffInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StaffInfoDtoCopyWith<$Res> get staff {
    return $StaffInfoDtoCopyWith<$Res>(_value.staff, (value) {
      return _then(_value.copyWith(staff: value) as $Val);
    });
  }

  /// Create a copy of StaffInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserDtoCopyWith<$Res> get user {
    return $UserDtoCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }

  /// Create a copy of StaffInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $WorkingUnitDtoCopyWith<$Res> get workingUnit {
    return $WorkingUnitDtoCopyWith<$Res>(_value.workingUnit, (value) {
      return _then(_value.copyWith(workingUnit: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$StaffInfoImplCopyWith<$Res>
    implements $StaffInfoCopyWith<$Res> {
  factory _$$StaffInfoImplCopyWith(
          _$StaffInfoImpl value, $Res Function(_$StaffInfoImpl) then) =
      __$$StaffInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({StaffInfoDto staff, UserDto user, WorkingUnitDto workingUnit});

  @override
  $StaffInfoDtoCopyWith<$Res> get staff;
  @override
  $UserDtoCopyWith<$Res> get user;
  @override
  $WorkingUnitDtoCopyWith<$Res> get workingUnit;
}

/// @nodoc
class __$$StaffInfoImplCopyWithImpl<$Res>
    extends _$StaffInfoCopyWithImpl<$Res, _$StaffInfoImpl>
    implements _$$StaffInfoImplCopyWith<$Res> {
  __$$StaffInfoImplCopyWithImpl(
      _$StaffInfoImpl _value, $Res Function(_$StaffInfoImpl) _then)
      : super(_value, _then);

  /// Create a copy of StaffInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? staff = null,
    Object? user = null,
    Object? workingUnit = null,
  }) {
    return _then(_$StaffInfoImpl(
      staff: null == staff
          ? _value.staff
          : staff // ignore: cast_nullable_to_non_nullable
              as StaffInfoDto,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserDto,
      workingUnit: null == workingUnit
          ? _value.workingUnit
          : workingUnit // ignore: cast_nullable_to_non_nullable
              as WorkingUnitDto,
    ));
  }
}

/// @nodoc

class _$StaffInfoImpl implements _StaffInfo {
  const _$StaffInfoImpl(
      {required this.staff, required this.user, required this.workingUnit});

  @override
  final StaffInfoDto staff;
  @override
  final UserDto user;
  @override
  final WorkingUnitDto workingUnit;

  @override
  String toString() {
    return 'StaffInfo(staff: $staff, user: $user, workingUnit: $workingUnit)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StaffInfoImpl &&
            (identical(other.staff, staff) || other.staff == staff) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.workingUnit, workingUnit) ||
                other.workingUnit == workingUnit));
  }

  @override
  int get hashCode => Object.hash(runtimeType, staff, user, workingUnit);

  /// Create a copy of StaffInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StaffInfoImplCopyWith<_$StaffInfoImpl> get copyWith =>
      __$$StaffInfoImplCopyWithImpl<_$StaffInfoImpl>(this, _$identity);
}

abstract class _StaffInfo implements StaffInfo {
  const factory _StaffInfo(
      {required final StaffInfoDto staff,
      required final UserDto user,
      required final WorkingUnitDto workingUnit}) = _$StaffInfoImpl;

  @override
  StaffInfoDto get staff;
  @override
  UserDto get user;
  @override
  WorkingUnitDto get workingUnit;

  /// Create a copy of StaffInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StaffInfoImplCopyWith<_$StaffInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
