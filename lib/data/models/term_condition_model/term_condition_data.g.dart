// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'term_condition_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TermConditionData _$TermConditionDataFromJson(Map<String, dynamic> json) =>
    TermConditionData(
      json['id'] as int?,
      json['name'] as String?,
      json['title'] as String?,
      json['description'] as String?,
      json['created_at'] as String?,
      json['updated_at'] as String?,
    );

Map<String, dynamic> _$TermConditionDataToJson(TermConditionData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'title': instance.title,
      'description': instance.description,
      'created_at': instance.created_at,
      'updated_at': instance.updated_at,
    };
