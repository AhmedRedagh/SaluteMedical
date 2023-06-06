import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:salute_medical/bloc/get_profile_cubit/get_profile_state.dart';
import 'package:salute_medical/data/repo/get_profile_repo.dart';

class GetProfileCubit extends Cubit<GetProfileStates> {
  GetProfileCubit() : super(GETProfileIntialState());
  final _getProfile = GetProfileRepo();

  Future<void> getProfile() async {
    emit(GetProfileLoadingState());
    final response = await _getProfile.repo();
    debugPrint('=========================5225252 ${response.message} ');

    if (response.message != "Unauthenticated") {
      emit(GetProfileSuccessState(model: response));
    } else {
      debugPrint(response.toString());
      emit(GetProfileErrorState(error: response.message));
    }
  }
}
