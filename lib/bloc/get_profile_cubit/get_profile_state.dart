import 'package:salute_medical/data/models/get_profile_model/get_profile_model.dart';

abstract class GetProfileStates {}

class GETProfileIntialState extends GetProfileStates {}

class GetProfileLoadingState extends GetProfileStates {}

class GetProfileErrorState extends GetProfileStates {
  final String? error;

  GetProfileErrorState({this.error});
}

class GetProfileSuccessState extends GetProfileStates {
  final GetProfileModel? model;

  GetProfileSuccessState({this.model});
}
