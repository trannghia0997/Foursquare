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

StaffInfo _$StaffInfoFromJson(Map<String, dynamic> json) {
  return _StaffInfo.fromJson(json);
}

/// @nodoc
mixin _$StaffInfo {
  int? get id => throw _privateConstructorUsedError;
  StaffStatus? get status => throw _privateConstructorUsedError;
  String? get createdBy => throw _privateConstructorUsedError;
  DateTime? get createdDate => throw _privateConstructorUsedError;
  String? get lastModifiedBy => throw _privateConstructorUsedError;
  DateTime? get lastModifiedDate => throw _privateConstructorUsedError;
  User? get user => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: true)
  WorkingUnit? get workingUnit => throw _privateConstructorUsedError;

  /// Serializes this StaffInfo to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

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
  $Res call(
      {int? id,
      StaffStatus? status,
      String? createdBy,
      DateTime? createdDate,
      String? lastModifiedBy,
      DateTime? lastModifiedDate,
      User? user,
      @JsonKey(includeIfNull: true) WorkingUnit? workingUnit});

  $UserCopyWith<$Res>? get user;
  $WorkingUnitCopyWith<$Res>? get workingUnit;
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
    Object? id = freezed,
    Object? status = freezed,
    Object? createdBy = freezed,
    Object? createdDate = freezed,
    Object? lastModifiedBy = freezed,
    Object? lastModifiedDate = freezed,
    Object? user = freezed,
    Object? workingUnit = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StaffStatus?,
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
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      workingUnit: freezed == workingUnit
          ? _value.workingUnit
          : workingUnit // ignore: cast_nullable_to_non_nullable
              as WorkingUnit?,
    ) as $Val);
  }

  /// Create a copy of StaffInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }

  /// Create a copy of StaffInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $WorkingUnitCopyWith<$Res>? get workingUnit {
    if (_value.workingUnit == null) {
      return null;
    }

    return $WorkingUnitCopyWith<$Res>(_value.workingUnit!, (value) {
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
  $Res call(
      {int? id,
      StaffStatus? status,
      String? createdBy,
      DateTime? createdDate,
      String? lastModifiedBy,
      DateTime? lastModifiedDate,
      User? user,
      @JsonKey(includeIfNull: true) WorkingUnit? workingUnit});

  @override
  $UserCopyWith<$Res>? get user;
  @override
  $WorkingUnitCopyWith<$Res>? get workingUnit;
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
    Object? id = freezed,
    Object? status = freezed,
    Object? createdBy = freezed,
    Object? createdDate = freezed,
    Object? lastModifiedBy = freezed,
    Object? lastModifiedDate = freezed,
    Object? user = freezed,
    Object? workingUnit = freezed,
  }) {
    return _then(_$StaffInfoImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StaffStatus?,
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
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      workingUnit: freezed == workingUnit
          ? _value.workingUnit
          : workingUnit // ignore: cast_nullable_to_non_nullable
              as WorkingUnit?,
    ));
  }
}

/// @nodoc

@JsonSerializable(includeIfNull: false)
class _$StaffInfoImpl with DiagnosticableTreeMixin implements _StaffInfo {
  const _$StaffInfoImpl(
      {this.id,
      this.status,
      this.createdBy,
      this.createdDate,
      this.lastModifiedBy,
      this.lastModifiedDate,
      this.user,
      @JsonKey(includeIfNull: true) this.workingUnit});

  factory _$StaffInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$StaffInfoImplFromJson(json);

  @override
  final int? id;
  @override
  final StaffStatus? status;
  @override
  final String? createdBy;
  @override
  final DateTime? createdDate;
  @override
  final String? lastModifiedBy;
  @override
  final DateTime? lastModifiedDate;
  @override
  final User? user;
  @override
  @JsonKey(includeIfNull: true)
  final WorkingUnit? workingUnit;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'StaffInfo(id: $id, status: $status, createdBy: $createdBy, createdDate: $createdDate, lastModifiedBy: $lastModifiedBy, lastModifiedDate: $lastModifiedDate, user: $user, workingUnit: $workingUnit)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'StaffInfo'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('createdBy', createdBy))
      ..add(DiagnosticsProperty('createdDate', createdDate))
      ..add(DiagnosticsProperty('lastModifiedBy', lastModifiedBy))
      ..add(DiagnosticsProperty('lastModifiedDate', lastModifiedDate))
      ..add(DiagnosticsProperty('user', user))
      ..add(DiagnosticsProperty('workingUnit', workingUnit));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StaffInfoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.createdBy, createdBy) ||
                other.createdBy == createdBy) &&
            (identical(other.createdDate, createdDate) ||
                other.createdDate == createdDate) &&
            (identical(other.lastModifiedBy, lastModifiedBy) ||
                other.lastModifiedBy == lastModifiedBy) &&
            (identical(other.lastModifiedDate, lastModifiedDate) ||
                other.lastModifiedDate == lastModifiedDate) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.workingUnit, workingUnit) ||
                other.workingUnit == workingUnit));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, status, createdBy,
      createdDate, lastModifiedBy, lastModifiedDate, user, workingUnit);

  /// Create a copy of StaffInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StaffInfoImplCopyWith<_$StaffInfoImpl> get copyWith =>
      __$$StaffInfoImplCopyWithImpl<_$StaffInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StaffInfoImplToJson(
      this,
    );
  }
}

abstract class _StaffInfo implements StaffInfo {
  const factory _StaffInfo(
          {final int? id,
          final StaffStatus? status,
          final String? createdBy,
          final DateTime? createdDate,
          final String? lastModifiedBy,
          final DateTime? lastModifiedDate,
          final User? user,
          @JsonKey(includeIfNull: true) final WorkingUnit? workingUnit}) =
      _$StaffInfoImpl;

  factory _StaffInfo.fromJson(Map<String, dynamic> json) =
      _$StaffInfoImpl.fromJson;

  @override
  int? get id;
  @override
  StaffStatus? get status;
  @override
  String? get createdBy;
  @override
  DateTime? get createdDate;
  @override
  String? get lastModifiedBy;
  @override
  DateTime? get lastModifiedDate;
  @override
  User? get user;
  @override
  @JsonKey(includeIfNull: true)
  WorkingUnit? get workingUnit;

  /// Create a copy of StaffInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StaffInfoImplCopyWith<_$StaffInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
