// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OrderItemDTO _$OrderItemDTOFromJson(Map<String, dynamic> json) {
  return _OrderItemDTO.fromJson(json);
}

/// @nodoc
mixin _$OrderItemDTO {
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
  @JsonKey(name: "ordered_qty")
  int? get orderedQty => throw _privateConstructorUsedError;
  @JsonKey(name: "received_qty")
  int? get receivedQty => throw _privateConstructorUsedError;
  @JsonKey(name: "unit_price")
  int get unitPrice => throw _privateConstructorUsedError;
  @JsonKey(name: "note")
  String? get note => throw _privateConstructorUsedError;
  @JsonKey(name: "order_id")
  String get orderId => throw _privateConstructorUsedError;
  @JsonKey(name: "product_category_id")
  String get productCategoryId => throw _privateConstructorUsedError;

  /// Serializes this OrderItemDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OrderItemDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OrderItemDTOCopyWith<OrderItemDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderItemDTOCopyWith<$Res> {
  factory $OrderItemDTOCopyWith(
          OrderItemDTO value, $Res Function(OrderItemDTO) then) =
      _$OrderItemDTOCopyWithImpl<$Res, OrderItemDTO>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") String id,
      @JsonKey(name: "collectionId") String collectionId,
      @JsonKey(name: "collectionName") String collectionName,
      @JsonKey(name: "created") DateTime created,
      @JsonKey(name: "updated") DateTime updated,
      @JsonKey(name: "ordered_qty") int? orderedQty,
      @JsonKey(name: "received_qty") int? receivedQty,
      @JsonKey(name: "unit_price") int unitPrice,
      @JsonKey(name: "note") String? note,
      @JsonKey(name: "order_id") String orderId,
      @JsonKey(name: "product_category_id") String productCategoryId});
}

/// @nodoc
class _$OrderItemDTOCopyWithImpl<$Res, $Val extends OrderItemDTO>
    implements $OrderItemDTOCopyWith<$Res> {
  _$OrderItemDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OrderItemDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? collectionId = null,
    Object? collectionName = null,
    Object? created = null,
    Object? updated = null,
    Object? orderedQty = freezed,
    Object? receivedQty = freezed,
    Object? unitPrice = null,
    Object? note = freezed,
    Object? orderId = null,
    Object? productCategoryId = null,
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
      orderedQty: freezed == orderedQty
          ? _value.orderedQty
          : orderedQty // ignore: cast_nullable_to_non_nullable
              as int?,
      receivedQty: freezed == receivedQty
          ? _value.receivedQty
          : receivedQty // ignore: cast_nullable_to_non_nullable
              as int?,
      unitPrice: null == unitPrice
          ? _value.unitPrice
          : unitPrice // ignore: cast_nullable_to_non_nullable
              as int,
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
      productCategoryId: null == productCategoryId
          ? _value.productCategoryId
          : productCategoryId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OrderItemDTOImplCopyWith<$Res>
    implements $OrderItemDTOCopyWith<$Res> {
  factory _$$OrderItemDTOImplCopyWith(
          _$OrderItemDTOImpl value, $Res Function(_$OrderItemDTOImpl) then) =
      __$$OrderItemDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") String id,
      @JsonKey(name: "collectionId") String collectionId,
      @JsonKey(name: "collectionName") String collectionName,
      @JsonKey(name: "created") DateTime created,
      @JsonKey(name: "updated") DateTime updated,
      @JsonKey(name: "ordered_qty") int? orderedQty,
      @JsonKey(name: "received_qty") int? receivedQty,
      @JsonKey(name: "unit_price") int unitPrice,
      @JsonKey(name: "note") String? note,
      @JsonKey(name: "order_id") String orderId,
      @JsonKey(name: "product_category_id") String productCategoryId});
}

