// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoginModels _$LoginModelsFromJson(Map<String, dynamic> json) => LoginModels(
      message: json['message'] as String?,
      driver: json['driver'] == null
          ? null
          : LoginDriverModels.fromJson(json['driver'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$LoginModelsToJson(LoginModels instance) =>
    <String, dynamic>{
      'message': instance.message,
      'driver': instance.driver,
    };
