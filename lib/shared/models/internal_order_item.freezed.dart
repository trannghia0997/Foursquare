// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'internal_order_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

InternalOrderItemDto _$InternalOrderItemDtoFromJson(Map<String, dynamic> json) {
  return _InternalOrderItemDto.fromJson(json);
}

/// @nodoc
mixin _$InternalOrderItemDto {
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
  @JsonKey(name: "qty")
  int? get qty => throw _privateConstructorUsedError;
  @JsonKey(name: "rollQty")
  int? get rollQty => throw _privateConstructorUsedError;
  @JsonKey(name: "note")
  String? get note => throw _privateConstructorUsedError;
  @JsonKey(name: "internalOrderId")
  String get internalOrderId => throw _privateConstructorUsedError;
  @JsonKey(name: "orderItemId")
  String get orderItemId => throw _privateConstructorUsedError;

  /// Serializes this InternalOrderItemDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of InternalOrderItemDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $InternalOrderItemDtoCopyWith<InternalOrderItemDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InternalOrderItemDtoCopyWith<$Res> {
  factory $InternalOrderItemDtoCopyWith(InternalOrderItemDto value,
          $Res Function(InternalOrderItemDto) then) =
      _$InternalOrderItemDtoCopyWithImpl<$Res, InternalOrderItemDto>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") String id,
      @JsonKey(name: "collectionId") String collectionId,
      @JsonKey(name: "collectionName") String collectionName,
      @JsonKey(name: "created") DateTime created,
      @JsonKey(name: "updated") DateTime updated,
      @JsonKey(name: "qty") int? qty,
      @JsonKey(name: "rollQty") int? rollQty,
      @JsonKey(name: "note") String? note,
      @JsonKey(name: "internalOrderId") String internalOrderId,
      @JsonKey(name: "orderItemId") String orderItemId});
}

/// @nodoc
class _$InternalOrderItemDtoCopyWithImpl<$Res,
        $Val extends InternalOrderItemDto>
    implements $InternalOrderItemDtoCopyWith<$Res> {
  _$InternalOrderItemDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of InternalOrderItemDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? collectionId = null,
    Object? collectionName = null,
    Object? created = null,
    Object? updated = null,
    Object? qty = freezed,
    Object? rollQty = freezed,
    Object? note = freezed,
    Object? internalOrderId = null,
    Object? orderItemId = null,
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
      qty: freezed == qty
          ? _value.qty
          : qty // ignore: cast_nullable_to_non_nullable
              as int?,
      rollQty: freezed == rollQty
          ? _value.rollQty
          : rollQty // ignore: cast_nullable_to_non_nullable
              as int?,
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
      internalOrderId: null == internalOrderId
          ? _value.internalOrderId
          : internalOrderId // ignore: cast_nullable_to_non_nullable
              as String,
      orderItemId: null == orderItemId
          ? _value.orderItemId
          : orderItemId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InternalOrderItemDtoImplCopyWith<$Res>
    implements $InternalOrderItemDtoCopyWith<$Res> {
  factory _$$InternalOrderItemDtoImplCopyWith(_$InternalOrderItemDtoImpl value,
          $Res Function(_$InternalOrderItemDtoImpl) then) =
      __$$InternalOrderItemDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") String id,
      @JsonKey(name: "collectionId") String collectionId,
      @JsonKey(name: "collectionName") String collectionName,
      @JsonKey(name: "created") DateTime created,
      @JsonKey(name: "updated") DateTime updated,
      @JsonKey(name: "qty") int? qty,
      @JsonKey(name: "rollQty") int? rollQty,
      @JsonKey(name: "note") String? note,
      @JsonKey(name: "internalOrderId") String internalOrderId,
      @JsonKey(name: "orderItemId") String orderItemId});
}

