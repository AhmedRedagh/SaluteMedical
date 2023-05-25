// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_driver_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoginDriverModels _$LoginDriverModelsFromJson(Map<String, dynamic> json) =>
    LoginDriverModels(
      json['api_token'] as String?,
      json['id'] as int?,
      json['city'] as String?,
      json['first_name'] as String?,
      json['last_name'] as String?,
      json['username'] as String?,
      json['phone'] as String?,
      json['email'] as String?,
      json['birthdate'] as String?,
      json['created_at'] as String?,
      json['updated_at'] as String?,
    );

Map<String, dynamic> _$LoginDriverModelsToJson(LoginDriverModels instance) =>
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
    };
