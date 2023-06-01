import 'package:salute_medical/data/models/help_support_model/help_support_model.dart';

abstract class HelpSupportStates {}

class HelpSupportIntialState extends HelpSupportStates {}

class HelpSupportLoadingState extends HelpSupportStates {}

class HelpSupportSuccessState extends HelpSupportStates {
  final HelpSupportModel? model;

  HelpSupportSuccessState({this.model});
}

class HelpSupportErrorState extends HelpSupportStates {
  final String? error;

  HelpSupportErrorState({this.error});
}
