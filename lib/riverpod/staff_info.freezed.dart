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
mixin _$StaffInfoModel {
  StaffInfoDto get staff => throw _privateConstructorUsedError;
  UserDto get userInfo => throw _privateConstructorUsedError;
  WorkingUnitDto get workingUnit => throw _privateConstructorUsedError;

  /// Create a copy of StaffInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StaffInfoModelCopyWith<StaffInfoModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StaffInfoModelCopyWith<$Res> {
  factory $StaffInfoModelCopyWith(
          StaffInfoModel value, $Res Function(StaffInfoModel) then) =
      _$StaffInfoModelCopyWithImpl<$Res, StaffInfoModel>;
  @useResult
  $Res call({StaffInfoDto staff, UserDto userInfo, WorkingUnitDto workingUnit});

  $StaffInfoDtoCopyWith<$Res> get staff;
  $UserDtoCopyWith<$Res> get userInfo;
  $WorkingUnitDtoCopyWith<$Res> get workingUnit;
}

/// @nodoc
class _$StaffInfoModelCopyWithImpl<$Res, $Val extends StaffInfoModel>
    implements $StaffInfoModelCopyWith<$Res> {
  _$StaffInfoModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StaffInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? staff = null,
    Object? userInfo = null,
    Object? workingUnit = null,
  }) {
    return _then(_value.copyWith(
      staff: null == staff
          ? _value.staff
          : staff // ignore: cast_nullable_to_non_nullable
              as StaffInfoDto,
      userInfo: null == userInfo
          ? _value.userInfo
          : userInfo // ignore: cast_nullable_to_non_nullable
              as UserDto,
      workingUnit: null == workingUnit
          ? _value.workingUnit
          : workingUnit // ignore: cast_nullable_to_non_nullable
              as WorkingUnitDto,
    ) as $Val);
  }

  /// Create a copy of StaffInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StaffInfoDtoCopyWith<$Res> get staff {
    return $StaffInfoDtoCopyWith<$Res>(_value.staff, (value) {
      return _then(_value.copyWith(staff: value) as $Val);
    });
  }

  /// Create a copy of StaffInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserDtoCopyWith<$Res> get userInfo {
    return $UserDtoCopyWith<$Res>(_value.userInfo, (value) {
      return _then(_value.copyWith(userInfo: value) as $Val);
    });
  }

  /// Create a copy of StaffInfoModel
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
abstract class _$$StaffInfoModelImplCopyWith<$Res>
    implements $StaffInfoModelCopyWith<$Res> {
  factory _$$StaffInfoModelImplCopyWith(_$StaffInfoModelImpl value,
          $Res Function(_$StaffInfoModelImpl) then) =
      __$$StaffInfoModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({StaffInfoDto staff, UserDto userInfo, WorkingUnitDto workingUnit});

  @override
  $StaffInfoDtoCopyWith<$Res> get staff;
  @override
  $UserDtoCopyWith<$Res> get userInfo;
  @override
  $WorkingUnitDtoCopyWith<$Res> get workingUnit;
}

/// @nodoc
class __$$StaffInfoModelImplCopyWithImpl<$Res>
    extends _$StaffInfoModelCopyWithImpl<$Res, _$StaffInfoModelImpl>
    implements _$$StaffInfoModelImplCopyWith<$Res> {
  __$$StaffInfoModelImplCopyWithImpl(
      _$StaffInfoModelImpl _value, $Res Function(_$StaffInfoModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of StaffInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? staff = null,
    Object? userInfo = null,
    Object? workingUnit = null,
  }) {
    return _then(_$StaffInfoModelImpl(
      staff: null == staff
          ? _value.staff
          : staff // ignore: cast_nullable_to_non_nullable
              as StaffInfoDto,
      userInfo: null == userInfo
          ? _value.userInfo
          : userInfo // ignore: cast_nullable_to_non_nullable
              as UserDto,
      workingUnit: null == workingUnit
          ? _value.workingUnit
          : workingUnit // ignore: cast_nullable_to_non_nullable
              as WorkingUnitDto,
    ));
  }
}

/// @nodoc

class _$StaffInfoModelImpl implements _StaffInfoModel {
  const _$StaffInfoModelImpl(
      {required this.staff, required this.userInfo, required this.workingUnit});

  @override
  final StaffInfoDto staff;
  @override
  final UserDto userInfo;
  @override
  final WorkingUnitDto workingUnit;

  @override
  String toString() {
    return 'StaffInfoModel(staff: $staff, userInfo: $userInfo, workingUnit: $workingUnit)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StaffInfoModelImpl &&
            (identical(other.staff, staff) || other.staff == staff) &&
            (identical(other.userInfo, userInfo) ||
                other.userInfo == userInfo) &&
            (identical(other.workingUnit, workingUnit) ||
                other.workingUnit == workingUnit));
  }

  @override
  int get hashCode => Object.hash(runtimeType, staff, userInfo, workingUnit);

  /// Create a copy of StaffInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StaffInfoModelImplCopyWith<_$StaffInfoModelImpl> get copyWith =>
      __$$StaffInfoModelImplCopyWithImpl<_$StaffInfoModelImpl>(
          this, _$identity);
}

abstract class _StaffInfoModel implements StaffInfoModel {
  const factory _StaffInfoModel(
      {required final StaffInfoDto staff,
      required final UserDto userInfo,
      required final WorkingUnitDto workingUnit}) = _$StaffInfoModelImpl;

  @override
  StaffInfoDto get staff;
  @override
  UserDto get userInfo;
  @override
  WorkingUnitDto get workingUnit;

  /// Create a copy of StaffInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StaffInfoModelImplCopyWith<_$StaffInfoModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
