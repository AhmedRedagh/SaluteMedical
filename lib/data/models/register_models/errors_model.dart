import 'package:equatable/equatable.dart';
// ignore: depend_on_referenced_packages
import 'package:json_annotation/json_annotation.dart';
import 'package:salute_medical/data/models/register_models/error_type.dart';
part 'errors_model.g.dart';

@JsonSerializable()
class ErrorsModel extends Equatable {
  final String? message;
  final ErrorType? errors;

  const ErrorsModel({this.message, this.errors});
  factory ErrorsModel.fromJson(Map<String, dynamic> json) {
    return _$ErrorsModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ErrorsModelToJson(this);

  @override
  List<Object?> get props => [message, errors];
}
