// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'privacy_policy_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PrivacyPolicyModel _$PrivacyPolicyModelFromJson(Map<String, dynamic> json) =>
    PrivacyPolicyModel(
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : HelpSupportData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PrivacyPolicyModelToJson(PrivacyPolicyModel instance) =>
    <String, dynamic>{
      'message': instance.message,
      'data': instance.data,
    };
