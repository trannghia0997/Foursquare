// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'custom_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CustomList<T> {
  List<T> get items => throw _privateConstructorUsedError;

  /// Create a copy of CustomList
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CustomListCopyWith<T, CustomList<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomListCopyWith<T, $Res> {
  factory $CustomListCopyWith(
          CustomList<T> value, $Res Function(CustomList<T>) then) =
      _$CustomListCopyWithImpl<T, $Res, CustomList<T>>;
  @useResult
  $Res call({List<T> items});
}

/// @nodoc
class _$CustomListCopyWithImpl<T, $Res, $Val extends CustomList<T>>
    implements $CustomListCopyWith<T, $Res> {
  _$CustomListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CustomList
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
  }) {
    return _then(_value.copyWith(
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<T>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CustomListImplCopyWith<T, $Res>
    implements $CustomListCopyWith<T, $Res> {
  factory _$$CustomListImplCopyWith(
          _$CustomListImpl<T> value, $Res Function(_$CustomListImpl<T>) then) =
      __$$CustomListImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({List<T> items});
}

/// @nodoc
class __$$CustomListImplCopyWithImpl<T, $Res>
    extends _$CustomListCopyWithImpl<T, $Res, _$CustomListImpl<T>>
    implements _$$CustomListImplCopyWith<T, $Res> {
  __$$CustomListImplCopyWithImpl(
      _$CustomListImpl<T> _value, $Res Function(_$CustomListImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of CustomList
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
  }) {
    return _then(_$CustomListImpl<T>(
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<T>,
    ));
  }
}

/// @nodoc

class _$CustomListImpl<T> implements _CustomList<T> {
  const _$CustomListImpl({required final List<T> items}) : _items = items;

  final List<T> _items;
  @override
  List<T> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  String toString() {
    return 'CustomList<$T>(items: $items)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CustomListImpl<T> &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_items));

  /// Create a copy of CustomList
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CustomListImplCopyWith<T, _$CustomListImpl<T>> get copyWith =>
      __$$CustomListImplCopyWithImpl<T, _$CustomListImpl<T>>(this, _$identity);
}

abstract class _CustomList<T> implements CustomList<T> {
  const factory _CustomList({required final List<T> items}) =
      _$CustomListImpl<T>;

  @override
  List<T> get items;

  /// Create a copy of CustomList
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CustomListImplCopyWith<T, _$CustomListImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
