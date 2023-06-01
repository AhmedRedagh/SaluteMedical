// ignore_for_file: depend_on_referenced_packages

import 'package:equatable/equatable.dart';

class UpdateProfileModel extends Equatable {
  final String? message;

  const UpdateProfileModel({this.message});

  factory UpdateProfileModel.fromJson(Map<String, dynamic> json) {
    return UpdateProfileModel(message: json['message']);
  }

  @override
  List<Object?> get props => [
        message,
      ];
}
