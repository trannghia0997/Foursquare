// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_history.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OrderHistoryDto _$OrderHistoryDtoFromJson(Map<String, dynamic> json) {
  return _OrderHistoryDto.fromJson(json);
}

/// @nodoc
mixin _$OrderHistoryDto {
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
  @JsonKey(name: "note")
  String? get note => throw _privateConstructorUsedError;
  @JsonKey(name: "orderId")
  String get orderId => throw _privateConstructorUsedError;
  @JsonKey(name: "statusCodeId")
  String get statusCodeId => throw _privateConstructorUsedError;

  /// Serializes this OrderHistoryDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OrderHistoryDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OrderHistoryDtoCopyWith<OrderHistoryDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderHistoryDtoCopyWith<$Res> {
  factory $OrderHistoryDtoCopyWith(
          OrderHistoryDto value, $Res Function(OrderHistoryDto) then) =
      _$OrderHistoryDtoCopyWithImpl<$Res, OrderHistoryDto>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") String id,
      @JsonKey(name: "collectionId") String collectionId,
      @JsonKey(name: "collectionName") String collectionName,
      @JsonKey(name: "created") DateTime created,
      @JsonKey(name: "updated") DateTime updated,
      @JsonKey(name: "note") String? note,
      @JsonKey(name: "orderId") String orderId,
      @JsonKey(name: "statusCodeId") String statusCodeId});
}

/// @nodoc
class _$OrderHistoryDtoCopyWithImpl<$Res, $Val extends OrderHistoryDto>
    implements $OrderHistoryDtoCopyWith<$Res> {
  _$OrderHistoryDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OrderHistoryDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? collectionId = null,
    Object? collectionName = null,
    Object? created = null,
    Object? updated = null,
    Object? note = freezed,
    Object? orderId = null,
    Object? statusCodeId = null,
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
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
      statusCodeId: null == statusCodeId
          ? _value.statusCodeId
          : statusCodeId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OrderHistoryDtoImplCopyWith<$Res>
    implements $OrderHistoryDtoCopyWith<$Res> {
  factory _$$OrderHistoryDtoImplCopyWith(_$OrderHistoryDtoImpl value,
          $Res Function(_$OrderHistoryDtoImpl) then) =
      __$$OrderHistoryDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") String id,
      @JsonKey(name: "collectionId") String collectionId,
      @JsonKey(name: "collectionName") String collectionName,
      @JsonKey(name: "created") DateTime created,
      @JsonKey(name: "updated") DateTime updated,
      @JsonKey(name: "note") String? note,
      @JsonKey(name: "orderId") String orderId,
      @JsonKey(name: "statusCodeId") String statusCodeId});
}

/// @nodoc
class __$$OrderHistoryDtoImplCopyWithImpl<$Res>
    extends _$OrderHistoryDtoCopyWithImpl<$Res, _$OrderHistoryDtoImpl>
    implements _$$OrderHistoryDtoImplCopyWith<$Res> {
  __$$OrderHistoryDtoImplCopyWithImpl(
      _$OrderHistoryDtoImpl _value, $Res Function(_$OrderHistoryDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of OrderHistoryDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? collectionId = null,
    Object? collectionName = null,
    Object? created = null,
    Object? updated = null,
    Object? note = freezed,
    Object? orderId = null,
    Object? statusCodeId = null,
  }) {
    return _then(_$OrderHistoryDtoImpl(
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
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
      statusCodeId: null == statusCodeId
          ? _value.statusCodeId
          : statusCodeId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OrderHistoryDtoImpl
    with DiagnosticableTreeMixin
    implements _OrderHistoryDto {
  const _$OrderHistoryDtoImpl(
      {@JsonKey(name: "id") required this.id,
      @JsonKey(name: "collectionId") required this.collectionId,
      @JsonKey(name: "collectionName") required this.collectionName,
      @JsonKey(name: "created") required this.created,
      @JsonKey(name: "updated") required this.updated,
      @JsonKey(name: "note") this.note,
      @JsonKey(name: "orderId") required this.orderId,
      @JsonKey(name: "statusCodeId") required this.statusCodeId});

  factory _$OrderHistoryDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderHistoryDtoImplFromJson(json);

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
  @JsonKey(name: "note")
  final String? note;
  @override
  @JsonKey(name: "orderId")
  final String orderId;
  @override
  @JsonKey(name: "statusCodeId")
  final String statusCodeId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'OrderHistoryDto(id: $id, collectionId: $collectionId, collectionName: $collectionName, created: $created, updated: $updated, note: $note, orderId: $orderId, statusCodeId: $statusCodeId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'OrderHistoryDto'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('collectionId', collectionId))
      ..add(DiagnosticsProperty('collectionName', collectionName))
      ..add(DiagnosticsProperty('created', created))
      ..add(DiagnosticsProperty('updated', updated))
      ..add(DiagnosticsProperty('note', note))
      ..add(DiagnosticsProperty('orderId', orderId))
      ..add(DiagnosticsProperty('statusCodeId', statusCodeId));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderHistoryDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.collectionId, collectionId) ||
                other.collectionId == collectionId) &&
            (identical(other.collectionName, collectionName) ||
                other.collectionName == collectionName) &&
            (identical(other.created, created) || other.created == created) &&
            (identical(other.updated, updated) || other.updated == updated) &&
            (identical(other.note, note) || other.note == note) &&
            (identical(other.orderId, orderId) || other.orderId == orderId) &&
            (identical(other.statusCodeId, statusCodeId) ||
                other.statusCodeId == statusCodeId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, collectionId, collectionName,
      created, updated, note, orderId, statusCodeId);

  /// Create a copy of OrderHistoryDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderHistoryDtoImplCopyWith<_$OrderHistoryDtoImpl> get copyWith =>
      __$$OrderHistoryDtoImplCopyWithImpl<_$OrderHistoryDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderHistoryDtoImplToJson(
      this,
    );
  }
}

abstract class _OrderHistoryDto implements OrderHistoryDto {
  const factory _OrderHistoryDto(
          {@JsonKey(name: "id") required final String id,
          @JsonKey(name: "collectionId") required final String collectionId,
          @JsonKey(name: "collectionName") required final String collectionName,
          @JsonKey(name: "created") required final DateTime created,
          @JsonKey(name: "updated") required final DateTime updated,
          @JsonKey(name: "note") final String? note,
          @JsonKey(name: "orderId") required final String orderId,
          @JsonKey(name: "statusCodeId") required final String statusCodeId}) =
      _$OrderHistoryDtoImpl;

  factory _OrderHistoryDto.fromJson(Map<String, dynamic> json) =
      _$OrderHistoryDtoImpl.fromJson;

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
  @JsonKey(name: "note")
  String? get note;
  @override
  @JsonKey(name: "orderId")
  String get orderId;
  @override
  @JsonKey(name: "statusCodeId")
  String get statusCodeId;

  /// Create a copy of OrderHistoryDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OrderHistoryDtoImplCopyWith<_$OrderHistoryDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
