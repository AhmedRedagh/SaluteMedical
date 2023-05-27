import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'register_models.g.dart';

@JsonSerializable()
class RegisterModels extends Equatable {
  final String? message;
  final String? token;

  const RegisterModels({
    this.message,
    this.token,
  });

  factory RegisterModels.fromJson(Map<String, dynamic> json) {
    return _$RegisterModelsFromJson(json);
  }

  Map<String, dynamic> toJson() => _$RegisterModelsToJson(this);

  @override
  List<Object?> get props => [
        message,
        token,
      ];
}
