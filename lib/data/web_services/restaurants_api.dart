import 'package:dio/dio.dart';

class RestaurantApi {
  late Dio dio;

  RestaurantApi() {
    BaseOptions options = BaseOptions(
      baseUrl: 'http://88.198.204.250:8081/api/',
      receiveDataWhenStatusError: true,
    );
    dio = Dio(options);
  }

  Future<List<dynamic>> getAllRestaurants() async {
    try {
      Response response = await dio.get('Restaurants');
      print(response.data.toString());
      return response.data;
    } catch (e) {
      print(e.toString());
      return [];
    }
  }
}
