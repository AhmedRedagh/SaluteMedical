import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:salute_medical/bloc/login_cubit/login_states.dart';
import 'package:salute_medical/bloc/verification_cubit/verification_state.dart';
import 'package:salute_medical/data/repo/verification_repo.dart';

class VerificationCubit extends Cubit<LoginStates> {
  final _verificationRepo = VerificationRepo();
  VerificationCubit() : super(VerificationInitialStates() as LoginStates);

  Future<void> login({
    String? phone,
    String? code,
  }) async {
    emit(LoginLoadingStates());
    final response = await _verificationRepo.repo(phone: phone, code: code);
    if (response.message == "Successfully Veryfied Code") {
      emit(VerificationSuccessStates(verifyModels: response) as LoginStates);
    } else {
      emit(VerificationErrorStates(error: response.message) as LoginStates);
    }
  }
}
