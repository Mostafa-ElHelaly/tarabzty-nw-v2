import 'package:dio/dio.dart';
import '../models/login_class.dart';

class LoginApi {
  static Future<dynamic> Login(String email, String password) async {
    final dio = Dio();
    var url = "http://88.198.204.250:8081/api/Auth/token";
    Map<String, String> headers = {};
    headers.addAll({"Content-Type": "application/json"});
    var log = LoginModel(password: password, username: email);
    var data = log.toJson();
    try {
      dio.options.responseType = ResponseType.json;
      var response =
          await dio.post(url, data: data, options: Options(headers: headers));
      return response.data;
    } catch (e) {
      if (e is DioError &&
          e.response != null &&
          e.response!.statusCode == 400) {
        // Request failed with status code 400 (Bad Request)
        print('Bad Request: ${e.response!.statusCode}');
        print('Error data: ${e.response!.data}');
        return e.response!.data['errors']['Email'][0].toString();
      } else {
        // Other errors
        print('Error: $e');
      }
    }
  }
}
