// ignore_for_file: depend_on_referenced_packages, non_constant_identifier_names

import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'login_driver_models.g.dart';

@JsonSerializable()
class LoginDriverModels extends Equatable {
  final String? api_token;
  final int? id;
  final String? city;
  final String? first_name;
  final String? last_name;
  final String? username;
  final String? phone;
  final String? email;
  final String? birthdate;
  final String? created_at;
  final String? updated_at;

  const LoginDriverModels(
    this.api_token,
    this.id,
    this.city,
    this.first_name,
    this.last_name,
    this.username,
    this.phone,
    this.email,
    this.birthdate,
    this.created_at,
    this.updated_at,
  );

  factory LoginDriverModels.fromJson(Map<String, dynamic> json) {
    return _$LoginDriverModelsFromJson(json);
  }

  Map<String, dynamic> toJson() => _$LoginDriverModelsToJson(this);

  @override
  List<Object?> get props => [
        api_token,
        id,
        city,
        first_name,
        last_name,
        username,
        phone,
        email,
        birthdate,
        created_at,
        updated_at,
      ];
}
