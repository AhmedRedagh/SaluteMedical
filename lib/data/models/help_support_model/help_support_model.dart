// ignore_for_file: depend_on_referenced_packages, non_constant_identifier_names

import 'package:equatable/equatable.dart';

import 'package:json_annotation/json_annotation.dart';
import 'package:salute_medical/data/models/help_support_model/help_support_data.dart';

part 'help_support_model.g.dart';

@JsonSerializable()
class HelpSupportModel extends Equatable {
  final String? message;
  final HelpSupportData? data;

  const HelpSupportModel({
    this.message,
    this.data,
  });

  factory HelpSupportModel.fromJson(Map<String, dynamic> json) {
    return _$HelpSupportModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$HelpSupportModelToJson(this);

  @override
  List<Object?> get props => [message, data];
}
