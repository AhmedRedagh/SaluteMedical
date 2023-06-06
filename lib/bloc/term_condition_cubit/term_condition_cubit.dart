import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:salute_medical/bloc/term_condition_cubit/term_condition_states.dart';
import 'package:salute_medical/data/repo/term_condition_repo.dart';

class TermConditionCubit extends Cubit<TermConditionState> {
  TermConditionCubit() : super(TermConditionInitialState());
  String? title;
  final _getTermCondition = TermConditionRepo();

  Future<void> termCondition() async {
    emit(TermConditionLoadState());
    final response = await _getTermCondition.repo();
    debugPrint("==========================22222 ${response.data}");
    if (response.message != "Unauthenticated") {
      title = response.data!.title;
      emit(TermConditionSuccessState(model: response));
    } else {
      emit(TermConditionErrorState(error: response.message));
    }
  }
}
