import 'package:salute_medical/config/confige.dart';
import 'package:salute_medical/config/network_service.dart';
import 'package:salute_medical/data/models/login_models/login_models.dart';

class LogingRepo {
  final _dio = NetworkService();

  Future<LoginModels> repo({
    String? phone,
    String? password,
  }) async {
    try {
      final _request = await _dio.post(url: Config.login, body: {
        "phone": phone,
        "password": password,
      });
      LoginModels? loginModels;
      if (_request.statusCode == 200) {
        loginModels = LoginModels.fromJson(_request.data);
      } else {
        loginModels = LoginModels.fromJson(_request.data);
      }
      return loginModels;
    } catch (e) {
      print("catch error ${e.toString()}");
      return LoginModels(message: e.toString());
    }
  }
}
