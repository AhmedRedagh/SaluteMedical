import 'package:salute_medical/data/models/trip_request_models/trip_details_model.dart';

abstract class GetOrderStates {}

class GetOrderIntialState extends GetOrderStates {}

class GetOrderLoadingState extends GetOrderStates {}

class GetOrderErrorState extends GetOrderStates {
  final String? error;

  GetOrderErrorState({this.error});
}

class GetOrderSuccessState extends GetOrderStates {
  final TripDetailsModel? model;

  GetOrderSuccessState({this.model});
}
