import "dart:convert";

import "package:foursquare/shared/models/auth/auth_model.dart";

import "auth_store.dart";
import "sync_queue.dart";

typedef SaveFunc = Future<void> Function(String data);
typedef ClearFunc = Future<void> Function();

class AsyncAuthStore extends AuthStore {
  late final SaveFunc saveFunc;

  late final ClearFunc? clearFunc;

  final String _tokenKey = "token";
  final String _modelKey = "model";

  AsyncAuthStore({
    required SaveFunc save,
    String? initial,
    ClearFunc? clear,
  }) {
    saveFunc = save;
    clearFunc = clear;

    _loadInitial(initial);
  }

  final _queue = SyncQueue();

  @override
  void save(
    String newToken,
    AuthModel newModel,
  ) {
    super.save(newToken, newModel);

    final encoded = jsonEncode({_tokenKey: token, _modelKey: model});

    _queue.enqueue(() => saveFunc(encoded));
  }

  @override
  void clear() {
    super.clear();

    if (clearFunc == null) {
      _queue.enqueue(() => saveFunc(""));
    } else {
      _queue.enqueue(() => clearFunc!());
    }
  }

  void _loadInitial(String? initial) {
    if (initial == null || initial.isEmpty) {
      return;
    }

    var decoded = <String, dynamic>{};
    try {
      final raw = jsonDecode(initial);
      if (raw is Map<String, dynamic>) {
        decoded = raw;
      }
    } catch (_) {
      return;
    }

    final token = decoded[_tokenKey] as String? ?? "";

    final rawModel = decoded[_modelKey] as Map<String, dynamic>? ?? {};

    final model = AuthModel.fromJson(rawModel);

    save(token, model);
  }
}
