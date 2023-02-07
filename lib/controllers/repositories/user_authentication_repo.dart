import 'package:dio/dio.dart';
import 'package:rentaroof_agent/controllers/repositories/api/api.dart';

class UserAuthRepo {
  API api = API();

  void userSignup(name, email, mobile, role, password, category) async {
    try {
      Response response = await api.sendRequest.post("/user/signup", data: {
        "name": name,
        "email": email,
        "mobile": mobile,
        "role": role,
        "password": password,
        "category": category
      });
    } catch (e) {
      rethrow;
    }
  }
}
