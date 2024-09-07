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

ShipmentStatusCodeDto _$ShipmentStatusCodeDtoFromJson(
    Map<String, dynamic> json) {
  return _ShipmentStatusCodeDto.fromJson(json);
}

/// @nodoc
mixin _$ShipmentStatusCodeDto {
  @JsonKey(name: "id")
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: "collectionId")
  String get collectionId => throw _privateConstructorUsedError;
  @JsonKey(name: "collectionName")
  String get collectionName => throw _privateConstructorUsedError;
  @JsonKey(name: "created")
  DateTime get created => throw _privateConstructorUsedError;
  @JsonKey(name: "updated")
  DateTime get updated => throw _privateConstructorUsedError;
  @JsonKey(name: "statusCode")
  String get statusCode => throw _privateConstructorUsedError;
  @JsonKey(name: "description")
  String? get description => throw _privateConstructorUsedError;

  /// Serializes this ShipmentStatusCodeDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ShipmentStatusCodeDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ShipmentStatusCodeDtoCopyWith<ShipmentStatusCodeDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShipmentStatusCodeDtoCopyWith<$Res> {
  factory $ShipmentStatusCodeDtoCopyWith(ShipmentStatusCodeDto value,
          $Res Function(ShipmentStatusCodeDto) then) =
      _$ShipmentStatusCodeDtoCopyWithImpl<$Res, ShipmentStatusCodeDto>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") String id,
      @JsonKey(name: "collectionId") String collectionId,
      @JsonKey(name: "collectionName") String collectionName,
      @JsonKey(name: "created") DateTime created,
      @JsonKey(name: "updated") DateTime updated,
      @JsonKey(name: "statusCode") String statusCode,
      @JsonKey(name: "description") String? description});
}

/// @nodoc
class _$ShipmentStatusCodeDtoCopyWithImpl<$Res,
        $Val extends ShipmentStatusCodeDto>
    implements $ShipmentStatusCodeDtoCopyWith<$Res> {
  _$ShipmentStatusCodeDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ShipmentStatusCodeDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? collectionId = null,
    Object? collectionName = null,
    Object? created = null,
    Object? updated = null,
    Object? statusCode = null,
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      collectionId: null == collectionId
          ? _value.collectionId
          : collectionId // ignore: cast_nullable_to_non_nullable
              as String,
      collectionName: null == collectionName
          ? _value.collectionName
          : collectionName // ignore: cast_nullable_to_non_nullable
              as String,
      created: null == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updated: null == updated
          ? _value.updated
          : updated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      statusCode: null == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ShipmentStatusCodeDtoImplCopyWith<$Res>
    implements $ShipmentStatusCodeDtoCopyWith<$Res> {
  factory _$$ShipmentStatusCodeDtoImplCopyWith(
          _$ShipmentStatusCodeDtoImpl value,
          $Res Function(_$ShipmentStatusCodeDtoImpl) then) =
      __$$ShipmentStatusCodeDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") String id,
      @JsonKey(name: "collectionId") String collectionId,
      @JsonKey(name: "collectionName") String collectionName,
      @JsonKey(name: "created") DateTime created,
      @JsonKey(name: "updated") DateTime updated,
      @JsonKey(name: "statusCode") String statusCode,
      @JsonKey(name: "description") String? description});
}

