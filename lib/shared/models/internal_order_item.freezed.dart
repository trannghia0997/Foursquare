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

InternalOrderItemDTO _$InternalOrderItemDTOFromJson(Map<String, dynamic> json) {
  return _InternalOrderItemDTO.fromJson(json);
}

/// @nodoc
mixin _$InternalOrderItemDTO {
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
  @JsonKey(name: "note")
  String? get note => throw _privateConstructorUsedError;
  @JsonKey(name: "internal_order_id")
  String get internalOrderId => throw _privateConstructorUsedError;
  @JsonKey(name: "order_item_id")
  String get orderItemId => throw _privateConstructorUsedError;

  /// Serializes this InternalOrderItemDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of InternalOrderItemDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $InternalOrderItemDTOCopyWith<InternalOrderItemDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InternalOrderItemDTOCopyWith<$Res> {
  factory $InternalOrderItemDTOCopyWith(InternalOrderItemDTO value,
          $Res Function(InternalOrderItemDTO) then) =
      _$InternalOrderItemDTOCopyWithImpl<$Res, InternalOrderItemDTO>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") String id,
      @JsonKey(name: "collectionId") String collectionId,
      @JsonKey(name: "collectionName") String collectionName,
      @JsonKey(name: "created") DateTime created,
      @JsonKey(name: "updated") DateTime updated,
      @JsonKey(name: "qty") int? qty,
      @JsonKey(name: "note") String? note,
      @JsonKey(name: "internal_order_id") String internalOrderId,
      @JsonKey(name: "order_item_id") String orderItemId});
}

/// @nodoc
class _$InternalOrderItemDTOCopyWithImpl<$Res,
        $Val extends InternalOrderItemDTO>
    implements $InternalOrderItemDTOCopyWith<$Res> {
  _$InternalOrderItemDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of InternalOrderItemDTO
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
abstract class _$$InternalOrderItemDTOImplCopyWith<$Res>
    implements $InternalOrderItemDTOCopyWith<$Res> {
  factory _$$InternalOrderItemDTOImplCopyWith(_$InternalOrderItemDTOImpl value,
          $Res Function(_$InternalOrderItemDTOImpl) then) =
      __$$InternalOrderItemDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") String id,
      @JsonKey(name: "collectionId") String collectionId,
      @JsonKey(name: "collectionName") String collectionName,
      @JsonKey(name: "created") DateTime created,
      @JsonKey(name: "updated") DateTime updated,
      @JsonKey(name: "qty") int? qty,
      @JsonKey(name: "note") String? note,
      @JsonKey(name: "internal_order_id") String internalOrderId,
      @JsonKey(name: "order_item_id") String orderItemId});
}

/// @nodoc
class __$$InternalOrderItemDTOImplCopyWithImpl<$Res>
    extends _$InternalOrderItemDTOCopyWithImpl<$Res, _$InternalOrderItemDTOImpl>
    implements _$$InternalOrderItemDTOImplCopyWith<$Res> {
  __$$InternalOrderItemDTOImplCopyWithImpl(_$InternalOrderItemDTOImpl _value,
      $Res Function(_$InternalOrderItemDTOImpl) _then)
      : super(_value, _then);

  /// Create a copy of InternalOrderItemDTO
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
    Object? note = freezed,
    Object? internalOrderId = null,
    Object? orderItemId = null,
  }) {
    return _then(_$InternalOrderItemDTOImpl(
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
class _$InternalOrderItemDTOImpl
    with DiagnosticableTreeMixin
    implements _InternalOrderItemDTO {
  const _$InternalOrderItemDTOImpl(
      {@JsonKey(name: "id") required this.id,
      @JsonKey(name: "collectionId") required this.collectionId,
      @JsonKey(name: "collectionName") required this.collectionName,
      @JsonKey(name: "created") required this.created,
      @JsonKey(name: "updated") required this.updated,
      @JsonKey(name: "qty") this.qty,
      @JsonKey(name: "note") this.note,
      @JsonKey(name: "internal_order_id") required this.internalOrderId,
      @JsonKey(name: "order_item_id") required this.orderItemId});

  factory _$InternalOrderItemDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$InternalOrderItemDTOImplFromJson(json);

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
  @JsonKey(name: "note")
  final String? note;
  @override
  @JsonKey(name: "internal_order_id")
  final String internalOrderId;
  @override
  @JsonKey(name: "order_item_id")
  final String orderItemId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'InternalOrderItemDTO(id: $id, collectionId: $collectionId, collectionName: $collectionName, created: $created, updated: $updated, qty: $qty, note: $note, internalOrderId: $internalOrderId, orderItemId: $orderItemId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'InternalOrderItemDTO'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('collectionId', collectionId))
      ..add(DiagnosticsProperty('collectionName', collectionName))
      ..add(DiagnosticsProperty('created', created))
      ..add(DiagnosticsProperty('updated', updated))
      ..add(DiagnosticsProperty('qty', qty))
      ..add(DiagnosticsProperty('note', note))
      ..add(DiagnosticsProperty('internalOrderId', internalOrderId))
      ..add(DiagnosticsProperty('orderItemId', orderItemId));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InternalOrderItemDTOImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.collectionId, collectionId) ||
                other.collectionId == collectionId) &&
            (identical(other.collectionName, collectionName) ||
                other.collectionName == collectionName) &&
            (identical(other.created, created) || other.created == created) &&
            (identical(other.updated, updated) || other.updated == updated) &&
            (identical(other.qty, qty) || other.qty == qty) &&
            (identical(other.note, note) || other.note == note) &&
            (identical(other.internalOrderId, internalOrderId) ||
                other.internalOrderId == internalOrderId) &&
            (identical(other.orderItemId, orderItemId) ||
                other.orderItemId == orderItemId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, collectionId, collectionName,
      created, updated, qty, note, internalOrderId, orderItemId);

  /// Create a copy of InternalOrderItemDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InternalOrderItemDTOImplCopyWith<_$InternalOrderItemDTOImpl>
      get copyWith =>
          __$$InternalOrderItemDTOImplCopyWithImpl<_$InternalOrderItemDTOImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InternalOrderItemDTOImplToJson(
      this,
    );
  }
}

