// ignore_for_file: depend_on_referenced_packages

import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'trip_details_model.g.dart';

@JsonSerializable()
class TripDetailsModel extends Equatable {
  final String? message;
  final List? data;

  const TripDetailsModel({this.data, this.message});

  factory TripDetailsModel.fromJson(Map<String, dynamic> json) {
    return _$TripDetailsModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$TripDetailsModelToJson(this);

  @override
  List<Object?> get props => [message, data];
}
