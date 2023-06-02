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
      print(updatedProfile);
      final request = await _dio.post(url: Config.editProfile, body: {
        'city_id': updatedProfile!.cityId,
        'first_name': updatedProfile.firstName,
        'last_name': updatedProfile.lastName,
        'username': updatedProfile.username,
        'email': updatedProfile.email,
        'phone': updatedProfile.phone,
        'date_of_birth': updatedProfile.birthdate,
        'password': updatedProfile.password,
        'password_confirmed': updatedProfile.password,
      }, headers: {
        'Accept': 'application/json',
        'Content-Type': 'application/json',
        'Authorization': "Bearer $loginToken"
      });
      debugPrint(loginToken);
      debugPrint("request--- ${request.data}");
      UpdateProfileModel model;
      Map<String, dynamic>? errors;

      if (request.statusCode == 200) {
        model = UpdateProfileModel.fromJson(request.data);
        debugPrint(' ${model.message}--------------');
      } else {
        errors = {
          'message': request.data['message'],
          'errors': request.data['errors'],
        };
        model = UpdateProfileModel(errors: errors);
      }
      return model;
    } catch (e) {
      return UpdateProfileModel(message: e.toString());
    }
  }
}
