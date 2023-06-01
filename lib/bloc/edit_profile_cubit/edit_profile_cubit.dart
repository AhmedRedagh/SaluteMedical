import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:salute_medical/bloc/edit_profile_cubit/edit_profile_states.dart';
import 'package:salute_medical/data/repo/update_profile_repo.dart';
import '../../data/models/profile_info/profile_info.dart';

class EditProfileCubit extends Cubit<EditProfileStates> {
  EditProfileCubit() : super(EditProfileIntialState());
  final _editProfileRepo = UpdateProfileRepo();

  ProfileInfo profileInfo = ProfileInfo(
    1,
    'A',
    'ahmed reda',
    'username',
    '01009261284',
    'ahmedreda@gmail.com',
    '2-10-2023',
    "password",
    "password",
  );

  Future<void> profileUpdate({
    ProfileInfo? updatedProfile,
  }) async {
    emit(EditProfileLoadingState());
    final response = await _editProfileRepo.repo(updatedProfile: profileInfo);
    debugPrint('=========================5225252 ${response.message} ');

    if (response.message == "Edit Successfully") {
      emit(EditProfileSuccessState(model: response));
    } else {
      debugPrint(response.toString());
      emit(EditProfileErrorState(error: response.message));
    }
  }
}
