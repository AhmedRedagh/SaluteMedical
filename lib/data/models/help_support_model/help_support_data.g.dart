// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'help_support_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HelpSupportData _$HelpSupportDataFromJson(Map<String, dynamic> json) =>
    HelpSupportData(
      json['id'] as int?,
      json['name'] as String?,
      json['title'] as String?,
      json['description'] as String?,
      json['created_at'] as String?,
      json['updated_at'] as String?,
    );

Map<String, dynamic> _$HelpSupportDataToJson(HelpSupportData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'title': instance.title,
      'description': instance.description,
      'created_at': instance.created_at,
      'updated_at': instance.updated_at,
    };
