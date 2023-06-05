
import 'package:flutter/material.dart';
import 'package:salute_medical/config/confige.dart';
import 'package:salute_medical/config/network_service.dart';
import 'package:salute_medical/data/models/term_condition_model/term_condition_model.dart';

class TermConditionRepo {
  final _dio =NetworkService();

  Future<TermConditionModel> repo() async {
    try {
      final request = await _dio.get(
        isAuth: true,
        url: Config.termsConditions,
      );

      debugPrint("request ${request.data}");
      TermConditionModel? termConditionModel;

      if (request.statusCode == 200) {
        termConditionModel = TermConditionModel.fromJson(request.data);
      } else {
        termConditionModel = TermConditionModel.fromJson(request.data);
      }
      return termConditionModel;
    } catch (e) {
      debugPrint("catch error ${e.toString()}");
      return TermConditionModel(message: e.toString());
    }
  }
}