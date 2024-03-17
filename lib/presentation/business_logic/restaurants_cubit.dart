import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/models/restaurants_class.dart';
import '../../data/repository/restaurant_repo.dart';

part 'restaurants_state.dart';

class RestaurantsCubit extends Cubit<RestaurantsState> {
  late final RestaurantRepo restaurantRepo;

  late List<RestaurantModel> restaurants;

  RestaurantsCubit(this.restaurantRepo) : super(RestaurantsInitial());

  Future<List<RestaurantModel>> getAllRestaurants() async {
    restaurants = await restaurantRepo.getAllRestaurants();
    emit(RestaurantsLoaded(restaurants));

    return restaurants;
  }
}
