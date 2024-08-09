/// Workaround for `undefined` and `null` values in JSON serialization.
/// This class is useful when you want to distinguish between `null` and `undefined` values in JSON serialization.
class JsonNullableType<T> {
  final T? value;

  JsonNullableType(this.value);

  @override
  String toString() {
    return 'JsonNullableType($value)';
  }

  @override
  bool operator ==(Object other) {
    if (other is JsonNullableType<T>) {
      return value == other.value;
    }
    return false;
  }

  @override
  int get hashCode => value.hashCode;

  factory JsonNullableType.fromJson(dynamic json) {
    if (json == null) {
      return JsonNullableType<T>(null);
    }
    return JsonNullableType<T>(json as T);
  }

  dynamic toJson() {
    return value;
  }
}
