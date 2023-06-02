import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:salute_medical/bloc/help_support_cubit/help_support_states.dart';
import 'package:salute_medical/data/repo/help_support_repo.dart';

class HelpSupportCubit extends Cubit<HelpSupportStates> {
  HelpSupportCubit() : super(HelpSupportIntialState());
  final _getHelpSupportRepo = HelpSupportRepo();

  Future<void> getHelpSupport() async {
    emit(HelpSupportLoadingState());
    final response = await _getHelpSupportRepo.repo();
    debugPrint('=========================5225252 ${response.data} ');

    if (response.message == "Edit Successfully") {
      emit(HelpSupportSuccessState(model: response));
    } else {
      debugPrint(response.toString());
      emit(HelpSupportErrorState(error: response.message));
    }
  }
}