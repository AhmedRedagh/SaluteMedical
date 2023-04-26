import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:salute_medical/bloc/register_cubit/register_states.dart';

class RegisterCubit extends Cubit<RegisterStates> {
  RegisterCubit() : super(RegisterInitialState());
}
