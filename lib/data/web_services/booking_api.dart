import 'package:dio/dio.dart';

class BookingApi {
  late Dio dio;

  BookingApi() {
    BaseOptions options = BaseOptions(
      baseUrl: 'http://88.198.204.250:8081/api/',
      receiveDataWhenStatusError: true,
    );
    dio = Dio(options);
  }

  Future<List<dynamic>> getAllBooking() async {
    try {
      Response response = await dio.get('Reservations');
      print(response.data.toString());
      return response.data;
    } catch (e) {
      print(e.toString());
      return [];
    }
  }
}
