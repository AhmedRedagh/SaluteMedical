import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:salute_medical/bloc/privacy_policy_cubit/privacy_policy_states.dart';
import 'package:salute_medical/data/repo/privacy_policy_repo.dart';

class PrivacyPolicyCubit extends Cubit<PrivacyPolicyStates> {
  PrivacyPolicyCubit() : super(PrivacyPolicyLoadingState());
  final _getPrivacyPolicy = PrivacyPolicyRepo();

  Future<void> privacyPolicy() async {
    emit(PrivacyPolicyLoadingState());
    final response = await _getPrivacyPolicy.repo();
    debugPrint('=========================5225252 ${response.data} ');

    if (response.message == "Edit Successfully") {
      emit(PrivacyPolicySuccessState(model: response));
    } else {
      debugPrint(response.toString());
      emit(PrivacyPolicyErrorState(error: response.message));
    }
  }
}
