import 'package:flutter/material.dart';
import 'package:salute_medical/config/confige.dart';
import 'package:salute_medical/config/network_service.dart';
import 'package:salute_medical/data/models/help_support_model/help_support_model.dart';

class HelpSupportRepo {
  final _dio = NetworkService();

  Future<HelpSupportModel> repo() async {
    try {
      final request = await _dio.get(
        url: Config.helpSupport,
      );

      debugPrint("request ${request.data}-------------");
      HelpSupportModel? helpSupportModel;
      if (request.statusCode == 200) {
        helpSupportModel = HelpSupportModel.fromJson(request.data);
      } else {
        helpSupportModel = HelpSupportModel.fromJson(request.data);
      }
      return helpSupportModel;
    } catch (e) {
      debugPrint("catch error ${e.toString()}");
      return HelpSupportModel(message: e.toString());
    }
  }
}
