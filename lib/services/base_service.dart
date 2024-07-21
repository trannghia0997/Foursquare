import 'package:foursquare/services/auth_service.dart';
import 'package:foursquare/shared/abstract_model.dart';
import 'package:dio/dio.dart';

const String restApiUrl = 'https://api.example.com';

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
  String resourceName = "";

  Future<List<dynamic>> get({
    // Turn off eager loading by default to avoid unnecessary data fetching
    bool isEagerLoad = false,
    CancelToken? cancelToken,
  }) async {
    final dio = configureDio();
    dio.options.queryParameters = {
      'eagerload': isEagerLoad,
    };
    final response = await dio.get(
      '/api/$resourceName',
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

  Future<List<dynamic>> search({
    required String query,
    CancelToken? cancelToken,
  }) async {
    final dio = configureDio();
    final response = await dio.get(
      '/api/$resourceName/_search',
      queryParameters: {
        'query': query,
      },
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
