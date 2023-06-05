// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trip_details_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TripDetailsModel _$TripDetailsModelFromJson(Map<String, dynamic> json) =>
    TripDetailsModel(
      data: json['data'] as List<dynamic>?,
      message: json['message'] as String?,
    );

Map<String, dynamic> _$TripDetailsModelToJson(TripDetailsModel instance) =>
    <String, dynamic>{
      'message': instance.message,
      'data': instance.data,
    };
