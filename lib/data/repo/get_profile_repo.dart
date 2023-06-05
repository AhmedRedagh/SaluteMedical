import 'package:flutter/material.dart';
import 'package:salute_medical/config/confige.dart';
import 'package:salute_medical/config/network_service.dart';
import 'package:salute_medical/data/models/get_profile_model/get_profile_model.dart';

class GetProfileRepo {
  final _dio = NetworkService();

  Future<GetProfileModel> repo() async {
    try {
      final request = await _dio.get(
        url: Config.getProfile,
        isAuth: true,
      );

      debugPrint("request ${request.data}");
      GetProfileModel? getProfileModel;

      if (request.statusCode == 200) {
        getProfileModel = GetProfileModel.fromJson(request.data);
      } else {
        getProfileModel = GetProfileModel.fromJson(request.data);
      }
      return getProfileModel;
    } catch (e) {
      debugPrint("catch error ${e.toString()}");
      return GetProfileModel(message: e.toString());
    }
  }
}
