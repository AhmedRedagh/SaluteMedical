import 'package:flutter/material.dart';
import 'package:salute_medical/config/confige.dart';
import 'package:salute_medical/config/network_service.dart';
import 'package:salute_medical/data/models/login_models/login_models.dart';

class LogingRepo {
  final _dio = NetworkService();

  Future<LoginModels> repo({
    String? phone,
    String? password,
  }) async {
    try {
      final request = await _dio.post(
        url: Config.login,
        body: {
          "phone": phone,
          "password": password,
        },
      );

      debugPrint("request ${request.data}");
      LoginModels? loginModels;

      if (request.statusCode == 200) {
        loginModels = LoginModels.fromJson(request.data);
      } else {
        loginModels = LoginModels.fromJson(request.data);
      }
      return loginModels;
    } catch (e) {
      debugPrint("catch error ${e.toString()}");
      return LoginModels(message: e.toString());
    }
  }
}
