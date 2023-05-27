import 'package:salute_medical/data/models/register_models/register_models.dart';

abstract class RegisterStates {}

class RegisterInitialState extends RegisterStates {}

class RegisterLoadingState extends RegisterStates {}

class RegisterSuccessState extends RegisterStates {
  RegisterModels? model;
  RegisterSuccessState({this.model});
}

class RegisterErrorState extends RegisterStates {
  String? error;
  RegisterErrorState({this.error});
}

class RegisterColorToggleState extends RegisterStates {}
