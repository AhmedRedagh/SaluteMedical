// ignore_for_file: depend_on_referenced_packages, non_constant_identifier_names

import 'package:equatable/equatable.dart';

import 'package:json_annotation/json_annotation.dart';
import 'package:salute_medical/data/models/help_support_model/help_support_data.dart';

part 'privacy_policy_model.g.dart';

@JsonSerializable()
class PrivacyPolicyModel extends Equatable {
  final String? message;
  final HelpSupportData? data;

  const PrivacyPolicyModel({
    this.message,
    this.data,
  });

  factory PrivacyPolicyModel.fromJson(Map<String, dynamic> json) {
    return _$PrivacyPolicyModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$PrivacyPolicyModelToJson(this);

  @override
  List<Object?> get props => [message, data];
}
