// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RegisterModels _$RegisterModelsFromJson(Map<String, dynamic> json) =>
    RegisterModels(
      message: json['message'] as String?,
      token: json['token'] as String?,
      errors: json['errors'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$RegisterModelsToJson(RegisterModels instance) =>
    <String, dynamic>{
      'message': instance.message,
      'errors': instance.errors,
      'token': instance.token,
    };
