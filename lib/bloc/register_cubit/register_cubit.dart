import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:salute_medical/bloc/register_cubit/register_states.dart';
import 'package:salute_medical/config/theme_colors.dart';
import 'package:salute_medical/data/repo/register_repo.dart';

class RegisterCubit extends Cubit<RegisterStates> {
  final _registerRepo = RegisterRepo();
  RegisterCubit() : super(RegisterInitialState());

  Color codeBtnColor = TColor.iconGary;
  final registerFormKey = GlobalKey<FormState>();
  // void colorToggle() {
  //   if (registerFormKey.currentState!.validate()) {
  //     codeBtnColor = Colors.blue;
  //   } else {
  //     codeBtnColor = TColor.iconGary;
  //   }
  //   emit(RegisterColorToggleState());
  // }

  Future<void> register({
    String? phone,
    String? password,
    String? email,
  }) async {
    emit(RegisterLoadingState());
    final response = await _registerRepo.repo(
        phone: phone, password: password, email: email);
    if (response.message ==
        "Register Successfully And Must verfiy yor Account By sms code") {
      emit(RegisterSuccessState(model: response));
    } else {
      emit(RegisterErrorState(error: response.message));
    }
  }
}
