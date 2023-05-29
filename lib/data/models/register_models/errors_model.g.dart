// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'errors_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ErrorsModel _$ErrorsModelFromJson(Map<String, dynamic> json) => ErrorsModel(
      message: json['message'] as String?,
      errors: json['errors'] == null
          ? null
          : ErrorType.fromJson(json['errors'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ErrorsModelToJson(ErrorsModel instance) =>
    <String, dynamic>{
      'message': instance.message,
      'errors': instance.errors,
    };
