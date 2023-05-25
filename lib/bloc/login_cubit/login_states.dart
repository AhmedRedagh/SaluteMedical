import 'package:salute_medical/data/models/login_models/login_models.dart';

abstract class LoginStates {}

class LoginInitialStates extends LoginStates {}

class LoginLoadingStates extends LoginStates {}

class LoginSuccessStates extends LoginStates {
  LoginModels? loginModels;
  LoginSuccessStates({this.loginModels});
}

class LoginErrorStates extends LoginStates {
  final String? error;
  LoginErrorStates({this.error});
}
