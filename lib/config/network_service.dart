import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:salute_medical/config/confige.dart';

import 'globals_variable.dart';

class NetworkService {
  final dio = Dio();

  Future<Response> get({
    required String? url,
    Map<String, String>? headers,
    Map<String, dynamic>? queryParameters,
    bool isAuth = false,
  }) async {
    // const token = '';
    final authHeaders = {
      'Authorization': "Bearer $loginToken",
      'Accept': 'application/json',
      'Content-Type': 'application/json',
    };
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
    bool isRegisterToken = false,
    String? registerToken,
    encoding,
  }) async {
    debugPrint('body => $body');
    const token = '';
    final authHeaders = {'Authorization': "Bearer $loginToken"};

    // headers = {'Accept-Language': 'en'};

    Response? response;
    dio.options.baseUrl = Config.baseUrl;
    try {
      response = await dio.post(
        url!,
        data: body,
        queryParameters: queryParameters,
        options: Options(
          headers: isRegisterToken == false
              ? isAuth
                  ? authHeaders
                  : headers
              : {'Authorization': "Bearer $registerToken"},
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
    debugPrint('body => $body');
    const token = '';
    final authHeaders = {'Authorization': "Bearer $loginToken"};

    // headers = {'Accept-Language': 'en'};

    Response? response;
    dio.options.baseUrl = "";
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
    debugPrint('body => $body');
    const token = '';
    final authHeaders = {'Authorization': "Bearer $loginToken"};
    // headers = {'Accept-Language': 'en'};
    Response? response;
    dio.options.baseUrl = "";
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
