import 'package:dio/dio.dart';
import 'package:foursquare/services/base_service.dart';
import 'package:foursquare/shared/async_auth_store.dart';
import 'package:foursquare/shared/models/auth/auth_model.dart';
import 'package:foursquare/shared/models/auth/general.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthService {
  static late final AsyncAuthStore? _instance;

  static final _dio = Dio(
    BaseOptions(
      baseUrl: restApiUrl,
      connectTimeout: const Duration(seconds: 5),
      contentType: 'application/json',
      responseType: ResponseType.json,
      headers: {
        'Accept': '*/*',
      },
      receiveTimeout: const Duration(seconds: 5),
    ),
  );

  static AsyncAuthStore get instance {
    if (_instance == null) {
      throw Exception(
          'AuthService is not initialized. Please ensure to call AuthService.ensureInitialized() before using AuthService.instance');
    }
    return _instance!;
  }

  static Future<void> ensureInitialized() async {
    if (_instance != null) return;
    final prefs = await SharedPreferences.getInstance();
    _instance = AsyncAuthStore(
      save: (String data) async => await prefs.setString('app_auth', data),
      initial: prefs.getString('app_auth'),
      clear: () async => await prefs.remove('app_auth'),
    );
  }

  static Future<bool> signIn(LoginVM obj, {CancelToken? cancelToken}) async {
    final response = await _dio.post(
      '/api/authenticate',
      data: obj.toJson(),
      cancelToken: cancelToken,
    );
    if (response.statusCode != 200) {
      return false;
    }
    final token = response.data['id_token'] as String;
    final authRecord = await _dio.post(
      '/api/account',
      cancelToken: cancelToken,
      options: Options(
        headers: {"Authentication": 'Bearer $token'},
      ),
    );
    final model = AuthModel.fromJson(authRecord.data);
    instance.save(token, model);
    return true;
  }

  static void signOut() {
    instance.clear();
  }
}