abstract class _InternalOrderItemDTO implements InternalOrderItemDTO {
  const factory _InternalOrderItemDTO(
      {@JsonKey(name: "id") required final String id,
      @JsonKey(name: "collectionId") required final String collectionId,
      @JsonKey(name: "collectionName") required final String collectionName,
      @JsonKey(name: "created") required final DateTime created,
      @JsonKey(name: "updated") required final DateTime updated,
      @JsonKey(name: "qty") final int? qty,
      @JsonKey(name: "note") final String? note,
      @JsonKey(name: "internal_order_id") required final String internalOrderId,
      @JsonKey(name: "order_item_id")
      required final String orderItemId}) = _$InternalOrderItemDTOImpl;

  factory _InternalOrderItemDTO.fromJson(Map<String, dynamic> json) =
      _$InternalOrderItemDTOImpl.fromJson;

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
  @JsonKey(name: "note")
  String? get note;
  @override
  @JsonKey(name: "internal_order_id")
  String get internalOrderId;
  @override
  @JsonKey(name: "order_item_id")
  String get orderItemId;

  /// Create a copy of InternalOrderItemDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InternalOrderItemDTOImplCopyWith<_$InternalOrderItemDTOImpl>
      get copyWith => throw _privateConstructorUsedError;
}

InternalOrderItemEditDTO _$InternalOrderItemEditDTOFromJson(
    Map<String, dynamic> json) {
  return _InternalOrderItemEditDTO.fromJson(json);
}

/// @nodoc
mixin _$InternalOrderItemEditDTO {
  @JsonKey(name: "qty")
  int? get qty => throw _privateConstructorUsedError;
  @JsonKey(name: "qty")
  set qty(int? value) => throw _privateConstructorUsedError;
  @JsonKey(name: "note")
  String? get note => throw _privateConstructorUsedError;
  @JsonKey(name: "note")
  set note(String? value) => throw _privateConstructorUsedError;
  @JsonKey(name: "internal_order_id")
  String? get internalOrderId => throw _privateConstructorUsedError;
  @JsonKey(name: "internal_order_id")
  set internalOrderId(String? value) => throw _privateConstructorUsedError;
  @JsonKey(name: "order_item_id")
  String? get orderItemId => throw _privateConstructorUsedError;
  @JsonKey(name: "order_item_id")
  set orderItemId(String? value) => throw _privateConstructorUsedError;

  /// Serializes this InternalOrderItemEditDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of InternalOrderItemEditDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $InternalOrderItemEditDTOCopyWith<InternalOrderItemEditDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InternalOrderItemEditDTOCopyWith<$Res> {
  factory $InternalOrderItemEditDTOCopyWith(InternalOrderItemEditDTO value,
          $Res Function(InternalOrderItemEditDTO) then) =
      _$InternalOrderItemEditDTOCopyWithImpl<$Res, InternalOrderItemEditDTO>;
  @useResult
  $Res call(
      {@JsonKey(name: "qty") int? qty,
      @JsonKey(name: "note") String? note,
      @JsonKey(name: "internal_order_id") String? internalOrderId,
      @JsonKey(name: "order_item_id") String? orderItemId});
}

