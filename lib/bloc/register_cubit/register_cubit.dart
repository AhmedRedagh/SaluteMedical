import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:salute_medical/bloc/register_cubit/register_states.dart';
import 'package:salute_medical/config/theme_colors.dart';

class RegisterCubit extends Cubit<RegisterStates> {
  RegisterCubit() : super(RegisterInitialState());
  String? phoneNumber;
  Color codeBtnColor = TColor.iconGary;
  final registerFormKey = GlobalKey<FormState>();
  void colorToggle() {
    if (registerFormKey.currentState!.validate()) {
      codeBtnColor = Colors.blue;
    } else {
      codeBtnColor = TColor.iconGary;
    }
    emit(RegisterColorToggleState());
  }
}