/// @nodoc
class __$$InternalOrderItemDtoImplCopyWithImpl<$Res>
    extends _$InternalOrderItemDtoCopyWithImpl<$Res, _$InternalOrderItemDtoImpl>
    implements _$$InternalOrderItemDtoImplCopyWith<$Res> {
  __$$InternalOrderItemDtoImplCopyWithImpl(_$InternalOrderItemDtoImpl _value,
      $Res Function(_$InternalOrderItemDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of InternalOrderItemDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? collectionId = null,
    Object? collectionName = null,
    Object? created = null,
    Object? updated = null,
    Object? qty = freezed,
    Object? rollQty = freezed,
    Object? note = freezed,
    Object? internalOrderId = null,
    Object? orderItemId = null,
  }) {
    return _then(_$InternalOrderItemDtoImpl(
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
      qty: freezed == qty
          ? _value.qty
          : qty // ignore: cast_nullable_to_non_nullable
              as int?,
      rollQty: freezed == rollQty
          ? _value.rollQty
          : rollQty // ignore: cast_nullable_to_non_nullable
              as int?,
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
      internalOrderId: null == internalOrderId
          ? _value.internalOrderId
          : internalOrderId // ignore: cast_nullable_to_non_nullable
              as String,
      orderItemId: null == orderItemId
          ? _value.orderItemId
          : orderItemId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InternalOrderItemDtoImpl
    with DiagnosticableTreeMixin
    implements _InternalOrderItemDto {
  const _$InternalOrderItemDtoImpl(
      {@JsonKey(name: "id") required this.id,
      @JsonKey(name: "collectionId") required this.collectionId,
      @JsonKey(name: "collectionName") required this.collectionName,
      @JsonKey(name: "created") required this.created,
      @JsonKey(name: "updated") required this.updated,
      @JsonKey(name: "qty") this.qty,
      @JsonKey(name: "rollQty") this.rollQty,
      @JsonKey(name: "note") this.note,
      @JsonKey(name: "internalOrderId") required this.internalOrderId,
      @JsonKey(name: "orderItemId") required this.orderItemId});

  factory _$InternalOrderItemDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$InternalOrderItemDtoImplFromJson(json);

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
  @JsonKey(name: "qty")
  final int? qty;
  @override
  @JsonKey(name: "rollQty")
  final int? rollQty;
  @override
  @JsonKey(name: "note")
  final String? note;
  @override
  @JsonKey(name: "internalOrderId")
  final String internalOrderId;
  @override
  @JsonKey(name: "orderItemId")
  final String orderItemId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'InternalOrderItemDto(id: $id, collectionId: $collectionId, collectionName: $collectionName, created: $created, updated: $updated, qty: $qty, rollQty: $rollQty, note: $note, internalOrderId: $internalOrderId, orderItemId: $orderItemId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'InternalOrderItemDto'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('collectionId', collectionId))
      ..add(DiagnosticsProperty('collectionName', collectionName))
      ..add(DiagnosticsProperty('created', created))
      ..add(DiagnosticsProperty('updated', updated))
      ..add(DiagnosticsProperty('qty', qty))
      ..add(DiagnosticsProperty('rollQty', rollQty))
      ..add(DiagnosticsProperty('note', note))
      ..add(DiagnosticsProperty('internalOrderId', internalOrderId))
      ..add(DiagnosticsProperty('orderItemId', orderItemId));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InternalOrderItemDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.collectionId, collectionId) ||
                other.collectionId == collectionId) &&
            (identical(other.collectionName, collectionName) ||
                other.collectionName == collectionName) &&
            (identical(other.created, created) || other.created == created) &&
            (identical(other.updated, updated) || other.updated == updated) &&
            (identical(other.qty, qty) || other.qty == qty) &&
            (identical(other.rollQty, rollQty) || other.rollQty == rollQty) &&
            (identical(other.note, note) || other.note == note) &&
            (identical(other.internalOrderId, internalOrderId) ||
                other.internalOrderId == internalOrderId) &&
            (identical(other.orderItemId, orderItemId) ||
                other.orderItemId == orderItemId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, collectionId, collectionName,
      created, updated, qty, rollQty, note, internalOrderId, orderItemId);

  /// Create a copy of InternalOrderItemDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InternalOrderItemDtoImplCopyWith<_$InternalOrderItemDtoImpl>
      get copyWith =>
          __$$InternalOrderItemDtoImplCopyWithImpl<_$InternalOrderItemDtoImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InternalOrderItemDtoImplToJson(
      this,
    );
  }
}

abstract class _InternalOrderItemDto implements InternalOrderItemDto {
  const factory _InternalOrderItemDto(
      {@JsonKey(name: "id") required final String id,
      @JsonKey(name: "collectionId") required final String collectionId,
      @JsonKey(name: "collectionName") required final String collectionName,
      @JsonKey(name: "created") required final DateTime created,
      @JsonKey(name: "updated") required final DateTime updated,
      @JsonKey(name: "qty") final int? qty,
      @JsonKey(name: "rollQty") final int? rollQty,
      @JsonKey(name: "note") final String? note,
      @JsonKey(name: "internalOrderId") required final String internalOrderId,
      @JsonKey(name: "orderItemId")
      required final String orderItemId}) = _$InternalOrderItemDtoImpl;

  factory _InternalOrderItemDto.fromJson(Map<String, dynamic> json) =
      _$InternalOrderItemDtoImpl.fromJson;

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
  @JsonKey(name: "qty")
  int? get qty;
  @override
  @JsonKey(name: "rollQty")
  int? get rollQty;
  @override
  @JsonKey(name: "note")
  String? get note;
  @override
  @JsonKey(name: "internalOrderId")
  String get internalOrderId;
  @override
  @JsonKey(name: "orderItemId")
  String get orderItemId;

  /// Create a copy of InternalOrderItemDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InternalOrderItemDtoImplCopyWith<_$InternalOrderItemDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

InternalOrderItemEditDto _$InternalOrderItemEditDtoFromJson(
    Map<String, dynamic> json) {
  return _InternalOrderItemEditDto.fromJson(json);
}

/// @nodoc
mixin _$InternalOrderItemEditDto {
  @JsonKey(name: "qty")
  int? get qty => throw _privateConstructorUsedError;
  @JsonKey(name: "qty")
  set qty(int? value) => throw _privateConstructorUsedError;
  @JsonKey(name: "rollQty")
  int? get rollQty => throw _privateConstructorUsedError;
  @JsonKey(name: "rollQty")
  set rollQty(int? value) => throw _privateConstructorUsedError;
  @JsonKey(name: "note")
  String? get note => throw _privateConstructorUsedError;
  @JsonKey(name: "note")
  set note(String? value) => throw _privateConstructorUsedError;
  @JsonKey(name: "internalOrderId")
  String get internalOrderId => throw _privateConstructorUsedError;
  @JsonKey(name: "internalOrderId")
  set internalOrderId(String value) => throw _privateConstructorUsedError;
  @JsonKey(name: "orderItemId")
  String get orderItemId => throw _privateConstructorUsedError;
  @JsonKey(name: "orderItemId")
  set orderItemId(String value) => throw _privateConstructorUsedError;

  /// Serializes this InternalOrderItemEditDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of InternalOrderItemEditDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $InternalOrderItemEditDtoCopyWith<InternalOrderItemEditDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InternalOrderItemEditDtoCopyWith<$Res> {
  factory $InternalOrderItemEditDtoCopyWith(InternalOrderItemEditDto value,
          $Res Function(InternalOrderItemEditDto) then) =
      _$InternalOrderItemEditDtoCopyWithImpl<$Res, InternalOrderItemEditDto>;
  @useResult
  $Res call(
      {@JsonKey(name: "qty") int? qty,
      @JsonKey(name: "rollQty") int? rollQty,
      @JsonKey(name: "note") String? note,
      @JsonKey(name: "internalOrderId") String internalOrderId,
      @JsonKey(name: "orderItemId") String orderItemId});
}

/// @nodoc
class _$InternalOrderItemEditDtoCopyWithImpl<$Res,
        $Val extends InternalOrderItemEditDto>
    implements $InternalOrderItemEditDtoCopyWith<$Res> {
  _$InternalOrderItemEditDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of InternalOrderItemEditDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? qty = freezed,
    Object? rollQty = freezed,
    Object? note = freezed,
    Object? internalOrderId = null,
    Object? orderItemId = null,
  }) {
    return _then(_value.copyWith(
      qty: freezed == qty
          ? _value.qty
          : qty // ignore: cast_nullable_to_non_nullable
              as int?,
      rollQty: freezed == rollQty
          ? _value.rollQty
          : rollQty // ignore: cast_nullable_to_non_nullable
              as int?,
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
      internalOrderId: null == internalOrderId
          ? _value.internalOrderId
          : internalOrderId // ignore: cast_nullable_to_non_nullable
              as String,
      orderItemId: null == orderItemId
          ? _value.orderItemId
          : orderItemId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InternalOrderItemEditDtoImplCopyWith<$Res>
    implements $InternalOrderItemEditDtoCopyWith<$Res> {
  factory _$$InternalOrderItemEditDtoImplCopyWith(
          _$InternalOrderItemEditDtoImpl value,
          $Res Function(_$InternalOrderItemEditDtoImpl) then) =
      __$$InternalOrderItemEditDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "qty") int? qty,
      @JsonKey(name: "rollQty") int? rollQty,
      @JsonKey(name: "note") String? note,
      @JsonKey(name: "internalOrderId") String internalOrderId,
      @JsonKey(name: "orderItemId") String orderItemId});
}

/// @nodoc
class __$$InternalOrderItemEditDtoImplCopyWithImpl<$Res>
    extends _$InternalOrderItemEditDtoCopyWithImpl<$Res,
        _$InternalOrderItemEditDtoImpl>
    implements _$$InternalOrderItemEditDtoImplCopyWith<$Res> {
  __$$InternalOrderItemEditDtoImplCopyWithImpl(
      _$InternalOrderItemEditDtoImpl _value,
      $Res Function(_$InternalOrderItemEditDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of InternalOrderItemEditDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? qty = freezed,
    Object? rollQty = freezed,
    Object? note = freezed,
    Object? internalOrderId = null,
    Object? orderItemId = null,
  }) {
    return _then(_$InternalOrderItemEditDtoImpl(
      qty: freezed == qty
          ? _value.qty
          : qty // ignore: cast_nullable_to_non_nullable
              as int?,
      rollQty: freezed == rollQty
          ? _value.rollQty
          : rollQty // ignore: cast_nullable_to_non_nullable
              as int?,
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
      internalOrderId: null == internalOrderId
          ? _value.internalOrderId
          : internalOrderId // ignore: cast_nullable_to_non_nullable
              as String,
      orderItemId: null == orderItemId
          ? _value.orderItemId
          : orderItemId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(includeIfNull: false)
class _$InternalOrderItemEditDtoImpl
    with DiagnosticableTreeMixin
    implements _InternalOrderItemEditDto {
  _$InternalOrderItemEditDtoImpl(
      {@JsonKey(name: "qty") this.qty,
      @JsonKey(name: "rollQty") this.rollQty,
      @JsonKey(name: "note") this.note,
      @JsonKey(name: "internalOrderId") required this.internalOrderId,
      @JsonKey(name: "orderItemId") required this.orderItemId});

  factory _$InternalOrderItemEditDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$InternalOrderItemEditDtoImplFromJson(json);

  @override
  @JsonKey(name: "qty")
  int? qty;
  @override
  @JsonKey(name: "rollQty")
  int? rollQty;
  @override
  @JsonKey(name: "note")
  String? note;
  @override
  @JsonKey(name: "internalOrderId")
  String internalOrderId;
  @override
  @JsonKey(name: "orderItemId")
  String orderItemId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'InternalOrderItemEditDto(qty: $qty, rollQty: $rollQty, note: $note, internalOrderId: $internalOrderId, orderItemId: $orderItemId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'InternalOrderItemEditDto'))
      ..add(DiagnosticsProperty('qty', qty))
      ..add(DiagnosticsProperty('rollQty', rollQty))
      ..add(DiagnosticsProperty('note', note))
      ..add(DiagnosticsProperty('internalOrderId', internalOrderId))
      ..add(DiagnosticsProperty('orderItemId', orderItemId));
  }

  /// Create a copy of InternalOrderItemEditDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InternalOrderItemEditDtoImplCopyWith<_$InternalOrderItemEditDtoImpl>
      get copyWith => __$$InternalOrderItemEditDtoImplCopyWithImpl<
          _$InternalOrderItemEditDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InternalOrderItemEditDtoImplToJson(
      this,
    );
  }
}

abstract class _InternalOrderItemEditDto implements InternalOrderItemEditDto {
  factory _InternalOrderItemEditDto(
          {@JsonKey(name: "qty") int? qty,
          @JsonKey(name: "rollQty") int? rollQty,
          @JsonKey(name: "note") String? note,
          @JsonKey(name: "internalOrderId") required String internalOrderId,
          @JsonKey(name: "orderItemId") required String orderItemId}) =
      _$InternalOrderItemEditDtoImpl;

  factory _InternalOrderItemEditDto.fromJson(Map<String, dynamic> json) =
      _$InternalOrderItemEditDtoImpl.fromJson;

  @override
  @JsonKey(name: "qty")
  int? get qty;
  @JsonKey(name: "qty")
  set qty(int? value);
  @override
  @JsonKey(name: "rollQty")
  int? get rollQty;
  @JsonKey(name: "rollQty")
  set rollQty(int? value);
  @override
  @JsonKey(name: "note")
  String? get note;
  @JsonKey(name: "note")
  set note(String? value);
  @override
  @JsonKey(name: "internalOrderId")
  String get internalOrderId;
  @JsonKey(name: "internalOrderId")
  set internalOrderId(String value);
  @override
  @JsonKey(name: "orderItemId")
  String get orderItemId;
  @JsonKey(name: "orderItemId")
  set orderItemId(String value);

  /// Create a copy of InternalOrderItemEditDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InternalOrderItemEditDtoImplCopyWith<_$InternalOrderItemEditDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}
