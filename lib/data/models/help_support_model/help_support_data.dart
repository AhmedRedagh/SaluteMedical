// ignore_for_file: unnecessary_this, non_constant_identifier_names, depend_on_referenced_packages

import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'help_support_data.g.dart';

@JsonSerializable()
class HelpSupportData extends Equatable {
  final int? id;
  final String? name;
  final String? title;
  final String? description;
  final String? created_at;
  final String? updated_at;

  const HelpSupportData(
    this.id,
    this.name,
    this.title,
    this.description,
    this.created_at,
    this.updated_at,
  );

  factory HelpSupportData.fromJson(Map<String, dynamic> json) {
    return _$HelpSupportDataFromJson(json);
  }

  Map<String, dynamic> toJson() => _$HelpSupportDataToJson(this);

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
