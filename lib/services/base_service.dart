import 'package:foursquare/services/auth_service.dart';
import 'package:foursquare/shared/abstract_model.dart';
import 'package:dio/dio.dart';

const String restApiUrl = 'http://localhost:8080';

Dio configureDio() {
  final baseOptions = BaseOptions(
    baseUrl: restApiUrl,
    connectTimeout: const Duration(seconds: 5),
    contentType: 'application/json',
    responseType: ResponseType.json,
    headers: {
      'Accept': '*/*',
    },
    receiveTimeout: const Duration(seconds: 5),
  );
  final authInstance = AuthService.instance;
  if (authInstance.token.isNotEmpty) {
    baseOptions.headers['Authorization'] = 'Bearer ${authInstance.token}';
  }
  return Dio(baseOptions);
}

mixin BaseService<T extends AbstractResourceModel> {
  String get resourceName;

  Future<List<dynamic>> get({
    Map<String, dynamic> queryParameters = const {},
    CancelToken? cancelToken,
  }) async {
    final dio = configureDio();
    dio.options.queryParameters = queryParameters;
    final response = await dio.get(
      '/api/$resourceName',
      cancelToken: cancelToken,
    );
    return response.data;
  }

  Future<int> count({
    Map<String, dynamic> queryParameters = const {},
    CancelToken? cancelToken,
  }) async {
    final dio = configureDio();
    dio.options.queryParameters = queryParameters;
    final response = await dio.get(
      '/api/$resourceName/count',
      cancelToken: cancelToken,
    );
    return response.data;
  }

  Future<dynamic> getById({
    required String id,
    CancelToken? cancelToken,
  }) async {
    final dio = configureDio();
    final response = await dio.get(
      '/api/$resourceName/$id',
      cancelToken: cancelToken,
    );
    return response.data;
  }

  Future<dynamic> create({
    required T data,
    CancelToken? cancelToken,
  }) async {
    final dio = configureDio();
    final response = await dio.post(
      '/api/$resourceName',
      data: data,
      cancelToken: cancelToken,
    );
    return response.data;
  }

  Future<dynamic> update({
    required String id,
    required T data,
    CancelToken? cancelToken,
  }) async {
    final dio = configureDio();
    final response = await dio.put(
      '/api/$resourceName/$id',
      data: data,
      cancelToken: cancelToken,
    );
    return response.data;
  }

  Future<dynamic> updatePartial({
    required String id,
    required T data,
    CancelToken? cancelToken,
  }) async {
    final dio = configureDio();
    final response = await dio.patch(
      '/api/$resourceName/$id',
      data: data,
      cancelToken: cancelToken,
    );
    return response.data;
  }

  Future<void> delete({
    required String id,
    CancelToken? cancelToken,
  }) async {
    final dio = configureDio();
    await dio.delete(
      '/api/$resourceName/$id',
      cancelToken: cancelToken,
    );
  }
}
