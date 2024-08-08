// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'shipment_assignment.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ShipmentAssignment _$ShipmentAssignmentFromJson(Map<String, dynamic> json) {
  return _ShipmentAssignment.fromJson(json);
}

/// @nodoc
mixin _$ShipmentAssignment {
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
  Shipment? get shipment => throw _privateConstructorUsedError;

  /// Serializes this ShipmentAssignment to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ShipmentAssignment
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ShipmentAssignmentCopyWith<ShipmentAssignment> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShipmentAssignmentCopyWith<$Res> {
  factory $ShipmentAssignmentCopyWith(
          ShipmentAssignment value, $Res Function(ShipmentAssignment) then) =
      _$ShipmentAssignmentCopyWithImpl<$Res, ShipmentAssignment>;
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
      Shipment? shipment});

  $UserCopyWith<$Res>? get user;
  $ShipmentCopyWith<$Res>? get shipment;
}

/// @nodoc
class _$ShipmentAssignmentCopyWithImpl<$Res, $Val extends ShipmentAssignment>
    implements $ShipmentAssignmentCopyWith<$Res> {
  _$ShipmentAssignmentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ShipmentAssignment
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
    Object? shipment = freezed,
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
      shipment: freezed == shipment
          ? _value.shipment
          : shipment // ignore: cast_nullable_to_non_nullable
              as Shipment?,
    ) as $Val);
  }

  /// Create a copy of ShipmentAssignment
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

  /// Create a copy of ShipmentAssignment
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ShipmentCopyWith<$Res>? get shipment {
    if (_value.shipment == null) {
      return null;
    }

    return $ShipmentCopyWith<$Res>(_value.shipment!, (value) {
      return _then(_value.copyWith(shipment: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ShipmentAssignmentImplCopyWith<$Res>
    implements $ShipmentAssignmentCopyWith<$Res> {
  factory _$$ShipmentAssignmentImplCopyWith(_$ShipmentAssignmentImpl value,
          $Res Function(_$ShipmentAssignmentImpl) then) =
      __$$ShipmentAssignmentImplCopyWithImpl<$Res>;
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
      Shipment? shipment});

  @override
  $UserCopyWith<$Res>? get user;
  @override
  $ShipmentCopyWith<$Res>? get shipment;
}

/// @nodoc
class __$$ShipmentAssignmentImplCopyWithImpl<$Res>
    extends _$ShipmentAssignmentCopyWithImpl<$Res, _$ShipmentAssignmentImpl>
    implements _$$ShipmentAssignmentImplCopyWith<$Res> {
  __$$ShipmentAssignmentImplCopyWithImpl(_$ShipmentAssignmentImpl _value,
      $Res Function(_$ShipmentAssignmentImpl) _then)
      : super(_value, _then);

  /// Create a copy of ShipmentAssignment
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
    Object? shipment = freezed,
  }) {
    return _then(_$ShipmentAssignmentImpl(
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
      shipment: freezed == shipment
          ? _value.shipment
          : shipment // ignore: cast_nullable_to_non_nullable
              as Shipment?,
    ));
  }
}

/// @nodoc

@JsonSerializable(includeIfNull: false)
class _$ShipmentAssignmentImpl
    with DiagnosticableTreeMixin
    implements _ShipmentAssignment {
  const _$ShipmentAssignmentImpl(
      {this.id,
      this.status,
      @JsonKey(includeIfNull: true) this.note,
      this.createdBy,
      this.createdDate,
      this.lastModifiedBy,
      this.lastModifiedDate,
      @JsonKey(includeIfNull: true) this.user,
      this.shipment});

  factory _$ShipmentAssignmentImpl.fromJson(Map<String, dynamic> json) =>
      _$$ShipmentAssignmentImplFromJson(json);

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
  final Shipment? shipment;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ShipmentAssignment(id: $id, status: $status, note: $note, createdBy: $createdBy, createdDate: $createdDate, lastModifiedBy: $lastModifiedBy, lastModifiedDate: $lastModifiedDate, user: $user, shipment: $shipment)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ShipmentAssignment'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('note', note))
      ..add(DiagnosticsProperty('createdBy', createdBy))
      ..add(DiagnosticsProperty('createdDate', createdDate))
      ..add(DiagnosticsProperty('lastModifiedBy', lastModifiedBy))
      ..add(DiagnosticsProperty('lastModifiedDate', lastModifiedDate))
      ..add(DiagnosticsProperty('user', user))
      ..add(DiagnosticsProperty('shipment', shipment));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShipmentAssignmentImpl &&
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
            (identical(other.shipment, shipment) ||
                other.shipment == shipment));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, status, note, createdBy,
      createdDate, lastModifiedBy, lastModifiedDate, user, shipment);

  /// Create a copy of ShipmentAssignment
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ShipmentAssignmentImplCopyWith<_$ShipmentAssignmentImpl> get copyWith =>
      __$$ShipmentAssignmentImplCopyWithImpl<_$ShipmentAssignmentImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ShipmentAssignmentImplToJson(
      this,
    );
  }
}

abstract class _ShipmentAssignment implements ShipmentAssignment {
  const factory _ShipmentAssignment(
      {final String? id,
      final AssignmentStatus? status,
      @JsonKey(includeIfNull: true) final String? note,
      final String? createdBy,
      final DateTime? createdDate,
      final String? lastModifiedBy,
      final DateTime? lastModifiedDate,
      @JsonKey(includeIfNull: true) final User? user,
      final Shipment? shipment}) = _$ShipmentAssignmentImpl;

  factory _ShipmentAssignment.fromJson(Map<String, dynamic> json) =
      _$ShipmentAssignmentImpl.fromJson;

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
  Shipment? get shipment;

  /// Create a copy of ShipmentAssignment
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ShipmentAssignmentImplCopyWith<_$ShipmentAssignmentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
