// ignore_for_file: depend_on_referenced_packages

import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'update_profile_model.g.dart';

@JsonSerializable()
class UpdateProfileModel extends Equatable {
  final String? message;
  final Map<String, dynamic>? errors;

  const UpdateProfileModel({
    this.errors,
    this.message,
  });

  factory UpdateProfileModel.fromJson(Map<String, dynamic> json) {
    return _$UpdateProfileModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$UpdateProfileModelToJson(this);

  @override
  List<Object?> get props => [message, errors];
}
