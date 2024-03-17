import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled/core/constance/app_router.dart';
import 'package:untitled/presentation/business_logic/booking_cubit.dart';
import 'package:untitled/presentation/business_logic/login_cubit.dart';
import 'package:untitled/presentation/business_logic/restaurants_cubit.dart';
import 'package:untitled/presentation/business_logic/signup_cubit.dart';
import 'package:untitled/presentation/user_interface/screens/auth_screens/login_screen.dart';
import 'data/repository/booking_repo.dart';
import 'data/repository/restaurant_repo.dart';
import 'data/web_services/booking_api.dart';
import 'data/web_services/restaurants_api.dart';

void main() {
  runApp(MultiBlocProvider(
    providers: [
      BlocProvider(
        create: (context) =>
            BookingCubit(BookingRepo(BookingApi()))..getAllBooking(),
      ),
      BlocProvider(
        create: (context) => RestaurantsCubit(RestaurantRepo(RestaurantApi())),
      ),
      BlocProvider(
        create: (context) => LoginCubit(),
      ),
      BlocProvider(
        create: (context) => SignupCubit(),
      ),
    ],
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: RouteGenerator.getRoute,
      initialRoute: Routes.home,
      theme: ThemeData(useMaterial3: true),
    );
  }
}
