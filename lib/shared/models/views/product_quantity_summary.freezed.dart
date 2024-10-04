// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_quantity_summary.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ProductQuantitySummaryView _$ProductQuantitySummaryViewFromJson(
    Map<String, dynamic> json) {
  return _ProductQuantitySummaryView.fromJson(json);
}

/// @nodoc
mixin _$ProductQuantitySummaryView {
  @JsonKey(name: "id")
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: "collectionId")
  String get collectionId => throw _privateConstructorUsedError;
  @JsonKey(name: "collectionName")
  String get collectionName => throw _privateConstructorUsedError;
  @JsonKey(name: "totalQty")
  int get totalQty => throw _privateConstructorUsedError;

  /// Serializes this ProductQuantitySummaryView to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProductQuantitySummaryView
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductQuantitySummaryViewCopyWith<ProductQuantitySummaryView>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductQuantitySummaryViewCopyWith<$Res> {
  factory $ProductQuantitySummaryViewCopyWith(ProductQuantitySummaryView value,
          $Res Function(ProductQuantitySummaryView) then) =
      _$ProductQuantitySummaryViewCopyWithImpl<$Res,
          ProductQuantitySummaryView>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") String id,
      @JsonKey(name: "collectionId") String collectionId,
      @JsonKey(name: "collectionName") String collectionName,
      @JsonKey(name: "totalQty") int totalQty});
}

/// @nodoc
class _$ProductQuantitySummaryViewCopyWithImpl<$Res,
        $Val extends ProductQuantitySummaryView>
    implements $ProductQuantitySummaryViewCopyWith<$Res> {
  _$ProductQuantitySummaryViewCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductQuantitySummaryView
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? collectionId = null,
    Object? collectionName = null,
    Object? totalQty = null,
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
      totalQty: null == totalQty
          ? _value.totalQty
          : totalQty // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductQuantitySummaryViewImplCopyWith<$Res>
    implements $ProductQuantitySummaryViewCopyWith<$Res> {
  factory _$$ProductQuantitySummaryViewImplCopyWith(
          _$ProductQuantitySummaryViewImpl value,
          $Res Function(_$ProductQuantitySummaryViewImpl) then) =
      __$$ProductQuantitySummaryViewImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") String id,
      @JsonKey(name: "collectionId") String collectionId,
      @JsonKey(name: "collectionName") String collectionName,
      @JsonKey(name: "totalQty") int totalQty});
}

/// @nodoc
class __$$ProductQuantitySummaryViewImplCopyWithImpl<$Res>
    extends _$ProductQuantitySummaryViewCopyWithImpl<$Res,
        _$ProductQuantitySummaryViewImpl>
    implements _$$ProductQuantitySummaryViewImplCopyWith<$Res> {
  __$$ProductQuantitySummaryViewImplCopyWithImpl(
      _$ProductQuantitySummaryViewImpl _value,
      $Res Function(_$ProductQuantitySummaryViewImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductQuantitySummaryView
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? collectionId = null,
    Object? collectionName = null,
    Object? totalQty = null,
  }) {
    return _then(_$ProductQuantitySummaryViewImpl(
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
      totalQty: null == totalQty
          ? _value.totalQty
          : totalQty // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductQuantitySummaryViewImpl
    with DiagnosticableTreeMixin
    implements _ProductQuantitySummaryView {
  const _$ProductQuantitySummaryViewImpl(
      {@JsonKey(name: "id") required this.id,
      @JsonKey(name: "collectionId") required this.collectionId,
      @JsonKey(name: "collectionName") required this.collectionName,
      @JsonKey(name: "totalQty") required this.totalQty});

  factory _$ProductQuantitySummaryViewImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ProductQuantitySummaryViewImplFromJson(json);

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
  @JsonKey(name: "totalQty")
  final int totalQty;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ProductQuantitySummaryView(id: $id, collectionId: $collectionId, collectionName: $collectionName, totalQty: $totalQty)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ProductQuantitySummaryView'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('collectionId', collectionId))
      ..add(DiagnosticsProperty('collectionName', collectionName))
      ..add(DiagnosticsProperty('totalQty', totalQty));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductQuantitySummaryViewImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.collectionId, collectionId) ||
                other.collectionId == collectionId) &&
            (identical(other.collectionName, collectionName) ||
                other.collectionName == collectionName) &&
            (identical(other.totalQty, totalQty) ||
                other.totalQty == totalQty));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, collectionId, collectionName, totalQty);

  /// Create a copy of ProductQuantitySummaryView
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductQuantitySummaryViewImplCopyWith<_$ProductQuantitySummaryViewImpl>
      get copyWith => __$$ProductQuantitySummaryViewImplCopyWithImpl<
          _$ProductQuantitySummaryViewImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductQuantitySummaryViewImplToJson(
      this,
    );
  }
}

abstract class _ProductQuantitySummaryView
    implements ProductQuantitySummaryView {
  const factory _ProductQuantitySummaryView(
          {@JsonKey(name: "id") required final String id,
          @JsonKey(name: "collectionId") required final String collectionId,
          @JsonKey(name: "collectionName") required final String collectionName,
          @JsonKey(name: "totalQty") required final int totalQty}) =
      _$ProductQuantitySummaryViewImpl;

  factory _ProductQuantitySummaryView.fromJson(Map<String, dynamic> json) =
      _$ProductQuantitySummaryViewImpl.fromJson;

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
  @JsonKey(name: "totalQty")
  int get totalQty;

  /// Create a copy of ProductQuantitySummaryView
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductQuantitySummaryViewImplCopyWith<_$ProductQuantitySummaryViewImpl>
      get copyWith => throw _privateConstructorUsedError;
}
