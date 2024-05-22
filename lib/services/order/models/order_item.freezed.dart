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

OrderItem _$OrderItemFromJson(Map<String, dynamic> json) {
  return _OrderItem.fromJson(json);
}

/// @nodoc
mixin _$OrderItem {
  String get id => throw _privateConstructorUsedError;
  DateTime get created => throw _privateConstructorUsedError;
  DateTime get updated => throw _privateConstructorUsedError;
  @JsonKey(name: 'order_id')
  String get orderId => throw _privateConstructorUsedError;
  @JsonKey(name: 'product_variant_id')
  String get productVariantId => throw _privateConstructorUsedError;
  @JsonKey(name: 'qty')
  double get quantity => throw _privateConstructorUsedError;
  @JsonKey(name: 'price_per_unit')
  double get pricePerUnit => throw _privateConstructorUsedError;
  @JsonKey(name: 'status_id')
  String get statusId => throw _privateConstructorUsedError;
  String? get note => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderItemCopyWith<OrderItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderItemCopyWith<$Res> {
  factory $OrderItemCopyWith(OrderItem value, $Res Function(OrderItem) then) =
      _$OrderItemCopyWithImpl<$Res, OrderItem>;
  @useResult
  $Res call(
      {String id,
      DateTime created,
      DateTime updated,
      @JsonKey(name: 'order_id') String orderId,
      @JsonKey(name: 'product_variant_id') String productVariantId,
      @JsonKey(name: 'qty') double quantity,
      @JsonKey(name: 'price_per_unit') double pricePerUnit,
      @JsonKey(name: 'status_id') String statusId,
      String? note});
}

/// @nodoc
class _$OrderItemCopyWithImpl<$Res, $Val extends OrderItem>
    implements $OrderItemCopyWith<$Res> {
  _$OrderItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? created = null,
    Object? updated = null,
    Object? orderId = null,
    Object? productVariantId = null,
    Object? quantity = null,
    Object? pricePerUnit = null,
    Object? statusId = null,
    Object? note = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      created: null == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updated: null == updated
          ? _value.updated
          : updated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
      productVariantId: null == productVariantId
          ? _value.productVariantId
          : productVariantId // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as double,
      pricePerUnit: null == pricePerUnit
          ? _value.pricePerUnit
          : pricePerUnit // ignore: cast_nullable_to_non_nullable
              as double,
      statusId: null == statusId
          ? _value.statusId
          : statusId // ignore: cast_nullable_to_non_nullable
              as String,
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OrderItemImplCopyWith<$Res>
    implements $OrderItemCopyWith<$Res> {
  factory _$$OrderItemImplCopyWith(
          _$OrderItemImpl value, $Res Function(_$OrderItemImpl) then) =
      __$$OrderItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      DateTime created,
      DateTime updated,
      @JsonKey(name: 'order_id') String orderId,
      @JsonKey(name: 'product_variant_id') String productVariantId,
      @JsonKey(name: 'qty') double quantity,
      @JsonKey(name: 'price_per_unit') double pricePerUnit,
      @JsonKey(name: 'status_id') String statusId,
      String? note});
}

