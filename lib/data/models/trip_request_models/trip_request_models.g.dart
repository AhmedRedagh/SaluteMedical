// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trip_request_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TripRequestModels _$TripRequestModelsFromJson(Map<String, dynamic> json) =>
    TripRequestModels(
      member_name: json['member_name'] as String?,
      member_age: json['member_age'] as int?,
      trip_id: json['trip_id'] as String?,
      trip_name: json['trip_name'] as String?,
      trip_type: json['trip_type'] as String?,
      client_name: json['client_name'] as String?,
      pickup_time: json['pickup_time'] as String?,
      pickup_address: json['pickup_address'] as String?,
      pickup_phone: json['pickup_phone'] as String?,
      pickup_street: json['pickup_street'] as String?,
      pickup_city: json['pickup_city'] as String?,
      pickup_state: json['pickup_state'] as String?,
      pickup_zip: json['pickup_zip'] as String?,
      pickup_notes: json['pickup_notes'] as String?,
      dropoff_time: json['dropoff_time'] as String?,
      dropoff_address: json['dropoff_address'] as String?,
      dropoff_phone: json['dropoff_phone'] as String?,
      dropoff_street: json['dropoff_street'] as String?,
      dropoff_city: json['dropoff_city'] as String?,
      dropoff_state: json['dropoff_state'] as String?,
      dropoff_zip: json['dropoff_zip'] as String?,
      dropoff_notes: json['dropoff_notes'] as String?,
      car_seats: json['car_seats'] as String?,
      miles: json['miles'] as String?,
      status: json['status'] as String?,
      type: json['type'] as String?,
      is_rejected: json['is_rejected'] as String?,
    );

Map<String, dynamic> _$TripRequestModelsToJson(TripRequestModels instance) =>
    <String, dynamic>{
      'member_name': instance.member_name,
      'member_age': instance.member_age,
      'trip_id': instance.trip_id,
      'trip_name': instance.trip_name,
      'trip_type': instance.trip_type,
      'client_name': instance.client_name,
      'pickup_time': instance.pickup_time,
      'pickup_address': instance.pickup_address,
      'pickup_phone': instance.pickup_phone,
      'pickup_street': instance.pickup_street,
      'pickup_city': instance.pickup_city,
      'pickup_state': instance.pickup_state,
      'pickup_zip': instance.pickup_zip,
      'pickup_notes': instance.pickup_notes,
      'dropoff_time': instance.dropoff_time,
      'dropoff_address': instance.dropoff_address,
      'dropoff_phone': instance.dropoff_phone,
      'dropoff_street': instance.dropoff_street,
      'dropoff_city': instance.dropoff_city,
      'dropoff_state': instance.dropoff_state,
      'dropoff_zip': instance.dropoff_zip,
      'dropoff_notes': instance.dropoff_notes,
      'car_seats': instance.car_seats,
      'miles': instance.miles,
      'status': instance.status,
      'type': instance.type,
      'is_rejected': instance.is_rejected,
    };
