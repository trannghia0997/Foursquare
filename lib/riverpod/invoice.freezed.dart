// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'invoice.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$InvoiceInfo {
  InvoiceDto get invoice => throw _privateConstructorUsedError;
  List<InvoiceLineItemDto>? get invoiceLineItems =>
      throw _privateConstructorUsedError;

  /// Create a copy of InvoiceInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $InvoiceInfoCopyWith<InvoiceInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InvoiceInfoCopyWith<$Res> {
  factory $InvoiceInfoCopyWith(
          InvoiceInfo value, $Res Function(InvoiceInfo) then) =
      _$InvoiceInfoCopyWithImpl<$Res, InvoiceInfo>;
  @useResult
  $Res call({InvoiceDto invoice, List<InvoiceLineItemDto>? invoiceLineItems});

  $InvoiceDtoCopyWith<$Res> get invoice;
}

/// @nodoc
class _$InvoiceInfoCopyWithImpl<$Res, $Val extends InvoiceInfo>
    implements $InvoiceInfoCopyWith<$Res> {
  _$InvoiceInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of InvoiceInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? invoice = null,
    Object? invoiceLineItems = freezed,
  }) {
    return _then(_value.copyWith(
      invoice: null == invoice
          ? _value.invoice
          : invoice // ignore: cast_nullable_to_non_nullable
              as InvoiceDto,
      invoiceLineItems: freezed == invoiceLineItems
          ? _value.invoiceLineItems
          : invoiceLineItems // ignore: cast_nullable_to_non_nullable
              as List<InvoiceLineItemDto>?,
    ) as $Val);
  }

  /// Create a copy of InvoiceInfo
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
abstract class _$$InvoiceInfoImplCopyWith<$Res>
    implements $InvoiceInfoCopyWith<$Res> {
  factory _$$InvoiceInfoImplCopyWith(
          _$InvoiceInfoImpl value, $Res Function(_$InvoiceInfoImpl) then) =
      __$$InvoiceInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({InvoiceDto invoice, List<InvoiceLineItemDto>? invoiceLineItems});

  @override
  $InvoiceDtoCopyWith<$Res> get invoice;
}

/// @nodoc
class __$$InvoiceInfoImplCopyWithImpl<$Res>
    extends _$InvoiceInfoCopyWithImpl<$Res, _$InvoiceInfoImpl>
    implements _$$InvoiceInfoImplCopyWith<$Res> {
  __$$InvoiceInfoImplCopyWithImpl(
      _$InvoiceInfoImpl _value, $Res Function(_$InvoiceInfoImpl) _then)
      : super(_value, _then);

  /// Create a copy of InvoiceInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? invoice = null,
    Object? invoiceLineItems = freezed,
  }) {
    return _then(_$InvoiceInfoImpl(
      invoice: null == invoice
          ? _value.invoice
          : invoice // ignore: cast_nullable_to_non_nullable
              as InvoiceDto,
      invoiceLineItems: freezed == invoiceLineItems
          ? _value._invoiceLineItems
          : invoiceLineItems // ignore: cast_nullable_to_non_nullable
              as List<InvoiceLineItemDto>?,
    ));
  }
}

/// @nodoc

class _$InvoiceInfoImpl implements _InvoiceInfo {
  const _$InvoiceInfoImpl(
      {required this.invoice,
      required final List<InvoiceLineItemDto>? invoiceLineItems})
      : _invoiceLineItems = invoiceLineItems;

  @override
  final InvoiceDto invoice;
  final List<InvoiceLineItemDto>? _invoiceLineItems;
  @override
  List<InvoiceLineItemDto>? get invoiceLineItems {
    final value = _invoiceLineItems;
    if (value == null) return null;
    if (_invoiceLineItems is EqualUnmodifiableListView)
      return _invoiceLineItems;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'InvoiceInfo(invoice: $invoice, invoiceLineItems: $invoiceLineItems)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InvoiceInfoImpl &&
            (identical(other.invoice, invoice) || other.invoice == invoice) &&
            const DeepCollectionEquality()
                .equals(other._invoiceLineItems, _invoiceLineItems));
  }

  @override
  int get hashCode => Object.hash(runtimeType, invoice,
      const DeepCollectionEquality().hash(_invoiceLineItems));

  /// Create a copy of InvoiceInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InvoiceInfoImplCopyWith<_$InvoiceInfoImpl> get copyWith =>
      __$$InvoiceInfoImplCopyWithImpl<_$InvoiceInfoImpl>(this, _$identity);
}

abstract class _InvoiceInfo implements InvoiceInfo {
  const factory _InvoiceInfo(
          {required final InvoiceDto invoice,
          required final List<InvoiceLineItemDto>? invoiceLineItems}) =
      _$InvoiceInfoImpl;

  @override
  InvoiceDto get invoice;
  @override
  List<InvoiceLineItemDto>? get invoiceLineItems;

  /// Create a copy of InvoiceInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InvoiceInfoImplCopyWith<_$InvoiceInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
