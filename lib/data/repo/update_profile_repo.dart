import 'package:flutter/material.dart';
import 'package:salute_medical/config/confige.dart';
import 'package:salute_medical/config/globals_variable.dart';
import 'package:salute_medical/config/network_service.dart';
import 'package:salute_medical/data/models/profile_info/profile_info.dart';
import 'package:salute_medical/data/models/update_profile_model/update_profile_model.dart';

class UpdateProfileRepo {
  final _dio = NetworkService();

  Future<UpdateProfileModel> repo({
    ProfileInfo? updatedProfile,
  }) async {
    try {
      final request = await _dio.post(
          url: Config.editProfile,
          body: {
            'city_id': updatedProfile!.cityId,
            'first_name': updatedProfile.firstName,
            'last_name': updatedProfile.lastName,
            'username': updatedProfile.username,
            'email': updatedProfile.email,
            'phone': updatedProfile.phone,
            'date_of_birth': updatedProfile.birthdate,
            'password': updatedProfile.password,
            'password_confirmed': updatedProfile.password,
          },
          isAuth: true,
          headers: {
            'Accept': 'application/json',
            'Content-Type': 'application/json',
            'Authorization': "Bearer $loginToken"
          });

      debugPrint("request ${request.data}");
      UpdateProfileModel model;

      if (request.statusCode == 200) {
        model = UpdateProfileModel.fromJson(request.data);
        debugPrint(' ${model.message}--------------');
      } else {
        model = UpdateProfileModel.fromJson(request.data);
      }
      return model;
    } catch (e) {
      return UpdateProfileModel(message: e.toString());
    }
  }
}
