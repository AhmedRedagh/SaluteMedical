import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:salute_medical/bloc/welcome_cubit/welcome_states.dart';
import 'package:salute_medical/views/screens/RegisterScreen/register_screen.dart';

class WelcomeCubit extends Cubit<WelcomeStates> {
  WelcomeCubit() : super(IntialWelcomeState());
  static WelcomeCubit get(context) => BlocProvider.of(context);

  regNav(context) {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const RegisterScreen(),
        ));
    emit(RegNavState());
    debugPrint('hi');
  }
}
