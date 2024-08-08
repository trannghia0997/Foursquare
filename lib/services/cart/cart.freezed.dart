// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cart.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Cart _$CartFromJson(Map<String, dynamic> json) {
  return _Cart.fromJson(json);
}

/// @nodoc
mixin _$Cart {
  @JsonKey(name: 'customer_id')
  String? get customerId => throw _privateConstructorUsedError;
  @JsonKey(name: 'customer_id')
  set customerId(String? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'list_order_product')
  List<OrderProduct> get listOrderProduct => throw _privateConstructorUsedError;
  @JsonKey(name: 'list_order_product')
  set listOrderProduct(List<OrderProduct> value) =>
      throw _privateConstructorUsedError;
  String? get note => throw _privateConstructorUsedError;
  set note(String? value) => throw _privateConstructorUsedError;
  int get totalCost => throw _privateConstructorUsedError;
  set totalCost(int value) => throw _privateConstructorUsedError;

  /// Serializes this Cart to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Cart
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CartCopyWith<Cart> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartCopyWith<$Res> {
  factory $CartCopyWith(Cart value, $Res Function(Cart) then) =
      _$CartCopyWithImpl<$Res, Cart>;
  @useResult
  $Res call(
      {@JsonKey(name: 'customer_id') String? customerId,
      @JsonKey(name: 'list_order_product') List<OrderProduct> listOrderProduct,
      String? note,
      int totalCost});
}

/// @nodoc
class _$CartCopyWithImpl<$Res, $Val extends Cart>
    implements $CartCopyWith<$Res> {
  _$CartCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Cart
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? customerId = freezed,
    Object? listOrderProduct = null,
    Object? note = freezed,
    Object? totalCost = null,
  }) {
    return _then(_value.copyWith(
      customerId: freezed == customerId
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as String?,
      listOrderProduct: null == listOrderProduct
          ? _value.listOrderProduct
          : listOrderProduct // ignore: cast_nullable_to_non_nullable
              as List<OrderProduct>,
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
      totalCost: null == totalCost
          ? _value.totalCost
          : totalCost // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CartImplCopyWith<$Res> implements $CartCopyWith<$Res> {
  factory _$$CartImplCopyWith(
          _$CartImpl value, $Res Function(_$CartImpl) then) =
      __$$CartImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'customer_id') String? customerId,
      @JsonKey(name: 'list_order_product') List<OrderProduct> listOrderProduct,
      String? note,
      int totalCost});
}

/// @nodoc
class __$$CartImplCopyWithImpl<$Res>
    extends _$CartCopyWithImpl<$Res, _$CartImpl>
    implements _$$CartImplCopyWith<$Res> {
  __$$CartImplCopyWithImpl(_$CartImpl _value, $Res Function(_$CartImpl) _then)
      : super(_value, _then);

  /// Create a copy of Cart
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? customerId = freezed,
    Object? listOrderProduct = null,
    Object? note = freezed,
    Object? totalCost = null,
  }) {
    return _then(_$CartImpl(
      customerId: freezed == customerId
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as String?,
      listOrderProduct: null == listOrderProduct
          ? _value.listOrderProduct
          : listOrderProduct // ignore: cast_nullable_to_non_nullable
              as List<OrderProduct>,
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
      totalCost: null == totalCost
          ? _value.totalCost
          : totalCost // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CartImpl extends _Cart with DiagnosticableTreeMixin {
  _$CartImpl(
      {@JsonKey(name: 'customer_id') this.customerId,
      @JsonKey(name: 'list_order_product') required this.listOrderProduct,
      this.note,
      required this.totalCost})
      : super._();

  factory _$CartImpl.fromJson(Map<String, dynamic> json) =>
      _$$CartImplFromJson(json);

  @override
  @JsonKey(name: 'customer_id')
  String? customerId;
  @override
  @JsonKey(name: 'list_order_product')
  List<OrderProduct> listOrderProduct;
  @override
  String? note;
  @override
  int totalCost;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Cart(customerId: $customerId, listOrderProduct: $listOrderProduct, note: $note, totalCost: $totalCost)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Cart'))
      ..add(DiagnosticsProperty('customerId', customerId))
      ..add(DiagnosticsProperty('listOrderProduct', listOrderProduct))
      ..add(DiagnosticsProperty('note', note))
      ..add(DiagnosticsProperty('totalCost', totalCost));
  }

  /// Create a copy of Cart
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CartImplCopyWith<_$CartImpl> get copyWith =>
      __$$CartImplCopyWithImpl<_$CartImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CartImplToJson(
      this,
    );
  }
}

abstract class _Cart extends Cart {
  factory _Cart(
      {@JsonKey(name: 'customer_id') String? customerId,
      @JsonKey(name: 'list_order_product')
      required List<OrderProduct> listOrderProduct,
      String? note,
      required int totalCost}) = _$CartImpl;
  _Cart._() : super._();

  factory _Cart.fromJson(Map<String, dynamic> json) = _$CartImpl.fromJson;

  @override
  @JsonKey(name: 'customer_id')
  String? get customerId;
  @JsonKey(name: 'customer_id')
  set customerId(String? value);
  @override
  @JsonKey(name: 'list_order_product')
  List<OrderProduct> get listOrderProduct;
  @JsonKey(name: 'list_order_product')
  set listOrderProduct(List<OrderProduct> value);
  @override
  String? get note;
  set note(String? value);
  @override
  int get totalCost;
  set totalCost(int value);

  /// Create a copy of Cart
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CartImplCopyWith<_$CartImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
