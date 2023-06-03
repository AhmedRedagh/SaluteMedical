

// ignore_for_file: non_constant_identifier_names

import 'package:equatable/equatable.dart';
// ignore: depend_on_referenced_packages
import 'package:json_annotation/json_annotation.dart';

part 'term_condition_data.g.dart';

@JsonSerializable()
class TermConditionData extends Equatable {
  final int? id;
  final String? name;
  final String? title;
  final String? description;
  final String? created_at;
  final String? updated_at;

  const TermConditionData(
      this.id,
      this.name,
      this.title,
      this.description,
      this.created_at,
      this.updated_at
      );

  factory TermConditionData.fromJson(Map<String, dynamic> json) {
    return _$TermConditionDataFromJson(json);
  }

  Map<String, dynamic> toJson() => _$TermConditionDataToJson(this);
  @override
  List<Object?> get props => [
    {
      id,
      name,
      title,
      description,
      created_at,
      updated_at
    }
  ];
}