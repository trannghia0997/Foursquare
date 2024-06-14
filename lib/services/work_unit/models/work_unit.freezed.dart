// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'work_unit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

WorkUnit _$WorkUnitFromJson(Map<String, dynamic> json) {
  return _Invoice.fromJson(json);
}

/// @nodoc
mixin _$WorkUnit {
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'address_id')
  String? get addressId => throw _privateConstructorUsedError;
  double get total => throw _privateConstructorUsedError;
  @JsonKey(name: 'status_id')
  String get statusId => throw _privateConstructorUsedError;
  WorkUnitType get type => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WorkUnitCopyWith<WorkUnit> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WorkUnitCopyWith<$Res> {
  factory $WorkUnitCopyWith(WorkUnit value, $Res Function(WorkUnit) then) =
      _$WorkUnitCopyWithImpl<$Res, WorkUnit>;
  @useResult
  $Res call(
      {String name,
      @JsonKey(name: 'address_id') String? addressId,
      double total,
      @JsonKey(name: 'status_id') String statusId,
      WorkUnitType type,
      String? image});
}

/// @nodoc
class _$WorkUnitCopyWithImpl<$Res, $Val extends WorkUnit>
    implements $WorkUnitCopyWith<$Res> {
  _$WorkUnitCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? addressId = freezed,
    Object? total = null,
    Object? statusId = null,
    Object? type = null,
    Object? image = freezed,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      addressId: freezed == addressId
          ? _value.addressId
          : addressId // ignore: cast_nullable_to_non_nullable
              as String?,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as double,
      statusId: null == statusId
          ? _value.statusId
          : statusId // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as WorkUnitType,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InvoiceImplCopyWith<$Res> implements $WorkUnitCopyWith<$Res> {
  factory _$$InvoiceImplCopyWith(
          _$InvoiceImpl value, $Res Function(_$InvoiceImpl) then) =
      __$$InvoiceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      @JsonKey(name: 'address_id') String? addressId,
      double total,
      @JsonKey(name: 'status_id') String statusId,
      WorkUnitType type,
      String? image});
}

/// @nodoc
class __$$InvoiceImplCopyWithImpl<$Res>
    extends _$WorkUnitCopyWithImpl<$Res, _$InvoiceImpl>
    implements _$$InvoiceImplCopyWith<$Res> {
  __$$InvoiceImplCopyWithImpl(
      _$InvoiceImpl _value, $Res Function(_$InvoiceImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? addressId = freezed,
    Object? total = null,
    Object? statusId = null,
    Object? type = null,
    Object? image = freezed,
  }) {
    return _then(_$InvoiceImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      addressId: freezed == addressId
          ? _value.addressId
          : addressId // ignore: cast_nullable_to_non_nullable
              as String?,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as double,
      statusId: null == statusId
          ? _value.statusId
          : statusId // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as WorkUnitType,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InvoiceImpl with DiagnosticableTreeMixin implements _Invoice {
  const _$InvoiceImpl(
      {required this.name,
      @JsonKey(name: 'address_id') this.addressId,
      required this.total,
      @JsonKey(name: 'status_id') required this.statusId,
      required this.type,
      this.image});

  factory _$InvoiceImpl.fromJson(Map<String, dynamic> json) =>
      _$$InvoiceImplFromJson(json);

  @override
  final String name;
  @override
  @JsonKey(name: 'address_id')
  final String? addressId;
  @override
  final double total;
  @override
  @JsonKey(name: 'status_id')
  final String statusId;
  @override
  final WorkUnitType type;
  @override
  final String? image;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'WorkUnit(name: $name, addressId: $addressId, total: $total, statusId: $statusId, type: $type, image: $image)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'WorkUnit'))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('addressId', addressId))
      ..add(DiagnosticsProperty('total', total))
      ..add(DiagnosticsProperty('statusId', statusId))
      ..add(DiagnosticsProperty('type', type))
      ..add(DiagnosticsProperty('image', image));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InvoiceImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.addressId, addressId) ||
                other.addressId == addressId) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.statusId, statusId) ||
                other.statusId == statusId) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, name, addressId, total, statusId, type, image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InvoiceImplCopyWith<_$InvoiceImpl> get copyWith =>
      __$$InvoiceImplCopyWithImpl<_$InvoiceImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InvoiceImplToJson(
      this,
    );
  }
}

abstract class _Invoice implements WorkUnit {
  const factory _Invoice(
      {required final String name,
      @JsonKey(name: 'address_id') final String? addressId,
      required final double total,
      @JsonKey(name: 'status_id') required final String statusId,
      required final WorkUnitType type,
      final String? image}) = _$InvoiceImpl;

  factory _Invoice.fromJson(Map<String, dynamic> json) = _$InvoiceImpl.fromJson;

  @override
  String get name;
  @override
  @JsonKey(name: 'address_id')
  String? get addressId;
  @override
  double get total;
  @override
  @JsonKey(name: 'status_id')
  String get statusId;
  @override
  WorkUnitType get type;
  @override
  String? get image;
  @override
  @JsonKey(ignore: true)
  _$$InvoiceImplCopyWith<_$InvoiceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