/// @nodoc
class __$$ShipmentStatusCodeDtoImplCopyWithImpl<$Res>
    extends _$ShipmentStatusCodeDtoCopyWithImpl<$Res,
        _$ShipmentStatusCodeDtoImpl>
    implements _$$ShipmentStatusCodeDtoImplCopyWith<$Res> {
  __$$ShipmentStatusCodeDtoImplCopyWithImpl(_$ShipmentStatusCodeDtoImpl _value,
      $Res Function(_$ShipmentStatusCodeDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of ShipmentStatusCodeDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? collectionId = null,
    Object? collectionName = null,
    Object? created = null,
    Object? updated = null,
    Object? statusCode = null,
    Object? description = freezed,
  }) {
    return _then(_$ShipmentStatusCodeDtoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      collectionId: null == collectionId
          ? _value.collectionId
          : collectionId // ignore: cast_nullable_to_non_nullable
              as String,
      collectionName: null == collectionName
          ? _value.collectionName
          : collectionName // ignore: cast_nullable_to_non_nullable
              as String,
      created: null == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updated: null == updated
          ? _value.updated
          : updated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      statusCode: null == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ShipmentStatusCodeDtoImpl
    with DiagnosticableTreeMixin
    implements _ShipmentStatusCodeDto {
  const _$ShipmentStatusCodeDtoImpl(
      {@JsonKey(name: "id") required this.id,
      @JsonKey(name: "collectionId") required this.collectionId,
      @JsonKey(name: "collectionName") required this.collectionName,
      @JsonKey(name: "created") required this.created,
      @JsonKey(name: "updated") required this.updated,
      @JsonKey(name: "statusCode") required this.statusCode,
      @JsonKey(name: "description") this.description});

  factory _$ShipmentStatusCodeDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ShipmentStatusCodeDtoImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final String id;
  @override
  @JsonKey(name: "collectionId")
  final String collectionId;
  @override
  @JsonKey(name: "collectionName")
  final String collectionName;
  @override
  @JsonKey(name: "created")
  final DateTime created;
  @override
  @JsonKey(name: "updated")
  final DateTime updated;
  @override
  @JsonKey(name: "statusCode")
  final String statusCode;
  @override
  @JsonKey(name: "description")
  final String? description;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ShipmentStatusCodeDto(id: $id, collectionId: $collectionId, collectionName: $collectionName, created: $created, updated: $updated, statusCode: $statusCode, description: $description)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ShipmentStatusCodeDto'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('collectionId', collectionId))
      ..add(DiagnosticsProperty('collectionName', collectionName))
      ..add(DiagnosticsProperty('created', created))
      ..add(DiagnosticsProperty('updated', updated))
      ..add(DiagnosticsProperty('statusCode', statusCode))
      ..add(DiagnosticsProperty('description', description));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShipmentStatusCodeDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.collectionId, collectionId) ||
                other.collectionId == collectionId) &&
            (identical(other.collectionName, collectionName) ||
                other.collectionName == collectionName) &&
            (identical(other.created, created) || other.created == created) &&
            (identical(other.updated, updated) || other.updated == updated) &&
            (identical(other.statusCode, statusCode) ||
                other.statusCode == statusCode) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, collectionId, collectionName,
      created, updated, statusCode, description);

  /// Create a copy of ShipmentStatusCodeDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ShipmentStatusCodeDtoImplCopyWith<_$ShipmentStatusCodeDtoImpl>
      get copyWith => __$$ShipmentStatusCodeDtoImplCopyWithImpl<
          _$ShipmentStatusCodeDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ShipmentStatusCodeDtoImplToJson(
      this,
    );
  }
}

abstract class _ShipmentStatusCodeDto implements ShipmentStatusCodeDto {
  const factory _ShipmentStatusCodeDto(
          {@JsonKey(name: "id") required final String id,
          @JsonKey(name: "collectionId") required final String collectionId,
          @JsonKey(name: "collectionName") required final String collectionName,
          @JsonKey(name: "created") required final DateTime created,
          @JsonKey(name: "updated") required final DateTime updated,
          @JsonKey(name: "statusCode") required final String statusCode,
          @JsonKey(name: "description") final String? description}) =
      _$ShipmentStatusCodeDtoImpl;

  factory _ShipmentStatusCodeDto.fromJson(Map<String, dynamic> json) =
      _$ShipmentStatusCodeDtoImpl.fromJson;

  @override
  @JsonKey(name: "id")
  String get id;
  @override
  @JsonKey(name: "collectionId")
  String get collectionId;
  @override
  @JsonKey(name: "collectionName")
  String get collectionName;
  @override
  @JsonKey(name: "created")
  DateTime get created;
  @override
  @JsonKey(name: "updated")
  DateTime get updated;
  @override
  @JsonKey(name: "statusCode")
  String get statusCode;
  @override
  @JsonKey(name: "description")
  String? get description;

  /// Create a copy of ShipmentStatusCodeDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ShipmentStatusCodeDtoImplCopyWith<_$ShipmentStatusCodeDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}
