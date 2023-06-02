// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_profile_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetProfileData _$GetProfileDataFromJson(Map<String, dynamic> json) =>
    GetProfileData(
      api_token: json['api_token'] as String?,
      id: json['id'] as int?,
      city: json['city'] as Map<String, dynamic>?,
      first_name: json['first_name'] as String?,
      last_name: json['last_name'] as String?,
      username: json['username'] as String?,
      phone: json['phone'] as String?,
      email: json['email'] as String?,
      birthdate: json['birthdate'] as String?,
      created_at: json['created_at'] as String?,
      updated_at: json['updated_at'] as String?,
      code: json['code'] as String?,
      car: json['car'] as String?,
    );

Map<String, dynamic> _$GetProfileDataToJson(GetProfileData instance) =>
    <String, dynamic>{
      'api_token': instance.api_token,
      'id': instance.id,
      'city': instance.city,
      'first_name': instance.first_name,
      'last_name': instance.last_name,
      'username': instance.username,
      'phone': instance.phone,
      'email': instance.email,
      'birthdate': instance.birthdate,
      'created_at': instance.created_at,
      'updated_at': instance.updated_at,
      'code': instance.code,
      'car': instance.car,
    };