/// @nodoc
class __$$OrderItemDTOImplCopyWithImpl<$Res>
    extends _$OrderItemDTOCopyWithImpl<$Res, _$OrderItemDTOImpl>
    implements _$$OrderItemDTOImplCopyWith<$Res> {
  __$$OrderItemDTOImplCopyWithImpl(
      _$OrderItemDTOImpl _value, $Res Function(_$OrderItemDTOImpl) _then)
      : super(_value, _then);

  /// Create a copy of OrderItemDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? collectionId = null,
    Object? collectionName = null,
    Object? created = null,
    Object? updated = null,
    Object? orderedQty = freezed,
    Object? receivedQty = freezed,
    Object? unitPrice = null,
    Object? note = freezed,
    Object? orderId = null,
    Object? productCategoryId = null,
  }) {
    return _then(_$OrderItemDTOImpl(
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
      orderedQty: freezed == orderedQty
          ? _value.orderedQty
          : orderedQty // ignore: cast_nullable_to_non_nullable
              as int?,
      receivedQty: freezed == receivedQty
          ? _value.receivedQty
          : receivedQty // ignore: cast_nullable_to_non_nullable
              as int?,
      unitPrice: null == unitPrice
          ? _value.unitPrice
          : unitPrice // ignore: cast_nullable_to_non_nullable
              as int,
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
      productCategoryId: null == productCategoryId
          ? _value.productCategoryId
          : productCategoryId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OrderItemDTOImpl with DiagnosticableTreeMixin implements _OrderItemDTO {
  const _$OrderItemDTOImpl(
      {@JsonKey(name: "id") required this.id,
      @JsonKey(name: "collectionId") required this.collectionId,
      @JsonKey(name: "collectionName") required this.collectionName,
      @JsonKey(name: "created") required this.created,
      @JsonKey(name: "updated") required this.updated,
      @JsonKey(name: "ordered_qty") this.orderedQty,
      @JsonKey(name: "received_qty") this.receivedQty,
      @JsonKey(name: "unit_price") required this.unitPrice,
      @JsonKey(name: "note") this.note,
      @JsonKey(name: "order_id") required this.orderId,
      @JsonKey(name: "product_category_id") required this.productCategoryId});

  factory _$OrderItemDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderItemDTOImplFromJson(json);

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
  @JsonKey(name: "ordered_qty")
  final int? orderedQty;
  @override
  @JsonKey(name: "received_qty")
  final int? receivedQty;
  @override
  @JsonKey(name: "unit_price")
  final int unitPrice;
  @override
  @JsonKey(name: "note")
  final String? note;
  @override
  @JsonKey(name: "order_id")
  final String orderId;
  @override
  @JsonKey(name: "product_category_id")
  final String productCategoryId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'OrderItemDTO(id: $id, collectionId: $collectionId, collectionName: $collectionName, created: $created, updated: $updated, orderedQty: $orderedQty, receivedQty: $receivedQty, unitPrice: $unitPrice, note: $note, orderId: $orderId, productCategoryId: $productCategoryId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'OrderItemDTO'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('collectionId', collectionId))
      ..add(DiagnosticsProperty('collectionName', collectionName))
      ..add(DiagnosticsProperty('created', created))
      ..add(DiagnosticsProperty('updated', updated))
      ..add(DiagnosticsProperty('orderedQty', orderedQty))
      ..add(DiagnosticsProperty('receivedQty', receivedQty))
      ..add(DiagnosticsProperty('unitPrice', unitPrice))
      ..add(DiagnosticsProperty('note', note))
      ..add(DiagnosticsProperty('orderId', orderId))
      ..add(DiagnosticsProperty('productCategoryId', productCategoryId));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderItemDTOImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.collectionId, collectionId) ||
                other.collectionId == collectionId) &&
            (identical(other.collectionName, collectionName) ||
                other.collectionName == collectionName) &&
            (identical(other.created, created) || other.created == created) &&
            (identical(other.updated, updated) || other.updated == updated) &&
            (identical(other.orderedQty, orderedQty) ||
                other.orderedQty == orderedQty) &&
            (identical(other.receivedQty, receivedQty) ||
                other.receivedQty == receivedQty) &&
            (identical(other.unitPrice, unitPrice) ||
                other.unitPrice == unitPrice) &&
            (identical(other.note, note) || other.note == note) &&
            (identical(other.orderId, orderId) || other.orderId == orderId) &&
            (identical(other.productCategoryId, productCategoryId) ||
                other.productCategoryId == productCategoryId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      collectionId,
      collectionName,
      created,
      updated,
      orderedQty,
      receivedQty,
      unitPrice,
      note,
      orderId,
      productCategoryId);

  /// Create a copy of OrderItemDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderItemDTOImplCopyWith<_$OrderItemDTOImpl> get copyWith =>
      __$$OrderItemDTOImplCopyWithImpl<_$OrderItemDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderItemDTOImplToJson(
      this,
    );
  }
}

