import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'error_type.g.dart';

@JsonSerializable()
class ErrorType extends Equatable {
  final List<dynamic>? email;
  final List<dynamic>? password;

  const ErrorType({this.email, this.password});

  factory ErrorType.fromJson(Map<String, dynamic> json) {
    return _$ErrorTypeFromJson(json);
  }
  Map<String, dynamic> toJson() => _$ErrorTypeToJson(this);
  @override
  // TODO: implement props
  List<Object?> get props => [email, password];
}
