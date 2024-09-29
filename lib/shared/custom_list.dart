import 'package:freezed_annotation/freezed_annotation.dart';

part 'custom_list.freezed.dart';

/// This is a custom list that overrides the default list behavior.
@Freezed(genericArgumentFactories: true)
class CustomList<T> with _$CustomList<T> {
  const factory CustomList({
    required List<T> items,
  }) = _CustomList;
}

extension ConvertCustomList<T> on Iterable<T> {
  CustomList<T> toCustomList() {
    return CustomList(items: toList());
  }
}
