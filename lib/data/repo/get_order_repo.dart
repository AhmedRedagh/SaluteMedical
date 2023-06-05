// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:salute_medical/config/confige.dart';
import 'package:salute_medical/config/network_service.dart';
import 'package:salute_medical/data/models/trip_request_models/trip_details_model.dart';

class GetOrderRepo {
  final _dio = NetworkService();

  Future<TripDetailsModel> getOrder() async {
    try {
      final request = await _dio.get(url: Config.getOrders, isAuth: true);
      debugPrint(request.data);

      TripDetailsModel OrderModel;

      if (request.statusCode == 200) {
        OrderModel = TripDetailsModel.fromJson(request.data);
        return OrderModel;
      } else {
        OrderModel = TripDetailsModel.fromJson(request.data);
      }
      return OrderModel;
    } catch (e) {
      debugPrint("catch error ${e.toString()}");
      return TripDetailsModel(message: e.toString());
    }
  }
}