abstract class _OrderItemDTO implements OrderItemDTO {
  const factory _OrderItemDTO(
      {@JsonKey(name: "id") required final String id,
      @JsonKey(name: "collectionId") required final String collectionId,
      @JsonKey(name: "collectionName") required final String collectionName,
      @JsonKey(name: "created") required final DateTime created,
      @JsonKey(name: "updated") required final DateTime updated,
      @JsonKey(name: "ordered_qty") final int? orderedQty,
      @JsonKey(name: "received_qty") final int? receivedQty,
      @JsonKey(name: "unit_price") required final int unitPrice,
      @JsonKey(name: "note") final String? note,
      @JsonKey(name: "order_id") required final String orderId,
      @JsonKey(name: "product_category_id")
      required final String productCategoryId}) = _$OrderItemDTOImpl;

  factory _OrderItemDTO.fromJson(Map<String, dynamic> json) =
      _$OrderItemDTOImpl.fromJson;

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
  @JsonKey(name: "ordered_qty")
  int? get orderedQty;
  @override
  @JsonKey(name: "received_qty")
  int? get receivedQty;
  @override
  @JsonKey(name: "unit_price")
  int get unitPrice;
  @override
  @JsonKey(name: "note")
  String? get note;
  @override
  @JsonKey(name: "order_id")
  String get orderId;
  @override
  @JsonKey(name: "product_category_id")
  String get productCategoryId;

