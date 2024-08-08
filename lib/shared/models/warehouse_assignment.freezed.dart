// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'warehouse_assignment.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

WarehouseAssignment _$WarehouseAssignmentFromJson(Map<String, dynamic> json) {
  return _WarehouseAssignment.fromJson(json);
}

/// @nodoc
mixin _$WarehouseAssignment {
  String? get id => throw _privateConstructorUsedError;
  AssignmentStatus? get status => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: true)
  String? get note => throw _privateConstructorUsedError;
  String? get createdBy => throw _privateConstructorUsedError;
  DateTime? get createdDate => throw _privateConstructorUsedError;
  String? get lastModifiedBy => throw _privateConstructorUsedError;
  DateTime? get lastModifiedDate => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: true)
  User? get user => throw _privateConstructorUsedError;
  WorkingUnit? get sourceWorkingUnit => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: true)
  WorkingUnit? get targetWorkingUnit => throw _privateConstructorUsedError;
  Order? get order => throw _privateConstructorUsedError;

  /// Serializes this WarehouseAssignment to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WarehouseAssignment
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WarehouseAssignmentCopyWith<WarehouseAssignment> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WarehouseAssignmentCopyWith<$Res> {
  factory $WarehouseAssignmentCopyWith(
          WarehouseAssignment value, $Res Function(WarehouseAssignment) then) =
      _$WarehouseAssignmentCopyWithImpl<$Res, WarehouseAssignment>;
  @useResult
  $Res call(
      {String? id,
      AssignmentStatus? status,
      @JsonKey(includeIfNull: true) String? note,
      String? createdBy,
      DateTime? createdDate,
      String? lastModifiedBy,
      DateTime? lastModifiedDate,
      @JsonKey(includeIfNull: true) User? user,
      WorkingUnit? sourceWorkingUnit,
      @JsonKey(includeIfNull: true) WorkingUnit? targetWorkingUnit,
      Order? order});

  $UserCopyWith<$Res>? get user;
  $WorkingUnitCopyWith<$Res>? get sourceWorkingUnit;
  $WorkingUnitCopyWith<$Res>? get targetWorkingUnit;
  $OrderCopyWith<$Res>? get order;
}

