import 'package:salute_medical/data/models/login_models/login_models.dart';

abstract class VerificationStates {}

class VerificationInitialStates extends VerificationStates {}

class VerificationLoadingStates extends VerificationStates {}

class VerificationSuccessStates extends VerificationStates {
  LoginModels? verifyModels;
  VerificationSuccessStates({this.verifyModels});
}

class VerificationErrorStates extends VerificationStates {
  final String? error;
  VerificationErrorStates({this.error});
}

class ChangeCodeState extends VerificationStates {}
