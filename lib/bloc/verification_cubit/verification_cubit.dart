import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:salute_medical/bloc/verification_cubit/verification_state.dart';
import 'package:salute_medical/data/repo/verification_repo.dart';

class VerificationCubit extends Cubit<VerificationStates> {
  final _verificationRepo = VerificationRepo();
  VerificationCubit() : super(VerificationInitialStates());

  String? pinCode;

  static VerificationCubit get(context) => BlocProvider.of(context);

  /// get verification code
  Future<void> verify({
    String? phone,
    String? code,
  }) async {
    emit(VerificationLoadingStates());
    final response = await _verificationRepo.repo(phone: phone, code: code);
    if (response.message == "Successfully Veryfied Code") {
      emit(VerificationSuccessStates(verifyModels: response));
    } else {
      emit(VerificationErrorStates(error: response.message));
    }
  }

  /// set code
  void setCode(code) {
    debugPrint(" pin code $code");
    pinCode = code;
    emit(ChangeCodeState());
  }
}
