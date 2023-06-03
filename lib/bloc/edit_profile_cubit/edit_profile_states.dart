import 'package:salute_medical/data/models/update_profile_model/update_profile_model.dart';

abstract class EditProfileStates {}

class EditProfileIntialState extends EditProfileStates {}

class EditProfileLoadingState extends EditProfileStates {}

class EditProfileErrorState extends EditProfileStates {
  final String? error;

  EditProfileErrorState({this.error});
}

class EditProfileSuccessState extends EditProfileStates {
  final UpdateProfileModel? model;

  EditProfileSuccessState({this.model});
}