/// @nodoc
class _$WarehouseAssignmentCopyWithImpl<$Res, $Val extends WarehouseAssignment>
    implements $WarehouseAssignmentCopyWith<$Res> {
  _$WarehouseAssignmentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WarehouseAssignment
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? status = freezed,
    Object? note = freezed,
    Object? createdBy = freezed,
    Object? createdDate = freezed,
    Object? lastModifiedBy = freezed,
    Object? lastModifiedDate = freezed,
    Object? user = freezed,
    Object? sourceWorkingUnit = freezed,
    Object? targetWorkingUnit = freezed,
    Object? order = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as AssignmentStatus?,
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
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
      sourceWorkingUnit: freezed == sourceWorkingUnit
          ? _value.sourceWorkingUnit
          : sourceWorkingUnit // ignore: cast_nullable_to_non_nullable
              as WorkingUnit?,
      targetWorkingUnit: freezed == targetWorkingUnit
          ? _value.targetWorkingUnit
          : targetWorkingUnit // ignore: cast_nullable_to_non_nullable
              as WorkingUnit?,
      order: freezed == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as Order?,
    ) as $Val);
  }

  /// Create a copy of WarehouseAssignment
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

  /// Create a copy of WarehouseAssignment
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $WorkingUnitCopyWith<$Res>? get sourceWorkingUnit {
    if (_value.sourceWorkingUnit == null) {
      return null;
    }

    return $WorkingUnitCopyWith<$Res>(_value.sourceWorkingUnit!, (value) {
      return _then(_value.copyWith(sourceWorkingUnit: value) as $Val);
    });
  }

  /// Create a copy of WarehouseAssignment
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $WorkingUnitCopyWith<$Res>? get targetWorkingUnit {
    if (_value.targetWorkingUnit == null) {
      return null;
    }

    return $WorkingUnitCopyWith<$Res>(_value.targetWorkingUnit!, (value) {
      return _then(_value.copyWith(targetWorkingUnit: value) as $Val);
    });
  }

  /// Create a copy of WarehouseAssignment
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OrderCopyWith<$Res>? get order {
    if (_value.order == null) {
      return null;
    }

    return $OrderCopyWith<$Res>(_value.order!, (value) {
      return _then(_value.copyWith(order: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$WarehouseAssignmentImplCopyWith<$Res>
    implements $WarehouseAssignmentCopyWith<$Res> {
  factory _$$WarehouseAssignmentImplCopyWith(_$WarehouseAssignmentImpl value,
          $Res Function(_$WarehouseAssignmentImpl) then) =
      __$$WarehouseAssignmentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      AssignmentStatus? status,
      @JsonKey(includeIfNull: true) String? note,
      String? createdBy,
      DateTime? createdDate,
      String? lastModifiedBy,
      DateTime? lastModifiedDate,
      @JsonKey(includeIfNull: true) User? user,
      WorkingUnit? sourceWorkingUnit,
      @JsonKey(includeIfNull: true) WorkingUnit? targetWorkingUnit,
      Order? order});

  @override
  $UserCopyWith<$Res>? get user;
  @override
  $WorkingUnitCopyWith<$Res>? get sourceWorkingUnit;
  @override
  $WorkingUnitCopyWith<$Res>? get targetWorkingUnit;
  @override
  $OrderCopyWith<$Res>? get order;
}

/// @nodoc
class __$$WarehouseAssignmentImplCopyWithImpl<$Res>
    extends _$WarehouseAssignmentCopyWithImpl<$Res, _$WarehouseAssignmentImpl>
    implements _$$WarehouseAssignmentImplCopyWith<$Res> {
  __$$WarehouseAssignmentImplCopyWithImpl(_$WarehouseAssignmentImpl _value,
      $Res Function(_$WarehouseAssignmentImpl) _then)
      : super(_value, _then);

  /// Create a copy of WarehouseAssignment
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? status = freezed,
    Object? note = freezed,
    Object? createdBy = freezed,
    Object? createdDate = freezed,
    Object? lastModifiedBy = freezed,
    Object? lastModifiedDate = freezed,
    Object? user = freezed,
    Object? sourceWorkingUnit = freezed,
    Object? targetWorkingUnit = freezed,
    Object? order = freezed,
  }) {
    return _then(_$WarehouseAssignmentImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as AssignmentStatus?,
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
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
      sourceWorkingUnit: freezed == sourceWorkingUnit
          ? _value.sourceWorkingUnit
          : sourceWorkingUnit // ignore: cast_nullable_to_non_nullable
              as WorkingUnit?,
      targetWorkingUnit: freezed == targetWorkingUnit
          ? _value.targetWorkingUnit
          : targetWorkingUnit // ignore: cast_nullable_to_non_nullable
              as WorkingUnit?,
      order: freezed == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as Order?,
    ));
  }
}

/// @nodoc

