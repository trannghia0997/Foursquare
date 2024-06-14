// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'invoice_status_code.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

InvoiceStatusCode _$InvoiceStatusCodeFromJson(Map<String, dynamic> json) {
  return _InvoiceStatusCode.fromJson(json);
}

/// @nodoc
mixin _$InvoiceStatusCode {
  String get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InvoiceStatusCodeCopyWith<InvoiceStatusCode> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InvoiceStatusCodeCopyWith<$Res> {
  factory $InvoiceStatusCodeCopyWith(
          InvoiceStatusCode value, $Res Function(InvoiceStatusCode) then) =
      _$InvoiceStatusCodeCopyWithImpl<$Res, InvoiceStatusCode>;
  @useResult
  $Res call({String description});
}

/// @nodoc
class _$InvoiceStatusCodeCopyWithImpl<$Res, $Val extends InvoiceStatusCode>
    implements $InvoiceStatusCodeCopyWith<$Res> {
  _$InvoiceStatusCodeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

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
abstract class _$$InvoiceStatusCodeImplCopyWith<$Res>
    implements $InvoiceStatusCodeCopyWith<$Res> {
  factory _$$InvoiceStatusCodeImplCopyWith(_$InvoiceStatusCodeImpl value,
          $Res Function(_$InvoiceStatusCodeImpl) then) =
      __$$InvoiceStatusCodeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String description});
}

/// @nodoc
class __$$InvoiceStatusCodeImplCopyWithImpl<$Res>
    extends _$InvoiceStatusCodeCopyWithImpl<$Res, _$InvoiceStatusCodeImpl>
    implements _$$InvoiceStatusCodeImplCopyWith<$Res> {
  __$$InvoiceStatusCodeImplCopyWithImpl(_$InvoiceStatusCodeImpl _value,
      $Res Function(_$InvoiceStatusCodeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = null,
  }) {
    return _then(_$InvoiceStatusCodeImpl(
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InvoiceStatusCodeImpl
    with DiagnosticableTreeMixin
    implements _InvoiceStatusCode {
  const _$InvoiceStatusCodeImpl({required this.description});

  factory _$InvoiceStatusCodeImpl.fromJson(Map<String, dynamic> json) =>
      _$$InvoiceStatusCodeImplFromJson(json);

  @override
  final String description;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'InvoiceStatusCode(description: $description)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'InvoiceStatusCode'))
      ..add(DiagnosticsProperty('description', description));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InvoiceStatusCodeImpl &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InvoiceStatusCodeImplCopyWith<_$InvoiceStatusCodeImpl> get copyWith =>
      __$$InvoiceStatusCodeImplCopyWithImpl<_$InvoiceStatusCodeImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InvoiceStatusCodeImplToJson(
      this,
    );
  }
}

abstract class _InvoiceStatusCode implements InvoiceStatusCode {
  const factory _InvoiceStatusCode({required final String description}) =
      _$InvoiceStatusCodeImpl;

  factory _InvoiceStatusCode.fromJson(Map<String, dynamic> json) =
      _$InvoiceStatusCodeImpl.fromJson;

  @override
  String get description;
  @override
  @JsonKey(ignore: true)
  _$$InvoiceStatusCodeImplCopyWith<_$InvoiceStatusCodeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
