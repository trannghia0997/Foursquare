// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'shipment.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ShipmentInfoModel {
  ShipmentDto get shipment => throw _privateConstructorUsedError;
  OrderInfoModel get order => throw _privateConstructorUsedError;
  InvoiceDto get invoice => throw _privateConstructorUsedError;
  List<(ProductCategoryDto, ColourDto)> get categories =>
      throw _privateConstructorUsedError;

  /// Create a copy of ShipmentInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ShipmentInfoModelCopyWith<ShipmentInfoModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShipmentInfoModelCopyWith<$Res> {
  factory $ShipmentInfoModelCopyWith(
          ShipmentInfoModel value, $Res Function(ShipmentInfoModel) then) =
      _$ShipmentInfoModelCopyWithImpl<$Res, ShipmentInfoModel>;
  @useResult
  $Res call(
      {ShipmentDto shipment,
      OrderInfoModel order,
      InvoiceDto invoice,
      List<(ProductCategoryDto, ColourDto)> categories});

  $ShipmentDtoCopyWith<$Res> get shipment;
  $OrderInfoModelCopyWith<$Res> get order;
  $InvoiceDtoCopyWith<$Res> get invoice;
}

/// @nodoc
class _$ShipmentInfoModelCopyWithImpl<$Res, $Val extends ShipmentInfoModel>
    implements $ShipmentInfoModelCopyWith<$Res> {
  _$ShipmentInfoModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ShipmentInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? shipment = null,
    Object? order = null,
    Object? invoice = null,
    Object? categories = null,
  }) {
    return _then(_value.copyWith(
      shipment: null == shipment
          ? _value.shipment
          : shipment // ignore: cast_nullable_to_non_nullable
              as ShipmentDto,
      order: null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as OrderInfoModel,
      invoice: null == invoice
          ? _value.invoice
          : invoice // ignore: cast_nullable_to_non_nullable
              as InvoiceDto,
      categories: null == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<(ProductCategoryDto, ColourDto)>,
    ) as $Val);
  }

  /// Create a copy of ShipmentInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ShipmentDtoCopyWith<$Res> get shipment {
    return $ShipmentDtoCopyWith<$Res>(_value.shipment, (value) {
      return _then(_value.copyWith(shipment: value) as $Val);
    });
  }

  /// Create a copy of ShipmentInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OrderInfoModelCopyWith<$Res> get order {
    return $OrderInfoModelCopyWith<$Res>(_value.order, (value) {
      return _then(_value.copyWith(order: value) as $Val);
    });
  }

  /// Create a copy of ShipmentInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $InvoiceDtoCopyWith<$Res> get invoice {
    return $InvoiceDtoCopyWith<$Res>(_value.invoice, (value) {
      return _then(_value.copyWith(invoice: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ShipmentInfoModelImplCopyWith<$Res>
    implements $ShipmentInfoModelCopyWith<$Res> {
  factory _$$ShipmentInfoModelImplCopyWith(_$ShipmentInfoModelImpl value,
          $Res Function(_$ShipmentInfoModelImpl) then) =
      __$$ShipmentInfoModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ShipmentDto shipment,
      OrderInfoModel order,
      InvoiceDto invoice,
      List<(ProductCategoryDto, ColourDto)> categories});

  @override
  $ShipmentDtoCopyWith<$Res> get shipment;
  @override
  $OrderInfoModelCopyWith<$Res> get order;
  @override
  $InvoiceDtoCopyWith<$Res> get invoice;
}

/// @nodoc
class __$$ShipmentInfoModelImplCopyWithImpl<$Res>
    extends _$ShipmentInfoModelCopyWithImpl<$Res, _$ShipmentInfoModelImpl>
    implements _$$ShipmentInfoModelImplCopyWith<$Res> {
  __$$ShipmentInfoModelImplCopyWithImpl(_$ShipmentInfoModelImpl _value,
      $Res Function(_$ShipmentInfoModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ShipmentInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? shipment = null,
    Object? order = null,
    Object? invoice = null,
    Object? categories = null,
  }) {
    return _then(_$ShipmentInfoModelImpl(
      shipment: null == shipment
          ? _value.shipment
          : shipment // ignore: cast_nullable_to_non_nullable
              as ShipmentDto,
      order: null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as OrderInfoModel,
      invoice: null == invoice
          ? _value.invoice
          : invoice // ignore: cast_nullable_to_non_nullable
              as InvoiceDto,
      categories: null == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<(ProductCategoryDto, ColourDto)>,
    ));
  }
}

/// @nodoc

class _$ShipmentInfoModelImpl implements _ShipmentInfoModel {
  const _$ShipmentInfoModelImpl(
      {required this.shipment,
      required this.order,
      required this.invoice,
      required final List<(ProductCategoryDto, ColourDto)> categories})
      : _categories = categories;

  @override
  final ShipmentDto shipment;
  @override
  final OrderInfoModel order;
  @override
  final InvoiceDto invoice;
  final List<(ProductCategoryDto, ColourDto)> _categories;
  @override
  List<(ProductCategoryDto, ColourDto)> get categories {
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categories);
  }

  @override
  String toString() {
    return 'ShipmentInfoModel(shipment: $shipment, order: $order, invoice: $invoice, categories: $categories)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShipmentInfoModelImpl &&
            (identical(other.shipment, shipment) ||
                other.shipment == shipment) &&
            (identical(other.order, order) || other.order == order) &&
            (identical(other.invoice, invoice) || other.invoice == invoice) &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories));
  }

  @override
  int get hashCode => Object.hash(runtimeType, shipment, order, invoice,
      const DeepCollectionEquality().hash(_categories));

  /// Create a copy of ShipmentInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ShipmentInfoModelImplCopyWith<_$ShipmentInfoModelImpl> get copyWith =>
      __$$ShipmentInfoModelImplCopyWithImpl<_$ShipmentInfoModelImpl>(
          this, _$identity);
}

abstract class _ShipmentInfoModel implements ShipmentInfoModel {
  const factory _ShipmentInfoModel(
          {required final ShipmentDto shipment,
          required final OrderInfoModel order,
          required final InvoiceDto invoice,
          required final List<(ProductCategoryDto, ColourDto)> categories}) =
      _$ShipmentInfoModelImpl;

  @override
  ShipmentDto get shipment;
  @override
  OrderInfoModel get order;
  @override
  InvoiceDto get invoice;
  @override
  List<(ProductCategoryDto, ColourDto)> get categories;

  /// Create a copy of ShipmentInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ShipmentInfoModelImplCopyWith<_$ShipmentInfoModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