@JsonSerializable(includeIfNull: false)
class _$WarehouseAssignmentImpl
    with DiagnosticableTreeMixin
    implements _WarehouseAssignment {
  const _$WarehouseAssignmentImpl(
      {this.id,
      this.status,
      @JsonKey(includeIfNull: true) this.note,
      this.createdBy,
      this.createdDate,
      this.lastModifiedBy,
      this.lastModifiedDate,
      @JsonKey(includeIfNull: true) this.user,
      this.sourceWorkingUnit,
      @JsonKey(includeIfNull: true) this.targetWorkingUnit,
      this.order});

  factory _$WarehouseAssignmentImpl.fromJson(Map<String, dynamic> json) =>
      _$$WarehouseAssignmentImplFromJson(json);

  @override
  final String? id;
  @override
  final AssignmentStatus? status;
  @override
  @JsonKey(includeIfNull: true)
  final String? note;
  @override
  final String? createdBy;
  @override
  final DateTime? createdDate;
  @override
  final String? lastModifiedBy;
  @override
  final DateTime? lastModifiedDate;
  @override
  @JsonKey(includeIfNull: true)
  final User? user;
  @override
  final WorkingUnit? sourceWorkingUnit;
  @override
  @JsonKey(includeIfNull: true)
  final WorkingUnit? targetWorkingUnit;
  @override
  final Order? order;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'WarehouseAssignment(id: $id, status: $status, note: $note, createdBy: $createdBy, createdDate: $createdDate, lastModifiedBy: $lastModifiedBy, lastModifiedDate: $lastModifiedDate, user: $user, sourceWorkingUnit: $sourceWorkingUnit, targetWorkingUnit: $targetWorkingUnit, order: $order)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'WarehouseAssignment'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('note', note))
      ..add(DiagnosticsProperty('createdBy', createdBy))
      ..add(DiagnosticsProperty('createdDate', createdDate))
      ..add(DiagnosticsProperty('lastModifiedBy', lastModifiedBy))
      ..add(DiagnosticsProperty('lastModifiedDate', lastModifiedDate))
      ..add(DiagnosticsProperty('user', user))
      ..add(DiagnosticsProperty('sourceWorkingUnit', sourceWorkingUnit))
      ..add(DiagnosticsProperty('targetWorkingUnit', targetWorkingUnit))
      ..add(DiagnosticsProperty('order', order));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WarehouseAssignmentImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.note, note) || other.note == note) &&
            (identical(other.createdBy, createdBy) ||
                other.createdBy == createdBy) &&
            (identical(other.createdDate, createdDate) ||
                other.createdDate == createdDate) &&
            (identical(other.lastModifiedBy, lastModifiedBy) ||
                other.lastModifiedBy == lastModifiedBy) &&
            (identical(other.lastModifiedDate, lastModifiedDate) ||
                other.lastModifiedDate == lastModifiedDate) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.sourceWorkingUnit, sourceWorkingUnit) ||
                other.sourceWorkingUnit == sourceWorkingUnit) &&
            (identical(other.targetWorkingUnit, targetWorkingUnit) ||
                other.targetWorkingUnit == targetWorkingUnit) &&
            (identical(other.order, order) || other.order == order));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      status,
      note,
      createdBy,
      createdDate,
      lastModifiedBy,
      lastModifiedDate,
      user,
      sourceWorkingUnit,
      targetWorkingUnit,
      order);

  /// Create a copy of WarehouseAssignment
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WarehouseAssignmentImplCopyWith<_$WarehouseAssignmentImpl> get copyWith =>
      __$$WarehouseAssignmentImplCopyWithImpl<_$WarehouseAssignmentImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WarehouseAssignmentImplToJson(
      this,
    );
  }
}

abstract class _WarehouseAssignment implements WarehouseAssignment {
  const factory _WarehouseAssignment(
      {final String? id,
      final AssignmentStatus? status,
      @JsonKey(includeIfNull: true) final String? note,
      final String? createdBy,
      final DateTime? createdDate,
      final String? lastModifiedBy,
      final DateTime? lastModifiedDate,
      @JsonKey(includeIfNull: true) final User? user,
      final WorkingUnit? sourceWorkingUnit,
      @JsonKey(includeIfNull: true) final WorkingUnit? targetWorkingUnit,
      final Order? order}) = _$WarehouseAssignmentImpl;

  factory _WarehouseAssignment.fromJson(Map<String, dynamic> json) =
      _$WarehouseAssignmentImpl.fromJson;

  @override
  String? get id;
  @override
  AssignmentStatus? get status;
  @override
  @JsonKey(includeIfNull: true)
  String? get note;
  @override
  String? get createdBy;
  @override
  DateTime? get createdDate;
  @override
  String? get lastModifiedBy;
  @override
  DateTime? get lastModifiedDate;
  @override
  @JsonKey(includeIfNull: true)
  User? get user;
  @override
  WorkingUnit? get sourceWorkingUnit;
  @override
  @JsonKey(includeIfNull: true)
  WorkingUnit? get targetWorkingUnit;
  @override
  Order? get order;

  /// Create a copy of WarehouseAssignment
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WarehouseAssignmentImplCopyWith<_$WarehouseAssignmentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
