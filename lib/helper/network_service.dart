import 'package:dio/dio.dart';
import 'package:salute_medical/config/confige.dart';

class NetworkService {
  final dio = Dio();

  Future<Response> get({
    required String? url,
    Map<String, String>? headers,
    Map<String, dynamic>? queryParameters,
    bool isAuth = false,
  }) async {
    const _token = '';
    final authHeaders = {'Authorization': "Bearer $_token"};
    Response? response;
    try {
      dio.options.baseUrl = Config.baseUrl;
      response = await dio.get(
        url!,
        options: Options(
          headers: isAuth ? authHeaders : headers,
        ),
        queryParameters: queryParameters,
      );
    } on DioError catch (e) {
      if (e.response != null) {
        response = e.response;
      }
    }
    return handleResponse(response!);
  }

  Future<Response> post({
    required String? url,
    Map<String, String>? headers,
    Map<String, dynamic>? body,
    Map<String, dynamic>? queryParameters,
    bool isAuth = false,
    encoding,
  }) async {
    print('body => $body');
    const _token = '';
    final authHeaders = {'Authorization': "Bearer $_token"};

    // headers = {'Accept-Language': 'en'};

    Response? response;
    dio.options.baseUrl = Config.baseUrl;
    try {
      response = await dio.post(
        url!,
        data: body,
        queryParameters: queryParameters,
        options: Options(
          headers: isAuth ? authHeaders : headers,
          requestEncoder: encoding,
        ),
      );
    } on DioError catch (e) {
      if (e.response != null) {
        response = e.response;
      }
    }
    return handleResponse(response!);
  }

  Future<Response> put({
    required String? url,
    Map<String, String>? headers,
    Map<String, dynamic>? body,
    Map<String, dynamic>? queryParameters,
    bool isAuth = false,
    encoding,
  }) async {
    print('body => $body');
    const _token = '';
    final authHeaders = {'Authorization': "Bearer $_token"};

    // headers = {'Accept-Language': 'en'};

    Response? response;
    dio.options.baseUrl = Config.baseUrl;
    try {
      response = await dio.put(
        url!,
        data: body,
        queryParameters: queryParameters,
        options: Options(
          headers: isAuth ? authHeaders : headers,
          requestEncoder: encoding,
        ),
      );
    } on DioError catch (e) {
      if (e.response != null) {
        response = e.response;
      }
    }
    return handleResponse(response!);
  }

  Future<Response> delete({
    required String? url,
    Map<String, String>? headers,
    Map<String, dynamic>? body,
    Map<String, dynamic>? queryParameters,
    bool isAuth = false,
    encoding,
  }) async {
    print('body => $body');
    const _token = '';
    final authHeaders = {'Authorization': "Bearer $_token"};
    // headers = {'Accept-Language': 'en'};
    Response? response;
    dio.options.baseUrl = Config.baseUrl;
    try {
      response = await dio.delete(
        url!,
        data: body,
        queryParameters: queryParameters,
        options: Options(
          headers: isAuth ? authHeaders : headers,
          requestEncoder: encoding,
        ),
      );
    } on DioError catch (e) {
      if (e.response != null) {
        response = e.response;
      }
    }
    return handleResponse(response!);
  }

  Response handleResponse(Response response) {
    final int statusCode = response.statusCode ?? 500;
    if (statusCode >= 200 && statusCode < 300) {
      return response;
    } else {
      return response;
    }
  }
}