  /// Create a copy of OrderItemDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OrderItemDTOImplCopyWith<_$OrderItemDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

OrderItemEditDTO _$OrderItemEditDTOFromJson(Map<String, dynamic> json) {
  return _OrderItemEditDTO.fromJson(json);
}

/// @nodoc
mixin _$OrderItemEditDTO {
  @JsonKey(name: "ordered_qty")
  int? get orderedQty => throw _privateConstructorUsedError;
  @JsonKey(name: "ordered_qty")
  set orderedQty(int? value) => throw _privateConstructorUsedError;
  @JsonKey(name: "received_qty")
  int? get receivedQty => throw _privateConstructorUsedError;
  @JsonKey(name: "received_qty")
  set receivedQty(int? value) => throw _privateConstructorUsedError;
  @JsonKey(name: "unit_price")
  int? get unitPrice => throw _privateConstructorUsedError;
  @JsonKey(name: "unit_price")
  set unitPrice(int? value) => throw _privateConstructorUsedError;
  @JsonKey(name: "note")
  String? get note => throw _privateConstructorUsedError;
  @JsonKey(name: "note")
  set note(String? value) => throw _privateConstructorUsedError;
  @JsonKey(name: "order_id")
  String? get orderId => throw _privateConstructorUsedError;
  @JsonKey(name: "order_id")
  set orderId(String? value) => throw _privateConstructorUsedError;
  @JsonKey(name: "product_category_id")
  String? get productCategoryId => throw _privateConstructorUsedError;
  @JsonKey(name: "product_category_id")
  set productCategoryId(String? value) => throw _privateConstructorUsedError;

  /// Serializes this OrderItemEditDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OrderItemEditDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OrderItemEditDTOCopyWith<OrderItemEditDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderItemEditDTOCopyWith<$Res> {
  factory $OrderItemEditDTOCopyWith(
          OrderItemEditDTO value, $Res Function(OrderItemEditDTO) then) =
      _$OrderItemEditDTOCopyWithImpl<$Res, OrderItemEditDTO>;
  @useResult
  $Res call(
      {@JsonKey(name: "ordered_qty") int? orderedQty,
      @JsonKey(name: "received_qty") int? receivedQty,
      @JsonKey(name: "unit_price") int? unitPrice,
      @JsonKey(name: "note") String? note,
      @JsonKey(name: "order_id") String? orderId,
      @JsonKey(name: "product_category_id") String? productCategoryId});
}

/// @nodoc
class _$OrderItemEditDTOCopyWithImpl<$Res, $Val extends OrderItemEditDTO>
    implements $OrderItemEditDTOCopyWith<$Res> {
  _$OrderItemEditDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OrderItemEditDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderedQty = freezed,
    Object? receivedQty = freezed,
    Object? unitPrice = freezed,
    Object? note = freezed,
    Object? orderId = freezed,
    Object? productCategoryId = freezed,
  }) {
    return _then(_value.copyWith(
      orderedQty: freezed == orderedQty
          ? _value.orderedQty
          : orderedQty // ignore: cast_nullable_to_non_nullable
              as int?,
      receivedQty: freezed == receivedQty
          ? _value.receivedQty
          : receivedQty // ignore: cast_nullable_to_non_nullable
              as int?,
      unitPrice: freezed == unitPrice
          ? _value.unitPrice
          : unitPrice // ignore: cast_nullable_to_non_nullable
              as int?,
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
      orderId: freezed == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String?,
      productCategoryId: freezed == productCategoryId
          ? _value.productCategoryId
          : productCategoryId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OrderItemEditDTOImplCopyWith<$Res>
    implements $OrderItemEditDTOCopyWith<$Res> {
  factory _$$OrderItemEditDTOImplCopyWith(_$OrderItemEditDTOImpl value,
          $Res Function(_$OrderItemEditDTOImpl) then) =
      __$$OrderItemEditDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "ordered_qty") int? orderedQty,
      @JsonKey(name: "received_qty") int? receivedQty,
      @JsonKey(name: "unit_price") int? unitPrice,
      @JsonKey(name: "note") String? note,
      @JsonKey(name: "order_id") String? orderId,
      @JsonKey(name: "product_category_id") String? productCategoryId});
}

