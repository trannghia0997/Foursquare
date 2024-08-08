// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'invoice_status.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

InvoiceStatus _$InvoiceStatusFromJson(Map<String, dynamic> json) {
  return _InvoiceStatus.fromJson(json);
}

/// @nodoc
mixin _$InvoiceStatus {
  int? get id => throw _privateConstructorUsedError;
  String? get statusCode => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: true)
  String? get description => throw _privateConstructorUsedError;
  String? get createdBy => throw _privateConstructorUsedError;
  DateTime? get createdDate => throw _privateConstructorUsedError;
  String? get lastModifiedBy => throw _privateConstructorUsedError;
  DateTime? get lastModifiedDate => throw _privateConstructorUsedError;

  /// Serializes this InvoiceStatus to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of InvoiceStatus
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $InvoiceStatusCopyWith<InvoiceStatus> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InvoiceStatusCopyWith<$Res> {
  factory $InvoiceStatusCopyWith(
          InvoiceStatus value, $Res Function(InvoiceStatus) then) =
      _$InvoiceStatusCopyWithImpl<$Res, InvoiceStatus>;
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
class _$InvoiceStatusCopyWithImpl<$Res, $Val extends InvoiceStatus>
    implements $InvoiceStatusCopyWith<$Res> {
  _$InvoiceStatusCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of InvoiceStatus
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
abstract class _$$InvoiceStatusImplCopyWith<$Res>
    implements $InvoiceStatusCopyWith<$Res> {
  factory _$$InvoiceStatusImplCopyWith(
          _$InvoiceStatusImpl value, $Res Function(_$InvoiceStatusImpl) then) =
      __$$InvoiceStatusImplCopyWithImpl<$Res>;
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
class __$$InvoiceStatusImplCopyWithImpl<$Res>
    extends _$InvoiceStatusCopyWithImpl<$Res, _$InvoiceStatusImpl>
    implements _$$InvoiceStatusImplCopyWith<$Res> {
  __$$InvoiceStatusImplCopyWithImpl(
      _$InvoiceStatusImpl _value, $Res Function(_$InvoiceStatusImpl) _then)
      : super(_value, _then);

  /// Create a copy of InvoiceStatus
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
    return _then(_$InvoiceStatusImpl(
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
class _$InvoiceStatusImpl
    with DiagnosticableTreeMixin
    implements _InvoiceStatus {
  const _$InvoiceStatusImpl(
      {this.id,
      this.statusCode,
      @JsonKey(includeIfNull: true) this.description,
      this.createdBy,
      this.createdDate,
      this.lastModifiedBy,
      this.lastModifiedDate});

  factory _$InvoiceStatusImpl.fromJson(Map<String, dynamic> json) =>
      _$$InvoiceStatusImplFromJson(json);

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
    return 'InvoiceStatus(id: $id, statusCode: $statusCode, description: $description, createdBy: $createdBy, createdDate: $createdDate, lastModifiedBy: $lastModifiedBy, lastModifiedDate: $lastModifiedDate)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'InvoiceStatus'))
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
            other is _$InvoiceStatusImpl &&
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

  /// Create a copy of InvoiceStatus
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InvoiceStatusImplCopyWith<_$InvoiceStatusImpl> get copyWith =>
      __$$InvoiceStatusImplCopyWithImpl<_$InvoiceStatusImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InvoiceStatusImplToJson(
      this,
    );
  }
}

abstract class _InvoiceStatus implements InvoiceStatus {
  const factory _InvoiceStatus(
      {final int? id,
      final String? statusCode,
      @JsonKey(includeIfNull: true) final String? description,
      final String? createdBy,
      final DateTime? createdDate,
      final String? lastModifiedBy,
      final DateTime? lastModifiedDate}) = _$InvoiceStatusImpl;

  factory _InvoiceStatus.fromJson(Map<String, dynamic> json) =
      _$InvoiceStatusImpl.fromJson;

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

  /// Create a copy of InvoiceStatus
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InvoiceStatusImplCopyWith<_$InvoiceStatusImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
