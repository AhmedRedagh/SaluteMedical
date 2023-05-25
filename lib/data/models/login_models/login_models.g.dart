// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoginModels _$LoginModelsFromJson(Map<String, dynamic> json) => LoginModels(
      message: json['message'] as String?,
      loginDriverModels: json['loginDriverModels'] == null
          ? null
          : LoginDriverModels.fromJson(
              json['loginDriverModels'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$LoginModelsToJson(LoginModels instance) =>
    <String, dynamic>{
      'message': instance.message,
      'loginDriverModels': instance.loginDriverModels,
    };
