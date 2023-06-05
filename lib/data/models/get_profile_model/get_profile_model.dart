// ignore_for_file: depend_on_referenced_packages

import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import 'get_profile_data_model.dart';

part 'get_profile_model.g.dart';

@JsonSerializable()
class GetProfileModel extends Equatable {
  final String? message;
  final GetProfileData? data;

  const GetProfileModel({
    this.message,
    this.data,
  });

  factory GetProfileModel.fromJson(Map<String, dynamic> json) {
    return _$GetProfileModelFromJson(json);
  }
  Map<String, dynamic> toJson() => _$GetProfileModelToJson(this);

  @override
  List<Object?> get props => [
        {message, data}
      ];
}
