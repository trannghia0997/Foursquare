// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_status_code.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OrderStatusCode _$OrderStatusCodeFromJson(Map<String, dynamic> json) {
  return _OrderStatusCode.fromJson(json);
}

/// @nodoc
mixin _$OrderStatusCode {
  String get description => throw _privateConstructorUsedError;

  /// Serializes this OrderStatusCode to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OrderStatusCode
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OrderStatusCodeCopyWith<OrderStatusCode> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderStatusCodeCopyWith<$Res> {
  factory $OrderStatusCodeCopyWith(
          OrderStatusCode value, $Res Function(OrderStatusCode) then) =
      _$OrderStatusCodeCopyWithImpl<$Res, OrderStatusCode>;
  @useResult
  $Res call({String description});
}

/// @nodoc
class _$OrderStatusCodeCopyWithImpl<$Res, $Val extends OrderStatusCode>
    implements $OrderStatusCodeCopyWith<$Res> {
  _$OrderStatusCodeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OrderStatusCode
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
abstract class _$$OrderStatusCodeImplCopyWith<$Res>
    implements $OrderStatusCodeCopyWith<$Res> {
  factory _$$OrderStatusCodeImplCopyWith(_$OrderStatusCodeImpl value,
          $Res Function(_$OrderStatusCodeImpl) then) =
      __$$OrderStatusCodeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String description});
}

/// @nodoc
class __$$OrderStatusCodeImplCopyWithImpl<$Res>
    extends _$OrderStatusCodeCopyWithImpl<$Res, _$OrderStatusCodeImpl>
    implements _$$OrderStatusCodeImplCopyWith<$Res> {
  __$$OrderStatusCodeImplCopyWithImpl(
      _$OrderStatusCodeImpl _value, $Res Function(_$OrderStatusCodeImpl) _then)
      : super(_value, _then);

  /// Create a copy of OrderStatusCode
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = null,
  }) {
    return _then(_$OrderStatusCodeImpl(
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OrderStatusCodeImpl
    with DiagnosticableTreeMixin
    implements _OrderStatusCode {
  const _$OrderStatusCodeImpl({required this.description});

  factory _$OrderStatusCodeImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderStatusCodeImplFromJson(json);

  @override
  final String description;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'OrderStatusCode(description: $description)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'OrderStatusCode'))
      ..add(DiagnosticsProperty('description', description));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderStatusCodeImpl &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, description);

  /// Create a copy of OrderStatusCode
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderStatusCodeImplCopyWith<_$OrderStatusCodeImpl> get copyWith =>
      __$$OrderStatusCodeImplCopyWithImpl<_$OrderStatusCodeImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderStatusCodeImplToJson(
      this,
    );
  }
}

abstract class _OrderStatusCode implements OrderStatusCode {
  const factory _OrderStatusCode({required final String description}) =
      _$OrderStatusCodeImpl;

  factory _OrderStatusCode.fromJson(Map<String, dynamic> json) =
      _$OrderStatusCodeImpl.fromJson;

  @override
  String get description;

  /// Create a copy of OrderStatusCode
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OrderStatusCodeImplCopyWith<_$OrderStatusCodeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
