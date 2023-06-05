import 'package:equatable/equatable.dart';
// ignore: depend_on_referenced_packages
import 'package:json_annotation/json_annotation.dart';

part 'get_profile_data_model.g.dart';

@JsonSerializable()
class GetProfileData extends Equatable {
  final String? api_token;
  final int? id;
  final Map<String, dynamic>? city;
  final String? first_name;
  final String? last_name;
  final String? username;
  final String? phone;
  final String? email;
  final String? birthdate;
  final String? created_at;
  final String? updated_at;
  final String? code;
  final String? car;

  const GetProfileData({
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
    this.code,
    this.car,
  });
  factory GetProfileData.fromJson(Map<String, dynamic> json) {
    return _$GetProfileDataFromJson(json);
  }
  Map<String, dynamic> toJson() => _$GetProfileDataToJson(this);

  @override
  List<Object?> get props => [
        {
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
          code,
          car,
        }
      ];
}
