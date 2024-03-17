part of 'restaurants_cubit.dart';

@immutable
abstract class RestaurantsState {}

class RestaurantsInitial extends RestaurantsState {}

class RestaurantsLoaded extends RestaurantsState {
  final List<RestaurantModel> restaurants;

  RestaurantsLoaded(this.restaurants);

}


// class RestaurantsError extends RestaurantsState {}