/// @nodoc
class __$$OrderItemEditDTOImplCopyWithImpl<$Res>
    extends _$OrderItemEditDTOCopyWithImpl<$Res, _$OrderItemEditDTOImpl>
    implements _$$OrderItemEditDTOImplCopyWith<$Res> {
  __$$OrderItemEditDTOImplCopyWithImpl(_$OrderItemEditDTOImpl _value,
      $Res Function(_$OrderItemEditDTOImpl) _then)
      : super(_value, _then);

  /// Create a copy of OrderItemEditDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderedQty = freezed,
    Object? receivedQty = freezed,
    Object? unitPrice = freezed,
    Object? note = freezed,
    Object? orderId = freezed,
    Object? productCategoryId = freezed,
  }) {
    return _then(_$OrderItemEditDTOImpl(
      orderedQty: freezed == orderedQty
          ? _value.orderedQty
          : orderedQty // ignore: cast_nullable_to_non_nullable
              as int?,
      receivedQty: freezed == receivedQty
          ? _value.receivedQty
          : receivedQty // ignore: cast_nullable_to_non_nullable
              as int?,
      unitPrice: freezed == unitPrice
          ? _value.unitPrice
          : unitPrice // ignore: cast_nullable_to_non_nullable
              as int?,
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
      orderId: freezed == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String?,
      productCategoryId: freezed == productCategoryId
          ? _value.productCategoryId
          : productCategoryId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(includeIfNull: false)
class _$OrderItemEditDTOImpl
    with DiagnosticableTreeMixin
    implements _OrderItemEditDTO {
  _$OrderItemEditDTOImpl(
      {@JsonKey(name: "ordered_qty") this.orderedQty,
      @JsonKey(name: "received_qty") this.receivedQty,
      @JsonKey(name: "unit_price") this.unitPrice,
      @JsonKey(name: "note") this.note,
      @JsonKey(name: "order_id") this.orderId,
      @JsonKey(name: "product_category_id") this.productCategoryId});

  factory _$OrderItemEditDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderItemEditDTOImplFromJson(json);

  @override
  @JsonKey(name: "ordered_qty")
  int? orderedQty;
  @override
  @JsonKey(name: "received_qty")
  int? receivedQty;
  @override
  @JsonKey(name: "unit_price")
  int? unitPrice;
  @override
  @JsonKey(name: "note")
  String? note;
  @override
  @JsonKey(name: "order_id")
  String? orderId;
  @override
  @JsonKey(name: "product_category_id")
  String? productCategoryId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'OrderItemEditDTO(orderedQty: $orderedQty, receivedQty: $receivedQty, unitPrice: $unitPrice, note: $note, orderId: $orderId, productCategoryId: $productCategoryId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'OrderItemEditDTO'))
      ..add(DiagnosticsProperty('orderedQty', orderedQty))
      ..add(DiagnosticsProperty('receivedQty', receivedQty))
      ..add(DiagnosticsProperty('unitPrice', unitPrice))
      ..add(DiagnosticsProperty('note', note))
      ..add(DiagnosticsProperty('orderId', orderId))
      ..add(DiagnosticsProperty('productCategoryId', productCategoryId));
  }

  /// Create a copy of OrderItemEditDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderItemEditDTOImplCopyWith<_$OrderItemEditDTOImpl> get copyWith =>
      __$$OrderItemEditDTOImplCopyWithImpl<_$OrderItemEditDTOImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderItemEditDTOImplToJson(
      this,
    );
  }
}

abstract class _OrderItemEditDTO implements OrderItemEditDTO {
  factory _OrderItemEditDTO(
          {@JsonKey(name: "ordered_qty") int? orderedQty,
          @JsonKey(name: "received_qty") int? receivedQty,
          @JsonKey(name: "unit_price") int? unitPrice,
          @JsonKey(name: "note") String? note,
          @JsonKey(name: "order_id") String? orderId,
          @JsonKey(name: "product_category_id") String? productCategoryId}) =
      _$OrderItemEditDTOImpl;

  factory _OrderItemEditDTO.fromJson(Map<String, dynamic> json) =
      _$OrderItemEditDTOImpl.fromJson;

  @override
  @JsonKey(name: "ordered_qty")
  int? get orderedQty;
  @JsonKey(name: "ordered_qty")
  set orderedQty(int? value);
  @override
  @JsonKey(name: "received_qty")
  int? get receivedQty;
  @JsonKey(name: "received_qty")
  set receivedQty(int? value);
  @override
  @JsonKey(name: "unit_price")
  int? get unitPrice;
  @JsonKey(name: "unit_price")
  set unitPrice(int? value);
  @override
  @JsonKey(name: "note")
  String? get note;
  @JsonKey(name: "note")
  set note(String? value);
  @override
  @JsonKey(name: "order_id")
  String? get orderId;
  @JsonKey(name: "order_id")
  set orderId(String? value);
  @override
  @JsonKey(name: "product_category_id")
  String? get productCategoryId;
  @JsonKey(name: "product_category_id")
  set productCategoryId(String? value);

  /// Create a copy of OrderItemEditDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OrderItemEditDTOImplCopyWith<_$OrderItemEditDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
