// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'help_support_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HelpSupportModel _$HelpSupportModelFromJson(Map<String, dynamic> json) =>
    HelpSupportModel(
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : HelpSupportData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$HelpSupportModelToJson(HelpSupportModel instance) =>
    <String, dynamic>{
      'message': instance.message,
      'data': instance.data,
    };
