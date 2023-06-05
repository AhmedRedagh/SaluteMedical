// ignore_for_file: depend_on_referenced_packages, non_constant_identifier_names

import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'trip_request_models.g.dart';

@JsonSerializable()
class TripRequestModels extends Equatable {
  final String? member_name;
  final int? member_age;
  final String? trip_id;
  final String? trip_name;
  final String? trip_type;
  final String? client_name;
  final String? pickup_time;
  final String? pickup_address;
  final String? pickup_phone;
  final String? pickup_street;
  final String? pickup_city;
  final String? pickup_state;
  final String? pickup_zip;
  final String? pickup_notes;
  final String? dropoff_time;
  final String? dropoff_address;
  final String? dropoff_phone;
  final String? dropoff_street;
  final String? dropoff_city;
  final String? dropoff_state;
  final String? dropoff_zip;
  final String? dropoff_notes;
  final String? car_seats;
  final String? miles;
  final String? status;
  final String? type;
  final String? is_rejected;

  const TripRequestModels({
    this.member_name,
    this.member_age,
    this.trip_id,
    this.trip_name,
    this.trip_type,
    this.client_name,
    this.pickup_time,
    this.pickup_address,
    this.pickup_phone,
    this.pickup_street,
    this.pickup_city,
    this.pickup_state,
    this.pickup_zip,
    this.pickup_notes,
    this.dropoff_time,
    this.dropoff_address,
    this.dropoff_phone,
    this.dropoff_street,
    this.dropoff_city,
    this.dropoff_state,
    this.dropoff_zip,
    this.dropoff_notes,
    this.car_seats,
    this.miles,
    this.status,
    this.type,
    this.is_rejected,
  });

  factory TripRequestModels.fromJson(Map<String, dynamic> json) {
    return _$TripRequestModelsFromJson(json);
  }

  Map<String, dynamic> toJson() => _$TripRequestModelsToJson(this);

  @override
  List<Object?> get props => [
        member_name,
        member_age,
        trip_id,
        trip_name,
        trip_type,
        client_name,
        pickup_time,
        pickup_address,
        pickup_phone,
        pickup_street,
        pickup_city,
        pickup_state,
        pickup_zip,
        pickup_notes,
        dropoff_time,
        dropoff_address,
        dropoff_phone,
        dropoff_street,
        dropoff_city,
        dropoff_state,
        dropoff_zip,
        dropoff_notes,
        car_seats,
        miles,
        status,
        type,
        is_rejected
      ];
}
