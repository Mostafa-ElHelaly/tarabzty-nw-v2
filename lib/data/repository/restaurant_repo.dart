import '../models/restaurants_class.dart';
import '../web_services/restaurants_api.dart';

class RestaurantRepo {
  final RestaurantApi restaurantApi;

  RestaurantRepo(this.restaurantApi);

  Future<List<RestaurantModel>> getAllRestaurants() async {
    final restaurants = await restaurantApi.getAllRestaurants();
    return restaurants
        .map((restaurant) => RestaurantModel.fromJson(restaurant))
        .toList();
  }
}
