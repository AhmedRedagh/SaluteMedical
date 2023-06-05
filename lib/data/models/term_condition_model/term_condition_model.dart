



import 'package:equatable/equatable.dart';
import 'package:salute_medical/data/models/term_condition_model/term_condition_data.dart';
import 'package:json_annotation/json_annotation.dart';

part 'term_condition_model.g.dart';

@JsonSerializable()
class TermConditionModel extends Equatable {
  final String? message;
  final TermConditionData? data ;

  const TermConditionModel({
    this.message,
    this.data,
  });

  factory TermConditionModel.fromJson(Map<String, dynamic> json) {
    return _$TermConditionModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$TermConditionModelToJson(this);

  @override
  List<Object?> get props => [
    {
      message,
      data
    }
  ];
}