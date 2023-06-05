// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'term_condition_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TermConditionModel _$TermConditionModelFromJson(Map<String, dynamic> json) =>
    TermConditionModel(
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : TermConditionData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TermConditionModelToJson(TermConditionModel instance) =>
    <String, dynamic>{
      'message': instance.message,
      'data': instance.data,
    };
