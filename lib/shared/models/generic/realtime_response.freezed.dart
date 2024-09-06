// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'realtime_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RealtimeResponse<T> _$RealtimeResponseFromJson<T>(
    Map<String, dynamic> json, T Function(Object?) fromJsonT) {
  return _RealtimeResponse<T>.fromJson(json, fromJsonT);
}

/// @nodoc
mixin _$RealtimeResponse<T> {
  @JsonKey(name: "action")
  RealtimeAction get action => throw _privateConstructorUsedError;
  @JsonKey(name: "record")
  T get record => throw _privateConstructorUsedError;

  /// Serializes this RealtimeResponse to a JSON map.
  Map<String, dynamic> toJson(Object? Function(T) toJsonT) =>
      throw _privateConstructorUsedError;

  /// Create a copy of RealtimeResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RealtimeResponseCopyWith<T, RealtimeResponse<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RealtimeResponseCopyWith<T, $Res> {
  factory $RealtimeResponseCopyWith(
          RealtimeResponse<T> value, $Res Function(RealtimeResponse<T>) then) =
      _$RealtimeResponseCopyWithImpl<T, $Res, RealtimeResponse<T>>;
  @useResult
  $Res call(
      {@JsonKey(name: "action") RealtimeAction action,
      @JsonKey(name: "record") T record});
}

/// @nodoc
class _$RealtimeResponseCopyWithImpl<T, $Res, $Val extends RealtimeResponse<T>>
    implements $RealtimeResponseCopyWith<T, $Res> {
  _$RealtimeResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RealtimeResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? action = null,
    Object? record = freezed,
  }) {
    return _then(_value.copyWith(
      action: null == action
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as RealtimeAction,
      record: freezed == record
          ? _value.record
          : record // ignore: cast_nullable_to_non_nullable
              as T,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RealtimeResponseImplCopyWith<T, $Res>
    implements $RealtimeResponseCopyWith<T, $Res> {
  factory _$$RealtimeResponseImplCopyWith(_$RealtimeResponseImpl<T> value,
          $Res Function(_$RealtimeResponseImpl<T>) then) =
      __$$RealtimeResponseImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "action") RealtimeAction action,
      @JsonKey(name: "record") T record});
}

/// @nodoc
class __$$RealtimeResponseImplCopyWithImpl<T, $Res>
    extends _$RealtimeResponseCopyWithImpl<T, $Res, _$RealtimeResponseImpl<T>>
    implements _$$RealtimeResponseImplCopyWith<T, $Res> {
  __$$RealtimeResponseImplCopyWithImpl(_$RealtimeResponseImpl<T> _value,
      $Res Function(_$RealtimeResponseImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of RealtimeResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? action = null,
    Object? record = freezed,
  }) {
    return _then(_$RealtimeResponseImpl<T>(
      action: null == action
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as RealtimeAction,
      record: freezed == record
          ? _value.record
          : record // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc
@JsonSerializable(genericArgumentFactories: true)
class _$RealtimeResponseImpl<T>
    with DiagnosticableTreeMixin
    implements _RealtimeResponse<T> {
  const _$RealtimeResponseImpl(
      {@JsonKey(name: "action") required this.action,
      @JsonKey(name: "record") required this.record});

  factory _$RealtimeResponseImpl.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =>
      _$$RealtimeResponseImplFromJson(json, fromJsonT);

  @override
  @JsonKey(name: "action")
  final RealtimeAction action;
  @override
  @JsonKey(name: "record")
  final T record;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RealtimeResponse<$T>(action: $action, record: $record)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RealtimeResponse<$T>'))
      ..add(DiagnosticsProperty('action', action))
      ..add(DiagnosticsProperty('record', record));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RealtimeResponseImpl<T> &&
            (identical(other.action, action) || other.action == action) &&
            const DeepCollectionEquality().equals(other.record, record));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, action, const DeepCollectionEquality().hash(record));

  /// Create a copy of RealtimeResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RealtimeResponseImplCopyWith<T, _$RealtimeResponseImpl<T>> get copyWith =>
      __$$RealtimeResponseImplCopyWithImpl<T, _$RealtimeResponseImpl<T>>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson(Object? Function(T) toJsonT) {
    return _$$RealtimeResponseImplToJson<T>(this, toJsonT);
  }
}

abstract class _RealtimeResponse<T> implements RealtimeResponse<T> {
  const factory _RealtimeResponse(
          {@JsonKey(name: "action") required final RealtimeAction action,
          @JsonKey(name: "record") required final T record}) =
      _$RealtimeResponseImpl<T>;

  factory _RealtimeResponse.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =
      _$RealtimeResponseImpl<T>.fromJson;

  @override
  @JsonKey(name: "action")
  RealtimeAction get action;
  @override
  @JsonKey(name: "record")
  T get record;

  /// Create a copy of RealtimeResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RealtimeResponseImplCopyWith<T, _$RealtimeResponseImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
