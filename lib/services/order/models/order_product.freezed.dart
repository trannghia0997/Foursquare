// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_product.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OrderProduct _$OrderProductFromJson(Map<String, dynamic> json) {
  return _OrderProduct.fromJson(json);
}

/// @nodoc
mixin _$OrderProduct {
  String get id => throw _privateConstructorUsedError;
  Product get product => throw _privateConstructorUsedError;
  int get orderedQuantity => throw _privateConstructorUsedError;
  Colour get colourChoosed => throw _privateConstructorUsedError;
  String get statusId => throw _privateConstructorUsedError;
  bool? get enoughQuantity => throw _privateConstructorUsedError;
  int? get receivedQuantity => throw _privateConstructorUsedError;
  String? get note => throw _privateConstructorUsedError;

  /// Serializes this OrderProduct to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OrderProduct
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OrderProductCopyWith<OrderProduct> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderProductCopyWith<$Res> {
  factory $OrderProductCopyWith(
          OrderProduct value, $Res Function(OrderProduct) then) =
      _$OrderProductCopyWithImpl<$Res, OrderProduct>;
  @useResult
  $Res call(
      {String id,
      Product product,
      int orderedQuantity,
      Colour colourChoosed,
      String statusId,
      bool? enoughQuantity,
      int? receivedQuantity,
      String? note});

  $ProductCopyWith<$Res> get product;
  $ColourCopyWith<$Res> get colourChoosed;
}

/// @nodoc
class _$OrderProductCopyWithImpl<$Res, $Val extends OrderProduct>
    implements $OrderProductCopyWith<$Res> {
  _$OrderProductCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OrderProduct
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? product = null,
    Object? orderedQuantity = null,
    Object? colourChoosed = null,
    Object? statusId = null,
    Object? enoughQuantity = freezed,
    Object? receivedQuantity = freezed,
    Object? note = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as Product,
      orderedQuantity: null == orderedQuantity
          ? _value.orderedQuantity
          : orderedQuantity // ignore: cast_nullable_to_non_nullable
              as int,
      colourChoosed: null == colourChoosed
          ? _value.colourChoosed
          : colourChoosed // ignore: cast_nullable_to_non_nullable
              as Colour,
      statusId: null == statusId
          ? _value.statusId
          : statusId // ignore: cast_nullable_to_non_nullable
              as String,
      enoughQuantity: freezed == enoughQuantity
          ? _value.enoughQuantity
          : enoughQuantity // ignore: cast_nullable_to_non_nullable
              as bool?,
      receivedQuantity: freezed == receivedQuantity
          ? _value.receivedQuantity
          : receivedQuantity // ignore: cast_nullable_to_non_nullable
              as int?,
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of OrderProduct
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProductCopyWith<$Res> get product {
    return $ProductCopyWith<$Res>(_value.product, (value) {
      return _then(_value.copyWith(product: value) as $Val);
    });
  }

  /// Create a copy of OrderProduct
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ColourCopyWith<$Res> get colourChoosed {
    return $ColourCopyWith<$Res>(_value.colourChoosed, (value) {
      return _then(_value.copyWith(colourChoosed: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$OrderProductImplCopyWith<$Res>
    implements $OrderProductCopyWith<$Res> {
  factory _$$OrderProductImplCopyWith(
          _$OrderProductImpl value, $Res Function(_$OrderProductImpl) then) =
      __$$OrderProductImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      Product product,
      int orderedQuantity,
      Colour colourChoosed,
      String statusId,
      bool? enoughQuantity,
      int? receivedQuantity,
      String? note});

  @override
  $ProductCopyWith<$Res> get product;
  @override
  $ColourCopyWith<$Res> get colourChoosed;
}

/// @nodoc
class __$$OrderProductImplCopyWithImpl<$Res>
    extends _$OrderProductCopyWithImpl<$Res, _$OrderProductImpl>
    implements _$$OrderProductImplCopyWith<$Res> {
  __$$OrderProductImplCopyWithImpl(
      _$OrderProductImpl _value, $Res Function(_$OrderProductImpl) _then)
      : super(_value, _then);

  /// Create a copy of OrderProduct
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? product = null,
    Object? orderedQuantity = null,
    Object? colourChoosed = null,
    Object? statusId = null,
    Object? enoughQuantity = freezed,
    Object? receivedQuantity = freezed,
    Object? note = freezed,
  }) {
    return _then(_$OrderProductImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as Product,
      orderedQuantity: null == orderedQuantity
          ? _value.orderedQuantity
          : orderedQuantity // ignore: cast_nullable_to_non_nullable
              as int,
      colourChoosed: null == colourChoosed
          ? _value.colourChoosed
          : colourChoosed // ignore: cast_nullable_to_non_nullable
              as Colour,
      statusId: null == statusId
          ? _value.statusId
          : statusId // ignore: cast_nullable_to_non_nullable
              as String,
      enoughQuantity: freezed == enoughQuantity
          ? _value.enoughQuantity
          : enoughQuantity // ignore: cast_nullable_to_non_nullable
              as bool?,
      receivedQuantity: freezed == receivedQuantity
          ? _value.receivedQuantity
          : receivedQuantity // ignore: cast_nullable_to_non_nullable
              as int?,
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OrderProductImpl with DiagnosticableTreeMixin implements _OrderProduct {
  const _$OrderProductImpl(
      {required this.id,
      required this.product,
      required this.orderedQuantity,
      required this.colourChoosed,
      required this.statusId,
      this.enoughQuantity,
      this.receivedQuantity,
      this.note});

  factory _$OrderProductImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderProductImplFromJson(json);

  @override
  final String id;
  @override
  final Product product;
  @override
  final int orderedQuantity;
  @override
  final Colour colourChoosed;
  @override
  final String statusId;
  @override
  final bool? enoughQuantity;
  @override
  final int? receivedQuantity;
  @override
  final String? note;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'OrderProduct(id: $id, product: $product, orderedQuantity: $orderedQuantity, colourChoosed: $colourChoosed, statusId: $statusId, enoughQuantity: $enoughQuantity, receivedQuantity: $receivedQuantity, note: $note)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'OrderProduct'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('product', product))
      ..add(DiagnosticsProperty('orderedQuantity', orderedQuantity))
      ..add(DiagnosticsProperty('colourChoosed', colourChoosed))
      ..add(DiagnosticsProperty('statusId', statusId))
      ..add(DiagnosticsProperty('enoughQuantity', enoughQuantity))
      ..add(DiagnosticsProperty('receivedQuantity', receivedQuantity))
      ..add(DiagnosticsProperty('note', note));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderProductImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.product, product) || other.product == product) &&
            (identical(other.orderedQuantity, orderedQuantity) ||
                other.orderedQuantity == orderedQuantity) &&
            (identical(other.colourChoosed, colourChoosed) ||
                other.colourChoosed == colourChoosed) &&
            (identical(other.statusId, statusId) ||
                other.statusId == statusId) &&
            (identical(other.enoughQuantity, enoughQuantity) ||
                other.enoughQuantity == enoughQuantity) &&
            (identical(other.receivedQuantity, receivedQuantity) ||
                other.receivedQuantity == receivedQuantity) &&
            (identical(other.note, note) || other.note == note));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, product, orderedQuantity,
      colourChoosed, statusId, enoughQuantity, receivedQuantity, note);

  /// Create a copy of OrderProduct
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderProductImplCopyWith<_$OrderProductImpl> get copyWith =>
      __$$OrderProductImplCopyWithImpl<_$OrderProductImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderProductImplToJson(
      this,
    );
  }
}

abstract class _OrderProduct implements OrderProduct {
  const factory _OrderProduct(
      {required final String id,
      required final Product product,
      required final int orderedQuantity,
      required final Colour colourChoosed,
      required final String statusId,
      final bool? enoughQuantity,
      final int? receivedQuantity,
      final String? note}) = _$OrderProductImpl;

  factory _OrderProduct.fromJson(Map<String, dynamic> json) =
      _$OrderProductImpl.fromJson;

  @override
  String get id;
  @override
  Product get product;
  @override
  int get orderedQuantity;
  @override
  Colour get colourChoosed;
  @override
  String get statusId;
  @override
  bool? get enoughQuantity;
  @override
  int? get receivedQuantity;
  @override
  String? get note;

  /// Create a copy of OrderProduct
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OrderProductImplCopyWith<_$OrderProductImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

OrderProductCreation _$OrderProductCreationFromJson(Map<String, dynamic> json) {
  return _OrderProductCreation.fromJson(json);
}

/// @nodoc
mixin _$OrderProductCreation {
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

  /// Serializes this OrderProductCreation to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OrderProductCreation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OrderProductCreationCopyWith<OrderProductCreation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderProductCreationCopyWith<$Res> {
  factory $OrderProductCreationCopyWith(OrderProductCreation value,
          $Res Function(OrderProductCreation) then) =
      _$OrderProductCreationCopyWithImpl<$Res, OrderProductCreation>;
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
class _$OrderProductCreationCopyWithImpl<$Res,
        $Val extends OrderProductCreation>
    implements $OrderProductCreationCopyWith<$Res> {
  _$OrderProductCreationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OrderProductCreation
  /// with the given fields replaced by the non-null parameter values.
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
abstract class _$$OrderProductCreationImplCopyWith<$Res>
    implements $OrderProductCreationCopyWith<$Res> {
  factory _$$OrderProductCreationImplCopyWith(_$OrderProductCreationImpl value,
          $Res Function(_$OrderProductCreationImpl) then) =
      __$$OrderProductCreationImplCopyWithImpl<$Res>;
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
class __$$OrderProductCreationImplCopyWithImpl<$Res>
    extends _$OrderProductCreationCopyWithImpl<$Res, _$OrderProductCreationImpl>
    implements _$$OrderProductCreationImplCopyWith<$Res> {
  __$$OrderProductCreationImplCopyWithImpl(_$OrderProductCreationImpl _value,
      $Res Function(_$OrderProductCreationImpl) _then)
      : super(_value, _then);

  /// Create a copy of OrderProductCreation
  /// with the given fields replaced by the non-null parameter values.
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
    return _then(_$OrderProductCreationImpl(
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
class _$OrderProductCreationImpl
    with DiagnosticableTreeMixin
    implements _OrderProductCreation {
  _$OrderProductCreationImpl(
      {@JsonKey(name: 'order_id') this.orderId,
      @JsonKey(name: 'product_variant_id') required this.productVariantId,
      @JsonKey(name: 'ordered_qty') this.orderedQuantity = 0,
      @JsonKey(name: 'received_qty') this.receivedQuantity = 0,
      @JsonKey(name: 'price_per_unit') this.pricePerUnit = 0,
      @JsonKey(name: 'status_id') required this.statusId,
      this.note});

  factory _$OrderProductCreationImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderProductCreationImplFromJson(json);

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
    return 'OrderProductCreation(orderId: $orderId, productVariantId: $productVariantId, orderedQuantity: $orderedQuantity, receivedQuantity: $receivedQuantity, pricePerUnit: $pricePerUnit, statusId: $statusId, note: $note)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'OrderProductCreation'))
      ..add(DiagnosticsProperty('orderId', orderId))
      ..add(DiagnosticsProperty('productVariantId', productVariantId))
      ..add(DiagnosticsProperty('orderedQuantity', orderedQuantity))
      ..add(DiagnosticsProperty('receivedQuantity', receivedQuantity))
      ..add(DiagnosticsProperty('pricePerUnit', pricePerUnit))
      ..add(DiagnosticsProperty('statusId', statusId))
      ..add(DiagnosticsProperty('note', note));
  }

  /// Create a copy of OrderProductCreation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderProductCreationImplCopyWith<_$OrderProductCreationImpl>
      get copyWith =>
          __$$OrderProductCreationImplCopyWithImpl<_$OrderProductCreationImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderProductCreationImplToJson(
      this,
    );
  }
}

abstract class _OrderProductCreation implements OrderProductCreation {
  factory _OrderProductCreation(
      {@JsonKey(name: 'order_id') String? orderId,
      @JsonKey(name: 'product_variant_id') required String productVariantId,
      @JsonKey(name: 'ordered_qty') double orderedQuantity,
      @JsonKey(name: 'received_qty') double receivedQuantity,
      @JsonKey(name: 'price_per_unit') double pricePerUnit,
      @JsonKey(name: 'status_id') required String statusId,
      String? note}) = _$OrderProductCreationImpl;

  factory _OrderProductCreation.fromJson(Map<String, dynamic> json) =
      _$OrderProductCreationImpl.fromJson;

  /// Must be a valid ID of an existing order.
  @override
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

  /// Create a copy of OrderProductCreation
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OrderProductCreationImplCopyWith<_$OrderProductCreationImpl>
      get copyWith => throw _privateConstructorUsedError;
}