/// @nodoc
class _$InternalOrderItemEditDTOCopyWithImpl<$Res,
        $Val extends InternalOrderItemEditDTO>
    implements $InternalOrderItemEditDTOCopyWith<$Res> {
  _$InternalOrderItemEditDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of InternalOrderItemEditDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? qty = freezed,
    Object? note = freezed,
    Object? internalOrderId = freezed,
    Object? orderItemId = freezed,
  }) {
    return _then(_value.copyWith(
      qty: freezed == qty
          ? _value.qty
          : qty // ignore: cast_nullable_to_non_nullable
              as int?,
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
      internalOrderId: freezed == internalOrderId
          ? _value.internalOrderId
          : internalOrderId // ignore: cast_nullable_to_non_nullable
              as String?,
      orderItemId: freezed == orderItemId
          ? _value.orderItemId
          : orderItemId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InternalOrderItemEditDTOImplCopyWith<$Res>
    implements $InternalOrderItemEditDTOCopyWith<$Res> {
  factory _$$InternalOrderItemEditDTOImplCopyWith(
          _$InternalOrderItemEditDTOImpl value,
          $Res Function(_$InternalOrderItemEditDTOImpl) then) =
      __$$InternalOrderItemEditDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "qty") int? qty,
      @JsonKey(name: "note") String? note,
      @JsonKey(name: "internal_order_id") String? internalOrderId,
      @JsonKey(name: "order_item_id") String? orderItemId});
}

/// @nodoc
class __$$InternalOrderItemEditDTOImplCopyWithImpl<$Res>
    extends _$InternalOrderItemEditDTOCopyWithImpl<$Res,
        _$InternalOrderItemEditDTOImpl>
    implements _$$InternalOrderItemEditDTOImplCopyWith<$Res> {
  __$$InternalOrderItemEditDTOImplCopyWithImpl(
      _$InternalOrderItemEditDTOImpl _value,
      $Res Function(_$InternalOrderItemEditDTOImpl) _then)
      : super(_value, _then);

  /// Create a copy of InternalOrderItemEditDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? qty = freezed,
    Object? note = freezed,
    Object? internalOrderId = freezed,
    Object? orderItemId = freezed,
  }) {
    return _then(_$InternalOrderItemEditDTOImpl(
      qty: freezed == qty
          ? _value.qty
          : qty // ignore: cast_nullable_to_non_nullable
              as int?,
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
      internalOrderId: freezed == internalOrderId
          ? _value.internalOrderId
          : internalOrderId // ignore: cast_nullable_to_non_nullable
              as String?,
      orderItemId: freezed == orderItemId
          ? _value.orderItemId
          : orderItemId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(includeIfNull: false)
class _$InternalOrderItemEditDTOImpl
    with DiagnosticableTreeMixin
    implements _InternalOrderItemEditDTO {
  _$InternalOrderItemEditDTOImpl(
      {@JsonKey(name: "qty") this.qty,
      @JsonKey(name: "note") this.note,
      @JsonKey(name: "internal_order_id") this.internalOrderId,
      @JsonKey(name: "order_item_id") this.orderItemId});

  factory _$InternalOrderItemEditDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$InternalOrderItemEditDTOImplFromJson(json);

  @override
  @JsonKey(name: "qty")
  int? qty;
  @override
  @JsonKey(name: "note")
  String? note;
  @override
  @JsonKey(name: "internal_order_id")
  String? internalOrderId;
  @override
  @JsonKey(name: "order_item_id")
  String? orderItemId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'InternalOrderItemEditDTO(qty: $qty, note: $note, internalOrderId: $internalOrderId, orderItemId: $orderItemId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'InternalOrderItemEditDTO'))
      ..add(DiagnosticsProperty('qty', qty))
      ..add(DiagnosticsProperty('note', note))
      ..add(DiagnosticsProperty('internalOrderId', internalOrderId))
      ..add(DiagnosticsProperty('orderItemId', orderItemId));
  }

  /// Create a copy of InternalOrderItemEditDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InternalOrderItemEditDTOImplCopyWith<_$InternalOrderItemEditDTOImpl>
      get copyWith => __$$InternalOrderItemEditDTOImplCopyWithImpl<
          _$InternalOrderItemEditDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InternalOrderItemEditDTOImplToJson(
      this,
    );
  }
}

abstract class _InternalOrderItemEditDTO implements InternalOrderItemEditDTO {
  factory _InternalOrderItemEditDTO(
          {@JsonKey(name: "qty") int? qty,
          @JsonKey(name: "note") String? note,
          @JsonKey(name: "internal_order_id") String? internalOrderId,
          @JsonKey(name: "order_item_id") String? orderItemId}) =
      _$InternalOrderItemEditDTOImpl;

  factory _InternalOrderItemEditDTO.fromJson(Map<String, dynamic> json) =
      _$InternalOrderItemEditDTOImpl.fromJson;

  @override
  @JsonKey(name: "qty")
  int? get qty;
  @JsonKey(name: "qty")
  set qty(int? value);
  @override
  @JsonKey(name: "note")
  String? get note;
  @JsonKey(name: "note")
  set note(String? value);
  @override
  @JsonKey(name: "internal_order_id")
  String? get internalOrderId;
  @JsonKey(name: "internal_order_id")
  set internalOrderId(String? value);
  @override
  @JsonKey(name: "order_item_id")
  String? get orderItemId;
  @JsonKey(name: "order_item_id")
  set orderItemId(String? value);

  /// Create a copy of InternalOrderItemEditDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InternalOrderItemEditDTOImplCopyWith<_$InternalOrderItemEditDTOImpl>
      get copyWith => throw _privateConstructorUsedError;
}
