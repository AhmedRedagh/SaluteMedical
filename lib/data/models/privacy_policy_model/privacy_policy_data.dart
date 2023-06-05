// ignore_for_file: unnecessary_this, depend_on_referenced_packages, non_constant_identifier_names

import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'privacy_policy_data.g.dart';

@JsonSerializable()
class PrivacyPolicyData extends Equatable {
  final int? id;
  final String? name;
  final String? title;
  final String? description;
  final String? created_at;
  final String? updated_at;

  const PrivacyPolicyData(
    this.id,
    this.name,
    this.title,
    this.description,
    this.created_at,
    this.updated_at,
  );

  factory PrivacyPolicyData.fromJson(Map<String, dynamic> json) {
    return _$PrivacyPolicyDataFromJson(json);
  }

  Map<String, dynamic> toJson() => _$PrivacyPolicyDataToJson(this);

  @override
  List<Object?> get props => [
        this.id,
        this.name,
        this.title,
        this.description,
        this.created_at,
        this.updated_at,
      ];
}
