// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'colour.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Colour _$ColourFromJson(Map<String, dynamic> json) {
  return _Colour.fromJson(json);
}

/// @nodoc
mixin _$Colour {
  String get name => throw _privateConstructorUsedError;
  String get hex => throw _privateConstructorUsedError;
  @JsonKey(includeFromJson: false, includeToJson: false)
  RecordModel? get record => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ColourCopyWith<Colour> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ColourCopyWith<$Res> {
  factory $ColourCopyWith(Colour value, $Res Function(Colour) then) =
      _$ColourCopyWithImpl<$Res, Colour>;
  @useResult
  $Res call(
      {String name,
      String hex,
      @JsonKey(includeFromJson: false, includeToJson: false)
      RecordModel? record});
}

/// @nodoc
class _$ColourCopyWithImpl<$Res, $Val extends Colour>
    implements $ColourCopyWith<$Res> {
  _$ColourCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? hex = null,
    Object? record = freezed,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      hex: null == hex
          ? _value.hex
          : hex // ignore: cast_nullable_to_non_nullable
              as String,
      record: freezed == record
          ? _value.record
          : record // ignore: cast_nullable_to_non_nullable
              as RecordModel?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ColourImplCopyWith<$Res> implements $ColourCopyWith<$Res> {
  factory _$$ColourImplCopyWith(
          _$ColourImpl value, $Res Function(_$ColourImpl) then) =
      __$$ColourImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String hex,
      @JsonKey(includeFromJson: false, includeToJson: false)
      RecordModel? record});
}

/// @nodoc
class __$$ColourImplCopyWithImpl<$Res>
    extends _$ColourCopyWithImpl<$Res, _$ColourImpl>
    implements _$$ColourImplCopyWith<$Res> {
  __$$ColourImplCopyWithImpl(
      _$ColourImpl _value, $Res Function(_$ColourImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? hex = null,
    Object? record = freezed,
  }) {
    return _then(_$ColourImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      hex: null == hex
          ? _value.hex
          : hex // ignore: cast_nullable_to_non_nullable
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
class _$ColourImpl with DiagnosticableTreeMixin implements _Colour {
  const _$ColourImpl(
      {required this.name,
      required this.hex,
      @JsonKey(includeFromJson: false, includeToJson: false) this.record});

  factory _$ColourImpl.fromJson(Map<String, dynamic> json) =>
      _$$ColourImplFromJson(json);

  @override
  final String name;
  @override
  final String hex;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  final RecordModel? record;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Colour(name: $name, hex: $hex, record: $record)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Colour'))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('hex', hex))
      ..add(DiagnosticsProperty('record', record));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ColourImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.hex, hex) || other.hex == hex) &&
            (identical(other.record, record) || other.record == record));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, hex, record);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ColourImplCopyWith<_$ColourImpl> get copyWith =>
      __$$ColourImplCopyWithImpl<_$ColourImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ColourImplToJson(
      this,
    );
  }
}

abstract class _Colour implements Colour {
  const factory _Colour(
      {required final String name,
      required final String hex,
      @JsonKey(includeFromJson: false, includeToJson: false)
      final RecordModel? record}) = _$ColourImpl;

  factory _Colour.fromJson(Map<String, dynamic> json) = _$ColourImpl.fromJson;

  @override
  String get name;
  @override
  String get hex;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  RecordModel? get record;
  @override
  @JsonKey(ignore: true)
  _$$ColourImplCopyWith<_$ColourImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
