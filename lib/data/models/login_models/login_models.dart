// ignore_for_file: depend_on_referenced_packages

import 'package:equatable/equatable.dart';
import 'package:salute_medical/data/models/login_models/login_driver_models.dart';

import 'package:json_annotation/json_annotation.dart';

part 'login_models.g.dart';

@JsonSerializable()
class LoginModels extends Equatable {
  final String? message;
  final LoginDriverModels? driver;

  const LoginModels({
    this.message,
    this.driver,
  });

  factory LoginModels.fromJson(Map<String, dynamic> json) {
    return _$LoginModelsFromJson(json);
  }

  Map<String, dynamic> toJson() => _$LoginModelsToJson(this);

  @override
  List<Object?> get props => [
        driver,
        message,
      ];
}