/// @nodoc
class __$$OrderItemImplCopyWithImpl<$Res>
    extends _$OrderItemCopyWithImpl<$Res, _$OrderItemImpl>
    implements _$$OrderItemImplCopyWith<$Res> {
  __$$OrderItemImplCopyWithImpl(
      _$OrderItemImpl _value, $Res Function(_$OrderItemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? created = null,
    Object? updated = null,
    Object? orderId = null,
    Object? productVariantId = null,
    Object? quantity = null,
    Object? pricePerUnit = null,
    Object? statusId = null,
    Object? note = freezed,
  }) {
    return _then(_$OrderItemImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      created: null == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updated: null == updated
          ? _value.updated
          : updated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
      productVariantId: null == productVariantId
          ? _value.productVariantId
          : productVariantId // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as double,
      pricePerUnit: null == pricePerUnit
          ? _value.pricePerUnit
          : pricePerUnit // ignore: cast_nullable_to_non_nullable
              as double,
      statusId: null == statusId
          ? _value.statusId
          : statusId // ignore: cast_nullable_to_non_nullable
              as String,
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OrderItemImpl with DiagnosticableTreeMixin implements _OrderItem {
  const _$OrderItemImpl(
      {required this.id,
      required this.created,
      required this.updated,
      @JsonKey(name: 'order_id') required this.orderId,
      @JsonKey(name: 'product_variant_id') required this.productVariantId,
      @JsonKey(name: 'qty') this.quantity = 0,
      @JsonKey(name: 'price_per_unit') this.pricePerUnit = 0,
      @JsonKey(name: 'status_id') required this.statusId,
      this.note});

  factory _$OrderItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderItemImplFromJson(json);

  @override
  final String id;
  @override
  final DateTime created;
  @override
  final DateTime updated;
  @override
  @JsonKey(name: 'order_id')
  final String orderId;
  @override
  @JsonKey(name: 'product_variant_id')
  final String productVariantId;
  @override
  @JsonKey(name: 'qty')
  final double quantity;
  @override
  @JsonKey(name: 'price_per_unit')
  final double pricePerUnit;
  @override
  @JsonKey(name: 'status_id')
  final String statusId;
  @override
  final String? note;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'OrderItem(id: $id, created: $created, updated: $updated, orderId: $orderId, productVariantId: $productVariantId, quantity: $quantity, pricePerUnit: $pricePerUnit, statusId: $statusId, note: $note)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'OrderItem'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('created', created))
      ..add(DiagnosticsProperty('updated', updated))
      ..add(DiagnosticsProperty('orderId', orderId))
      ..add(DiagnosticsProperty('productVariantId', productVariantId))
      ..add(DiagnosticsProperty('quantity', quantity))
      ..add(DiagnosticsProperty('pricePerUnit', pricePerUnit))
      ..add(DiagnosticsProperty('statusId', statusId))
      ..add(DiagnosticsProperty('note', note));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderItemImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.created, created) || other.created == created) &&
            (identical(other.updated, updated) || other.updated == updated) &&
            (identical(other.orderId, orderId) || other.orderId == orderId) &&
            (identical(other.productVariantId, productVariantId) ||
                other.productVariantId == productVariantId) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.pricePerUnit, pricePerUnit) ||
                other.pricePerUnit == pricePerUnit) &&
            (identical(other.statusId, statusId) ||
                other.statusId == statusId) &&
            (identical(other.note, note) || other.note == note));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, created, updated, orderId,
      productVariantId, quantity, pricePerUnit, statusId, note);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderItemImplCopyWith<_$OrderItemImpl> get copyWith =>
      __$$OrderItemImplCopyWithImpl<_$OrderItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderItemImplToJson(
      this,
    );
  }
}

abstract class _OrderItem implements OrderItem {
  const factory _OrderItem(
      {required final String id,
      required final DateTime created,
      required final DateTime updated,
      @JsonKey(name: 'order_id') required final String orderId,
      @JsonKey(name: 'product_variant_id')
      required final String productVariantId,
      @JsonKey(name: 'qty') final double quantity,
      @JsonKey(name: 'price_per_unit') final double pricePerUnit,
      @JsonKey(name: 'status_id') required final String statusId,
      final String? note}) = _$OrderItemImpl;

  factory _OrderItem.fromJson(Map<String, dynamic> json) =
      _$OrderItemImpl.fromJson;

  @override
  String get id;
  @override
  DateTime get created;
  @override
  DateTime get updated;
  @override
  @JsonKey(name: 'order_id')
  String get orderId;
  @override
  @JsonKey(name: 'product_variant_id')
  String get productVariantId;
  @override
  @JsonKey(name: 'qty')
  double get quantity;
  @override
  @JsonKey(name: 'price_per_unit')
  double get pricePerUnit;
  @override
  @JsonKey(name: 'status_id')
  String get statusId;
  @override
  String? get note;
  @override
  @JsonKey(ignore: true)
  _$$OrderItemImplCopyWith<_$OrderItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
