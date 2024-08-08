// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'shipment_status.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ShipmentStatus _$ShipmentStatusFromJson(Map<String, dynamic> json) {
  return _ShipmentStatus.fromJson(json);
}

/// @nodoc
mixin _$ShipmentStatus {
  int? get id => throw _privateConstructorUsedError;
  String? get statusCode => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: true)
  String? get description => throw _privateConstructorUsedError;
  String? get createdBy => throw _privateConstructorUsedError;
  DateTime? get createdDate => throw _privateConstructorUsedError;
  String? get lastModifiedBy => throw _privateConstructorUsedError;
  DateTime? get lastModifiedDate => throw _privateConstructorUsedError;

  /// Serializes this ShipmentStatus to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ShipmentStatus
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ShipmentStatusCopyWith<ShipmentStatus> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShipmentStatusCopyWith<$Res> {
  factory $ShipmentStatusCopyWith(
          ShipmentStatus value, $Res Function(ShipmentStatus) then) =
      _$ShipmentStatusCopyWithImpl<$Res, ShipmentStatus>;
  @useResult
  $Res call(
      {int? id,
      String? statusCode,
      @JsonKey(includeIfNull: true) String? description,
      String? createdBy,
      DateTime? createdDate,
      String? lastModifiedBy,
      DateTime? lastModifiedDate});
}

/// @nodoc
class _$ShipmentStatusCopyWithImpl<$Res, $Val extends ShipmentStatus>
    implements $ShipmentStatusCopyWith<$Res> {
  _$ShipmentStatusCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ShipmentStatus
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? statusCode = freezed,
    Object? description = freezed,
    Object? createdBy = freezed,
    Object? createdDate = freezed,
    Object? lastModifiedBy = freezed,
    Object? lastModifiedDate = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      statusCode: freezed == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ShipmentStatusImplCopyWith<$Res>
    implements $ShipmentStatusCopyWith<$Res> {
  factory _$$ShipmentStatusImplCopyWith(_$ShipmentStatusImpl value,
          $Res Function(_$ShipmentStatusImpl) then) =
      __$$ShipmentStatusImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? statusCode,
      @JsonKey(includeIfNull: true) String? description,
      String? createdBy,
      DateTime? createdDate,
      String? lastModifiedBy,
      DateTime? lastModifiedDate});
}

/// @nodoc
class __$$ShipmentStatusImplCopyWithImpl<$Res>
    extends _$ShipmentStatusCopyWithImpl<$Res, _$ShipmentStatusImpl>
    implements _$$ShipmentStatusImplCopyWith<$Res> {
  __$$ShipmentStatusImplCopyWithImpl(
      _$ShipmentStatusImpl _value, $Res Function(_$ShipmentStatusImpl) _then)
      : super(_value, _then);

  /// Create a copy of ShipmentStatus
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? statusCode = freezed,
    Object? description = freezed,
    Object? createdBy = freezed,
    Object? createdDate = freezed,
    Object? lastModifiedBy = freezed,
    Object? lastModifiedDate = freezed,
  }) {
    return _then(_$ShipmentStatusImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      statusCode: freezed == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
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
    ));
  }
}

/// @nodoc

@JsonSerializable(includeIfNull: false)
class _$ShipmentStatusImpl
    with DiagnosticableTreeMixin
    implements _ShipmentStatus {
  const _$ShipmentStatusImpl(
      {this.id,
      this.statusCode,
      @JsonKey(includeIfNull: true) this.description,
      this.createdBy,
      this.createdDate,
      this.lastModifiedBy,
      this.lastModifiedDate});

  factory _$ShipmentStatusImpl.fromJson(Map<String, dynamic> json) =>
      _$$ShipmentStatusImplFromJson(json);

  @override
  final int? id;
  @override
  final String? statusCode;
  @override
  @JsonKey(includeIfNull: true)
  final String? description;
  @override
  final String? createdBy;
  @override
  final DateTime? createdDate;
  @override
  final String? lastModifiedBy;
  @override
  final DateTime? lastModifiedDate;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ShipmentStatus(id: $id, statusCode: $statusCode, description: $description, createdBy: $createdBy, createdDate: $createdDate, lastModifiedBy: $lastModifiedBy, lastModifiedDate: $lastModifiedDate)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ShipmentStatus'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('statusCode', statusCode))
      ..add(DiagnosticsProperty('description', description))
      ..add(DiagnosticsProperty('createdBy', createdBy))
      ..add(DiagnosticsProperty('createdDate', createdDate))
      ..add(DiagnosticsProperty('lastModifiedBy', lastModifiedBy))
      ..add(DiagnosticsProperty('lastModifiedDate', lastModifiedDate));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShipmentStatusImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.statusCode, statusCode) ||
                other.statusCode == statusCode) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.createdBy, createdBy) ||
                other.createdBy == createdBy) &&
            (identical(other.createdDate, createdDate) ||
                other.createdDate == createdDate) &&
            (identical(other.lastModifiedBy, lastModifiedBy) ||
                other.lastModifiedBy == lastModifiedBy) &&
            (identical(other.lastModifiedDate, lastModifiedDate) ||
                other.lastModifiedDate == lastModifiedDate));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, statusCode, description,
      createdBy, createdDate, lastModifiedBy, lastModifiedDate);

  /// Create a copy of ShipmentStatus
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ShipmentStatusImplCopyWith<_$ShipmentStatusImpl> get copyWith =>
      __$$ShipmentStatusImplCopyWithImpl<_$ShipmentStatusImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ShipmentStatusImplToJson(
      this,
    );
  }
}

abstract class _ShipmentStatus implements ShipmentStatus {
  const factory _ShipmentStatus(
      {final int? id,
      final String? statusCode,
      @JsonKey(includeIfNull: true) final String? description,
      final String? createdBy,
      final DateTime? createdDate,
      final String? lastModifiedBy,
      final DateTime? lastModifiedDate}) = _$ShipmentStatusImpl;

  factory _ShipmentStatus.fromJson(Map<String, dynamic> json) =
      _$ShipmentStatusImpl.fromJson;

  @override
  int? get id;
  @override
  String? get statusCode;
  @override
  @JsonKey(includeIfNull: true)
  String? get description;
  @override
  String? get createdBy;
  @override
  DateTime? get createdDate;
  @override
  String? get lastModifiedBy;
  @override
  DateTime? get lastModifiedDate;

  /// Create a copy of ShipmentStatus
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ShipmentStatusImplCopyWith<_$ShipmentStatusImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
