import 'package:salute_medical/data/models/privacy_policy_model/privacy_policy_model.dart';

abstract class PrivacyPolicyStates {}

class PrivacyPolicyInitialState extends PrivacyPolicyStates {}

class PrivacyPolicyLoadingState extends PrivacyPolicyStates {}

class PrivacyPolicySuccessState extends PrivacyPolicyStates {
  final PrivacyPolicyModel? model;

  PrivacyPolicySuccessState({this.model});
}

class PrivacyPolicyErrorState extends PrivacyPolicyStates {
  final String? error;

  PrivacyPolicyErrorState({this.error});
}
