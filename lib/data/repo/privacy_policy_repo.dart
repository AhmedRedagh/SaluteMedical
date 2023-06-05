import 'package:flutter/material.dart';
import 'package:salute_medical/config/confige.dart';
import 'package:salute_medical/config/network_service.dart';
import 'package:salute_medical/data/models/privacy_policy_model/privacy_policy_model.dart';

class PrivacyPolicyRepo {
  final _dio = NetworkService();

  Future<PrivacyPolicyModel> repo() async {
    try {
      final request = await _dio.get(
        url: Config.privacyPolicy,
      );

      debugPrint("request ${request.data}");
      PrivacyPolicyModel? privacyPolicyModel;

      if (request.statusCode == 200) {
        privacyPolicyModel = PrivacyPolicyModel.fromJson(request.data);
      } else {
        privacyPolicyModel = PrivacyPolicyModel.fromJson(request.data);
      }
      return privacyPolicyModel;
    } catch (e) {
      debugPrint("catch error ${e.toString()}");
      return PrivacyPolicyModel(message: e.toString());
    }
  }
}
