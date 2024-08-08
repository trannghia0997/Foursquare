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

  /// Serializes this ShipmentStatusCode to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ShipmentStatusCode
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ShipmentStatusCodeCopyWith<ShipmentStatusCode> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShipmentStatusCodeCopyWith<$Res> {
  factory $ShipmentStatusCodeCopyWith(
          ShipmentStatusCode value, $Res Function(ShipmentStatusCode) then) =
      _$ShipmentStatusCodeCopyWithImpl<$Res, ShipmentStatusCode>;
  @useResult
  $Res call({String description});
}

/// @nodoc
class _$ShipmentStatusCodeCopyWithImpl<$Res, $Val extends ShipmentStatusCode>
    implements $ShipmentStatusCodeCopyWith<$Res> {
  _$ShipmentStatusCodeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ShipmentStatusCode
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = null,
  }) {
    return _then(_value.copyWith(
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
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
  $Res call({String description});
}

/// @nodoc
class __$$ShipmentStatusCodeImplCopyWithImpl<$Res>
    extends _$ShipmentStatusCodeCopyWithImpl<$Res, _$ShipmentStatusCodeImpl>
    implements _$$ShipmentStatusCodeImplCopyWith<$Res> {
  __$$ShipmentStatusCodeImplCopyWithImpl(_$ShipmentStatusCodeImpl _value,
      $Res Function(_$ShipmentStatusCodeImpl) _then)
      : super(_value, _then);

  /// Create a copy of ShipmentStatusCode
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = null,
  }) {
    return _then(_$ShipmentStatusCodeImpl(
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ShipmentStatusCodeImpl
    with DiagnosticableTreeMixin
    implements _ShipmentStatusCode {
  const _$ShipmentStatusCodeImpl({required this.description});

  factory _$ShipmentStatusCodeImpl.fromJson(Map<String, dynamic> json) =>
      _$$ShipmentStatusCodeImplFromJson(json);

  @override
  final String description;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ShipmentStatusCode(description: $description)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ShipmentStatusCode'))
      ..add(DiagnosticsProperty('description', description));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShipmentStatusCodeImpl &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, description);

  /// Create a copy of ShipmentStatusCode
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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
  const factory _ShipmentStatusCode({required final String description}) =
      _$ShipmentStatusCodeImpl;

  factory _ShipmentStatusCode.fromJson(Map<String, dynamic> json) =
      _$ShipmentStatusCodeImpl.fromJson;

  @override
  String get description;

  /// Create a copy of ShipmentStatusCode
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ShipmentStatusCodeImplCopyWith<_$ShipmentStatusCodeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
