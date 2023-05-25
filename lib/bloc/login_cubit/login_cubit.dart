import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:salute_medical/bloc/login_cubit/login_states.dart';
import 'package:salute_medical/data/repo/login_repo.dart';

class LoginCubit extends Cubit<LoginStates> {
  final _loginRepo = LogingRepo();
  LoginCubit() : super(LoginInitialStates());

  Future<void> login({
    String? phone,
    String? password,
  }) async {
    emit(LoginLoadingStates());
    final response = await _loginRepo.repo(phone: phone, password: password);
    if (response.message == "Login Successfully") {
      emit(LoginSuccessStates(loginModels: response));
    } else {
      emit(LoginErrorStates(error: response.message));
    }
  }
}
