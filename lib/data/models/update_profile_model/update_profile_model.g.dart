// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_profile_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdateProfileModel _$UpdateProfileModelFromJson(Map<String, dynamic> json) =>
    UpdateProfileModel(
      errors: json['errors'] as Map<String, dynamic>?,
      message: json['message'] as String?,
    );

Map<String, dynamic> _$UpdateProfileModelToJson(UpdateProfileModel instance) =>
    <String, dynamic>{
      'message': instance.message,
      'errors': instance.errors,
    };
