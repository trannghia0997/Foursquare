// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'shipment_status_code.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ShipmentStatusCode _$ShipmentStatusCodeFromJson(Map<String, dynamic> json) {
  return _ShipmentStatusCode.fromJson(json);
}

/// @nodoc
mixin _$ShipmentStatusCode {
  String get description => throw _privateConstructorUsedError;
  @JsonKey(includeFromJson: false, includeToJson: false)
  RecordModel? get record => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ShipmentStatusCodeCopyWith<ShipmentStatusCode> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShipmentStatusCodeCopyWith<$Res> {
  factory $ShipmentStatusCodeCopyWith(
          ShipmentStatusCode value, $Res Function(ShipmentStatusCode) then) =
      _$ShipmentStatusCodeCopyWithImpl<$Res, ShipmentStatusCode>;
  @useResult
  $Res call(
      {String description,
      @JsonKey(includeFromJson: false, includeToJson: false)
      RecordModel? record});
}

/// @nodoc
class _$ShipmentStatusCodeCopyWithImpl<$Res, $Val extends ShipmentStatusCode>
    implements $ShipmentStatusCodeCopyWith<$Res> {
  _$ShipmentStatusCodeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = null,
    Object? record = freezed,
  }) {
    return _then(_value.copyWith(
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      record: freezed == record
          ? _value.record
          : record // ignore: cast_nullable_to_non_nullable
              as RecordModel?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ShipmentStatusCodeImplCopyWith<$Res>
    implements $ShipmentStatusCodeCopyWith<$Res> {
  factory _$$ShipmentStatusCodeImplCopyWith(_$ShipmentStatusCodeImpl value,
          $Res Function(_$ShipmentStatusCodeImpl) then) =
      __$$ShipmentStatusCodeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String description,
      @JsonKey(includeFromJson: false, includeToJson: false)
      RecordModel? record});
}

/// @nodoc
class __$$ShipmentStatusCodeImplCopyWithImpl<$Res>
    extends _$ShipmentStatusCodeCopyWithImpl<$Res, _$ShipmentStatusCodeImpl>
    implements _$$ShipmentStatusCodeImplCopyWith<$Res> {
  __$$ShipmentStatusCodeImplCopyWithImpl(_$ShipmentStatusCodeImpl _value,
      $Res Function(_$ShipmentStatusCodeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = null,
    Object? record = freezed,
  }) {
    return _then(_$ShipmentStatusCodeImpl(
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      record: freezed == record
          ? _value.record
          : record // ignore: cast_nullable_to_non_nullable
              as RecordModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ShipmentStatusCodeImpl
    with DiagnosticableTreeMixin
    implements _ShipmentStatusCode {
  const _$ShipmentStatusCodeImpl(
      {required this.description,
      @JsonKey(includeFromJson: false, includeToJson: false) this.record});

  factory _$ShipmentStatusCodeImpl.fromJson(Map<String, dynamic> json) =>
      _$$ShipmentStatusCodeImplFromJson(json);

  @override
  final String description;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  final RecordModel? record;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ShipmentStatusCode(description: $description, record: $record)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ShipmentStatusCode'))
      ..add(DiagnosticsProperty('description', description))
      ..add(DiagnosticsProperty('record', record));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShipmentStatusCodeImpl &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.record, record) || other.record == record));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, description, record);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ShipmentStatusCodeImplCopyWith<_$ShipmentStatusCodeImpl> get copyWith =>
      __$$ShipmentStatusCodeImplCopyWithImpl<_$ShipmentStatusCodeImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ShipmentStatusCodeImplToJson(
      this,
    );
  }
}

abstract class _ShipmentStatusCode implements ShipmentStatusCode {
  const factory _ShipmentStatusCode(
      {required final String description,
      @JsonKey(includeFromJson: false, includeToJson: false)
      final RecordModel? record}) = _$ShipmentStatusCodeImpl;

  factory _ShipmentStatusCode.fromJson(Map<String, dynamic> json) =
      _$ShipmentStatusCodeImpl.fromJson;

  @override
  String get description;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  RecordModel? get record;
  @override
  @JsonKey(ignore: true)
  _$$ShipmentStatusCodeImplCopyWith<_$ShipmentStatusCodeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
