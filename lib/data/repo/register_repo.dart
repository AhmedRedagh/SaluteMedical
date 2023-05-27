import 'package:salute_medical/config/confige.dart';
import 'package:salute_medical/config/network_service.dart';
import 'package:salute_medical/data/models/register_models/register_models.dart';

class RegisterRepo {
  final _dio = NetworkService();

  Future<RegisterModels> repo({
    String? phone,
    String? email,
    String? password,
  }) async {
    try {
      final request = await _dio.post(
        url: Config.register,
        body: {
          'phone': phone,
          'email': email,
          'password': password,
        },
      );
      RegisterModels model;

      if (request.statusCode == 200) {
        model = RegisterModels.fromJson(request.data);
      } else {
        model = RegisterModels.fromJson(request.data);
      }
      return model;
    } catch (e) {
      return RegisterModels(message: e.toString());
    }
  }
}
