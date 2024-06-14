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
  @JsonKey(name: 'order_id')
  String get orderId => throw _privateConstructorUsedError;
  @JsonKey(name: 'product_variant_id')
  String get productVariantId => throw _privateConstructorUsedError;
  @JsonKey(name: 'ordered_qty')
  double get orderedQuantity => throw _privateConstructorUsedError;
  @JsonKey(name: 'received_qty')
  double get receivedQuantity => throw _privateConstructorUsedError;
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
      {@JsonKey(name: 'order_id') String orderId,
      @JsonKey(name: 'product_variant_id') String productVariantId,
      @JsonKey(name: 'ordered_qty') double orderedQuantity,
      @JsonKey(name: 'received_qty') double receivedQuantity,
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
    Object? orderId = null,
    Object? productVariantId = null,
    Object? orderedQuantity = null,
    Object? receivedQuantity = null,
    Object? pricePerUnit = null,
    Object? statusId = null,
    Object? note = freezed,
  }) {
    return _then(_value.copyWith(
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
      productVariantId: null == productVariantId
          ? _value.productVariantId
          : productVariantId // ignore: cast_nullable_to_non_nullable
              as String,
      orderedQuantity: null == orderedQuantity
          ? _value.orderedQuantity
          : orderedQuantity // ignore: cast_nullable_to_non_nullable
              as double,
      receivedQuantity: null == receivedQuantity
          ? _value.receivedQuantity
          : receivedQuantity // ignore: cast_nullable_to_non_nullable
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
      {@JsonKey(name: 'order_id') String orderId,
      @JsonKey(name: 'product_variant_id') String productVariantId,
      @JsonKey(name: 'ordered_qty') double orderedQuantity,
      @JsonKey(name: 'received_qty') double receivedQuantity,
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
    Object? orderId = null,
    Object? productVariantId = null,
    Object? orderedQuantity = null,
    Object? receivedQuantity = null,
    Object? pricePerUnit = null,
    Object? statusId = null,
    Object? note = freezed,
  }) {
    return _then(_$OrderItemImpl(
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
      productVariantId: null == productVariantId
          ? _value.productVariantId
          : productVariantId // ignore: cast_nullable_to_non_nullable
              as String,
      orderedQuantity: null == orderedQuantity
          ? _value.orderedQuantity
          : orderedQuantity // ignore: cast_nullable_to_non_nullable
              as double,
      receivedQuantity: null == receivedQuantity
          ? _value.receivedQuantity
          : receivedQuantity // ignore: cast_nullable_to_non_nullable
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
      {@JsonKey(name: 'order_id') required this.orderId,
      @JsonKey(name: 'product_variant_id') required this.productVariantId,
      @JsonKey(name: 'ordered_qty') this.orderedQuantity = 0,
      @JsonKey(name: 'received_qty') this.receivedQuantity = 0,
      @JsonKey(name: 'price_per_unit') this.pricePerUnit = 0,
      @JsonKey(name: 'status_id') required this.statusId,
      this.note});

  factory _$OrderItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderItemImplFromJson(json);

  @override
  @JsonKey(name: 'order_id')
  final String orderId;
  @override
  @JsonKey(name: 'product_variant_id')
  final String productVariantId;
  @override
  @JsonKey(name: 'ordered_qty')
  final double orderedQuantity;
  @override
  @JsonKey(name: 'received_qty')
  final double receivedQuantity;
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
    return 'OrderItem(orderId: $orderId, productVariantId: $productVariantId, orderedQuantity: $orderedQuantity, receivedQuantity: $receivedQuantity, pricePerUnit: $pricePerUnit, statusId: $statusId, note: $note)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'OrderItem'))
      ..add(DiagnosticsProperty('orderId', orderId))
      ..add(DiagnosticsProperty('productVariantId', productVariantId))
      ..add(DiagnosticsProperty('orderedQuantity', orderedQuantity))
      ..add(DiagnosticsProperty('receivedQuantity', receivedQuantity))
      ..add(DiagnosticsProperty('pricePerUnit', pricePerUnit))
      ..add(DiagnosticsProperty('statusId', statusId))
      ..add(DiagnosticsProperty('note', note));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderItemImpl &&
            (identical(other.orderId, orderId) || other.orderId == orderId) &&
            (identical(other.productVariantId, productVariantId) ||
                other.productVariantId == productVariantId) &&
            (identical(other.orderedQuantity, orderedQuantity) ||
                other.orderedQuantity == orderedQuantity) &&
            (identical(other.receivedQuantity, receivedQuantity) ||
                other.receivedQuantity == receivedQuantity) &&
            (identical(other.pricePerUnit, pricePerUnit) ||
                other.pricePerUnit == pricePerUnit) &&
            (identical(other.statusId, statusId) ||
                other.statusId == statusId) &&
            (identical(other.note, note) || other.note == note));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, orderId, productVariantId,
      orderedQuantity, receivedQuantity, pricePerUnit, statusId, note);

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
      {@JsonKey(name: 'order_id') required final String orderId,
      @JsonKey(name: 'product_variant_id')
      required final String productVariantId,
      @JsonKey(name: 'ordered_qty') final double orderedQuantity,
      @JsonKey(name: 'received_qty') final double receivedQuantity,
      @JsonKey(name: 'price_per_unit') final double pricePerUnit,
      @JsonKey(name: 'status_id') required final String statusId,
      final String? note}) = _$OrderItemImpl;

  factory _OrderItem.fromJson(Map<String, dynamic> json) =
      _$OrderItemImpl.fromJson;

  @override
  @JsonKey(name: 'order_id')
  String get orderId;
  @override
  @JsonKey(name: 'product_variant_id')
  String get productVariantId;
  @override
  @JsonKey(name: 'ordered_qty')
  double get orderedQuantity;
  @override
  @JsonKey(name: 'received_qty')
  double get receivedQuantity;
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

OrderItemCreation _$OrderItemCreationFromJson(Map<String, dynamic> json) {
  return _OrderItemCreation.fromJson(json);
}

/// @nodoc
mixin _$OrderItemCreation {
  /// Must be a valid ID of an existing order.
  @JsonKey(name: 'order_id')
  String? get orderId => throw _privateConstructorUsedError;

  /// Must be a valid ID of an existing order.
  @JsonKey(name: 'order_id')
  set orderId(String? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'product_variant_id')
  String get productVariantId => throw _privateConstructorUsedError;
  @JsonKey(name: 'product_variant_id')
  set productVariantId(String value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'ordered_qty')
  double get orderedQuantity => throw _privateConstructorUsedError;
  @JsonKey(name: 'ordered_qty')
  set orderedQuantity(double value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'received_qty')
  double get receivedQuantity => throw _privateConstructorUsedError;
  @JsonKey(name: 'received_qty')
  set receivedQuantity(double value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'price_per_unit')
  double get pricePerUnit => throw _privateConstructorUsedError;
  @JsonKey(name: 'price_per_unit')
  set pricePerUnit(double value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'status_id')
  String get statusId => throw _privateConstructorUsedError;
  @JsonKey(name: 'status_id')
  set statusId(String value) => throw _privateConstructorUsedError;
  String? get note => throw _privateConstructorUsedError;
  set note(String? value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderItemCreationCopyWith<OrderItemCreation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderItemCreationCopyWith<$Res> {
  factory $OrderItemCreationCopyWith(
          OrderItemCreation value, $Res Function(OrderItemCreation) then) =
      _$OrderItemCreationCopyWithImpl<$Res, OrderItemCreation>;
  @useResult
  $Res call(
      {@JsonKey(name: 'order_id') String? orderId,
      @JsonKey(name: 'product_variant_id') String productVariantId,
      @JsonKey(name: 'ordered_qty') double orderedQuantity,
      @JsonKey(name: 'received_qty') double receivedQuantity,
      @JsonKey(name: 'price_per_unit') double pricePerUnit,
      @JsonKey(name: 'status_id') String statusId,
      String? note});
}

/// @nodoc
class _$OrderItemCreationCopyWithImpl<$Res, $Val extends OrderItemCreation>
    implements $OrderItemCreationCopyWith<$Res> {
  _$OrderItemCreationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderId = freezed,
    Object? productVariantId = null,
    Object? orderedQuantity = null,
    Object? receivedQuantity = null,
    Object? pricePerUnit = null,
    Object? statusId = null,
    Object? note = freezed,
  }) {
    return _then(_value.copyWith(
      orderId: freezed == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String?,
      productVariantId: null == productVariantId
          ? _value.productVariantId
          : productVariantId // ignore: cast_nullable_to_non_nullable
              as String,
      orderedQuantity: null == orderedQuantity
          ? _value.orderedQuantity
          : orderedQuantity // ignore: cast_nullable_to_non_nullable
              as double,
      receivedQuantity: null == receivedQuantity
          ? _value.receivedQuantity
          : receivedQuantity // ignore: cast_nullable_to_non_nullable
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
abstract class _$$OrderItemCreationImplCopyWith<$Res>
    implements $OrderItemCreationCopyWith<$Res> {
  factory _$$OrderItemCreationImplCopyWith(_$OrderItemCreationImpl value,
          $Res Function(_$OrderItemCreationImpl) then) =
      __$$OrderItemCreationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'order_id') String? orderId,
      @JsonKey(name: 'product_variant_id') String productVariantId,
      @JsonKey(name: 'ordered_qty') double orderedQuantity,
      @JsonKey(name: 'received_qty') double receivedQuantity,
      @JsonKey(name: 'price_per_unit') double pricePerUnit,
      @JsonKey(name: 'status_id') String statusId,
      String? note});
}

/// @nodoc
class __$$OrderItemCreationImplCopyWithImpl<$Res>
    extends _$OrderItemCreationCopyWithImpl<$Res, _$OrderItemCreationImpl>
    implements _$$OrderItemCreationImplCopyWith<$Res> {
  __$$OrderItemCreationImplCopyWithImpl(_$OrderItemCreationImpl _value,
      $Res Function(_$OrderItemCreationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderId = freezed,
    Object? productVariantId = null,
    Object? orderedQuantity = null,
    Object? receivedQuantity = null,
    Object? pricePerUnit = null,
    Object? statusId = null,
    Object? note = freezed,
  }) {
    return _then(_$OrderItemCreationImpl(
      orderId: freezed == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String?,
      productVariantId: null == productVariantId
          ? _value.productVariantId
          : productVariantId // ignore: cast_nullable_to_non_nullable
              as String,
      orderedQuantity: null == orderedQuantity
          ? _value.orderedQuantity
          : orderedQuantity // ignore: cast_nullable_to_non_nullable
              as double,
      receivedQuantity: null == receivedQuantity
          ? _value.receivedQuantity
          : receivedQuantity // ignore: cast_nullable_to_non_nullable
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
class _$OrderItemCreationImpl
    with DiagnosticableTreeMixin
    implements _OrderItemCreation {
  _$OrderItemCreationImpl(
      {@JsonKey(name: 'order_id') this.orderId,
      @JsonKey(name: 'product_variant_id') required this.productVariantId,
      @JsonKey(name: 'ordered_qty') this.orderedQuantity = 0,
      @JsonKey(name: 'received_qty') this.receivedQuantity = 0,
      @JsonKey(name: 'price_per_unit') this.pricePerUnit = 0,
      @JsonKey(name: 'status_id') required this.statusId,
      this.note});

  factory _$OrderItemCreationImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderItemCreationImplFromJson(json);

  /// Must be a valid ID of an existing order.
  @override
  @JsonKey(name: 'order_id')
  String? orderId;
  @override
  @JsonKey(name: 'product_variant_id')
  String productVariantId;
  @override
  @JsonKey(name: 'ordered_qty')
  double orderedQuantity;
  @override
  @JsonKey(name: 'received_qty')
  double receivedQuantity;
  @override
  @JsonKey(name: 'price_per_unit')
  double pricePerUnit;
  @override
  @JsonKey(name: 'status_id')
  String statusId;
  @override
  String? note;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'OrderItemCreation(orderId: $orderId, productVariantId: $productVariantId, orderedQuantity: $orderedQuantity, receivedQuantity: $receivedQuantity, pricePerUnit: $pricePerUnit, statusId: $statusId, note: $note)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'OrderItemCreation'))
      ..add(DiagnosticsProperty('orderId', orderId))
      ..add(DiagnosticsProperty('productVariantId', productVariantId))
      ..add(DiagnosticsProperty('orderedQuantity', orderedQuantity))
      ..add(DiagnosticsProperty('receivedQuantity', receivedQuantity))
      ..add(DiagnosticsProperty('pricePerUnit', pricePerUnit))
      ..add(DiagnosticsProperty('statusId', statusId))
      ..add(DiagnosticsProperty('note', note));
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderItemCreationImplCopyWith<_$OrderItemCreationImpl> get copyWith =>
      __$$OrderItemCreationImplCopyWithImpl<_$OrderItemCreationImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderItemCreationImplToJson(
      this,
    );
  }
}

abstract class _OrderItemCreation implements OrderItemCreation {
  factory _OrderItemCreation(
      {@JsonKey(name: 'order_id') String? orderId,
      @JsonKey(name: 'product_variant_id') required String productVariantId,
      @JsonKey(name: 'ordered_qty') double orderedQuantity,
      @JsonKey(name: 'received_qty') double receivedQuantity,
      @JsonKey(name: 'price_per_unit') double pricePerUnit,
      @JsonKey(name: 'status_id') required String statusId,
      String? note}) = _$OrderItemCreationImpl;

  factory _OrderItemCreation.fromJson(Map<String, dynamic> json) =
      _$OrderItemCreationImpl.fromJson;

  @override

  /// Must be a valid ID of an existing order.
  @JsonKey(name: 'order_id')
  String? get orderId;

  /// Must be a valid ID of an existing order.
  @JsonKey(name: 'order_id')
  set orderId(String? value);
  @override
  @JsonKey(name: 'product_variant_id')
  String get productVariantId;
  @JsonKey(name: 'product_variant_id')
  set productVariantId(String value);
  @override
  @JsonKey(name: 'ordered_qty')
  double get orderedQuantity;
  @JsonKey(name: 'ordered_qty')
  set orderedQuantity(double value);
  @override
  @JsonKey(name: 'received_qty')
  double get receivedQuantity;
  @JsonKey(name: 'received_qty')
  set receivedQuantity(double value);
  @override
  @JsonKey(name: 'price_per_unit')
  double get pricePerUnit;
  @JsonKey(name: 'price_per_unit')
  set pricePerUnit(double value);
  @override
  @JsonKey(name: 'status_id')
  String get statusId;
  @JsonKey(name: 'status_id')
  set statusId(String value);
  @override
  String? get note;
  set note(String? value);
  @override
  @JsonKey(ignore: true)
  _$$OrderItemCreationImplCopyWith<_$OrderItemCreationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
