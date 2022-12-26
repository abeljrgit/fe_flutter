import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class UserAccountApi {
  final Dio _dio = Dio();
  final String _developmentSite = dotenv.env['DEVELOPMENT_SITE'] ?? '';

  dynamic loginUser(String emailInput, String passwordInput) async {
    try {
      Response response = await _dio.post(
        '$_developmentSite/crm/members/login',
        data: {
          'email': emailInput,
          'password': passwordInput,
        },
      );
      return response;
    } on DioError catch (e) {
      return e.response;
    }
  }
}
