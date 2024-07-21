import "dart:async";
import "dart:convert";

import "package:foursquare/shared/models/auth/auth_model.dart";

class AuthStoreEvent {
  AuthStoreEvent(this.token, this.model);

  final String token;
  final AuthModel? model;

  @override
  String toString() => "token: $token\nmodel: $model";
}

class AuthStore {
  String _token = "";
  AuthModel? _model;
  final _onChangeController = StreamController<AuthStoreEvent>.broadcast();

  String get token => _token;

  AuthModel? get model => _model;

  Stream<AuthStoreEvent> get onChange => _onChangeController.stream;

  bool get isValid {
    final parts = token.split(".");
    if (parts.length != 3) {
      return false;
    }

    final tokenPart = base64.normalize(parts[1]);
    final data = jsonDecode(utf8.decode(base64Decode(tokenPart)))
        as Map<String, dynamic>;

    final exp = data["exp"] is int
        ? data["exp"] as int
        : (int.tryParse(data["exp"].toString()) ?? 0);

    return exp > (DateTime.now().millisecondsSinceEpoch / 1000);
  }

  void save(
    String newToken,
    AuthModel newModel,
  ) {
    _token = newToken;
    _model = newModel;

    _onChangeController.add(AuthStoreEvent(token, model));
  }

  /// Clears the previously stored [token] and [model] auth data.
  void clear() {
    _token = "";
    _model = null;

    _onChangeController.add(AuthStoreEvent(token, model));
  }
}
