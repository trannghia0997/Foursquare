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
  @JsonKey(name: 'order_id')
  String get orderId => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  String? get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'src_unit_id')
  String get sourceUnitId => throw _privateConstructorUsedError;
  @JsonKey(name: 'dst_unit_id')
  String? get destinationUnitId => throw _privateConstructorUsedError;
  WarehouseAssignmentStatus get status => throw _privateConstructorUsedError;
  String? get note => throw _privateConstructorUsedError;

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
      {@JsonKey(name: 'order_id') String orderId,
      @JsonKey(name: 'user_id') String? userId,
      @JsonKey(name: 'src_unit_id') String sourceUnitId,
      @JsonKey(name: 'dst_unit_id') String? destinationUnitId,
      WarehouseAssignmentStatus status,
      String? note});
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
    Object? orderId = null,
    Object? userId = freezed,
    Object? sourceUnitId = null,
    Object? destinationUnitId = freezed,
    Object? status = null,
    Object? note = freezed,
  }) {
    return _then(_value.copyWith(
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      sourceUnitId: null == sourceUnitId
          ? _value.sourceUnitId
          : sourceUnitId // ignore: cast_nullable_to_non_nullable
              as String,
      destinationUnitId: freezed == destinationUnitId
          ? _value.destinationUnitId
          : destinationUnitId // ignore: cast_nullable_to_non_nullable
              as String?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as WarehouseAssignmentStatus,
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
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
      {@JsonKey(name: 'order_id') String orderId,
      @JsonKey(name: 'user_id') String? userId,
      @JsonKey(name: 'src_unit_id') String sourceUnitId,
      @JsonKey(name: 'dst_unit_id') String? destinationUnitId,
      WarehouseAssignmentStatus status,
      String? note});
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
    Object? orderId = null,
    Object? userId = freezed,
    Object? sourceUnitId = null,
    Object? destinationUnitId = freezed,
    Object? status = null,
    Object? note = freezed,
  }) {
    return _then(_$WarehouseAssignmentImpl(
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      sourceUnitId: null == sourceUnitId
          ? _value.sourceUnitId
          : sourceUnitId // ignore: cast_nullable_to_non_nullable
              as String,
      destinationUnitId: freezed == destinationUnitId
          ? _value.destinationUnitId
          : destinationUnitId // ignore: cast_nullable_to_non_nullable
              as String?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as WarehouseAssignmentStatus,
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WarehouseAssignmentImpl
    with DiagnosticableTreeMixin
    implements _WarehouseAssignment {
  const _$WarehouseAssignmentImpl(
      {@JsonKey(name: 'order_id') required this.orderId,
      @JsonKey(name: 'user_id') this.userId,
      @JsonKey(name: 'src_unit_id') required this.sourceUnitId,
      @JsonKey(name: 'dst_unit_id') this.destinationUnitId,
      required this.status,
      this.note});

  factory _$WarehouseAssignmentImpl.fromJson(Map<String, dynamic> json) =>
      _$$WarehouseAssignmentImplFromJson(json);

  @override
  @JsonKey(name: 'order_id')
  final String orderId;
  @override
  @JsonKey(name: 'user_id')
  final String? userId;
  @override
  @JsonKey(name: 'src_unit_id')
  final String sourceUnitId;
  @override
  @JsonKey(name: 'dst_unit_id')
  final String? destinationUnitId;
  @override
  final WarehouseAssignmentStatus status;
  @override
  final String? note;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'WarehouseAssignment(orderId: $orderId, userId: $userId, sourceUnitId: $sourceUnitId, destinationUnitId: $destinationUnitId, status: $status, note: $note)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'WarehouseAssignment'))
      ..add(DiagnosticsProperty('orderId', orderId))
      ..add(DiagnosticsProperty('userId', userId))
      ..add(DiagnosticsProperty('sourceUnitId', sourceUnitId))
      ..add(DiagnosticsProperty('destinationUnitId', destinationUnitId))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('note', note));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WarehouseAssignmentImpl &&
            (identical(other.orderId, orderId) || other.orderId == orderId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.sourceUnitId, sourceUnitId) ||
                other.sourceUnitId == sourceUnitId) &&
            (identical(other.destinationUnitId, destinationUnitId) ||
                other.destinationUnitId == destinationUnitId) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.note, note) || other.note == note));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, orderId, userId, sourceUnitId,
      destinationUnitId, status, note);

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
      {@JsonKey(name: 'order_id') required final String orderId,
      @JsonKey(name: 'user_id') final String? userId,
      @JsonKey(name: 'src_unit_id') required final String sourceUnitId,
      @JsonKey(name: 'dst_unit_id') final String? destinationUnitId,
      required final WarehouseAssignmentStatus status,
      final String? note}) = _$WarehouseAssignmentImpl;

  factory _WarehouseAssignment.fromJson(Map<String, dynamic> json) =
      _$WarehouseAssignmentImpl.fromJson;

  @override
  @JsonKey(name: 'order_id')
  String get orderId;
  @override
  @JsonKey(name: 'user_id')
  String? get userId;
  @override
  @JsonKey(name: 'src_unit_id')
  String get sourceUnitId;
  @override
  @JsonKey(name: 'dst_unit_id')
  String? get destinationUnitId;
  @override
  WarehouseAssignmentStatus get status;
  @override
  String? get note;

  /// Create a copy of WarehouseAssignment
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WarehouseAssignmentImplCopyWith<_$WarehouseAssignmentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
