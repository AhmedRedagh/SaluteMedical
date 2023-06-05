import 'package:salute_medical/data/models/term_condition_model/term_condition_model.dart';

abstract class TermConditionState {}

class TermConditionInitialState extends TermConditionState{}

class TermConditionLoadState extends TermConditionState{}

class TermConditionSuccessState extends TermConditionState{
  final TermConditionModel? model ;

  TermConditionSuccessState({this.model});
}

class TermConditionErrorState extends TermConditionState{
  final String? error;

  TermConditionErrorState({this.error});

}




