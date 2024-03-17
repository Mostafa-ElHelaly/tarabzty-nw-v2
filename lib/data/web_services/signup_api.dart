import 'package:dio/dio.dart';
import '../models/signup_class.dart';
class SignupApi {

  static Future<dynamic> Signup(
    String firstName,
    String lastName,
    String phoneNumber,
    DateTime dateOfBirth,
    String email,
    String password,
    String confirmPassword,
  ) async {
    final dio = Dio();
    var url = "http://88.198.204.250:8081/api/Auth/register";
    Map<String, String> headers = {};
    headers.addAll({"Content-Type": "application/json"});
    var log = SignupModel(
        firstName: firstName,
        lastName: lastName,
        phoneNumber: phoneNumber,
        dateOfBirth: dateOfBirth,
        email: email,
        password: password,
        confirmPassword: confirmPassword);
    var data = log.toJson();
    try {
      dio.options.responseType = ResponseType.json;
      var response = await dio.post(
          url,
          data:data,
          options: Options(headers: headers));
      return response.data;
    } catch (e) {
      if (e is DioError &&
          e.response != null &&
          e.response!.statusCode == 400) {
        print('Bad Request: ${e.response!.statusCode}');
        print('Error data: ${e.response!.data}');
        return e.response!.data.toString();
      } else {
        // Other errors
        print('Error: $e');
      }
    }
  }
}
