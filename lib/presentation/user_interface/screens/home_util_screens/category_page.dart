import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../data/models/restaurants_class.dart';
import '../../../business_logic/restaurants_cubit.dart';
import '../../widgets/appbar.dart';
import 'burger_category_card.dart';

class CategorySearch extends StatelessWidget {
  CategorySearch({super.key});

  List<RestaurantModel>? allRestaurants;

  Widget buildBlocWidget() {
    return BlocConsumer<RestaurantsCubit, RestaurantsState>(
      listener: (BuildContext context, RestaurantsState state) {
        if (state is! RestaurantsLoaded) {
          ScaffoldMessenger.of(context)
              .showSnackBar(const SnackBar(content: Text("Loading")));
        } else {
          allRestaurants = state.restaurants;
          ScaffoldMessenger.of(context)
              .showSnackBar(const SnackBar(content: Text("Loaded")));
        }
      },
      builder: (context, state) {
        if (state is RestaurantsLoaded) {
          return buildLoadedListWidgets();
        } else {
          return showLoadingIndicator();
        }
      },
    );
  }

  Widget showLoadingIndicator() {
    return const Center(
      child: CircularProgressIndicator(
        color: Colors.red,
      ),
    );
  }

  Widget buildLoadedListWidgets() {
    return SingleChildScrollView(
      child: Column(
        children: [
          buildRestaurantList(),
        ],
      ),
    );
  }

  Widget buildRestaurantList() {
    return ListView.builder(
        shrinkWrap: true,
        physics: const ClampingScrollPhysics(),
        padding: EdgeInsets.zero,
        itemCount: allRestaurants?.length ?? 0,
        itemBuilder: (context, index) {
          return BurgerCategoryCard(
            restaurant: allRestaurants![index],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const ApplicationToolbar(text: 'Burgers Category'),
      backgroundColor: const Color(0xffffffff),
      body: buildBlocWidget(),
    );
  }
}

//
// SingleChildScrollView(
// child: Column(children: [
// burgerCategoryCard(
// image: AssetImage('assets/images/restourant.jpg'),
// text: 'Sizzler Steak House',
// text2: 'Steak House',
// text4: 'Has scenic views',
// text5: 'Quiet setting',
// text3: 'Open',
// ),
// burgerCategoryCard(
// image: AssetImage('assets/images/restourant.jpg'),
// text: 'Sizzler Steak House',
// text2: 'Steak House',
// text4: 'Has scenic views',
// text5: 'Quiet setting',
// text3: 'Open',
// ),
// burgerCategoryCard(
// image: AssetImage('assets/images/restourant.jpg'),
// text: 'Sizzler Steak House',
// text2: 'Steak House',
// text4: 'Has scenic views',
// text5: 'Quiet setting',
// text3: 'Open',
// ),
// burgerCategoryCard(
// image: AssetImage('assets/images/restourant.jpg'),
// text: 'Sizzler Steak House',
// text2: 'Steak House',
// text4: 'Has scenic views',
// text5: 'Quiet setting',
// text3: 'Open',
// ),
// burgerCategoryCard(
// image: AssetImage('assets/images/restourant.jpg'),
// text: 'Sizzler Steak House',
// text2: 'Steak House',
// text4: 'Has scenic views',
// text5: 'Quiet setting',
// text3: 'Open',
// ),
// burgerCategoryCard(
// image: AssetImage('assets/images/restourant.jpg'),
// text: 'Sizzler Steak House',
// text2: 'Steak House',
// text4: 'Has scenic views',
// text5: 'Quiet setting',
// text3: 'Open',
// ),
// burgerCategoryCard(
// image: AssetImage('assets/images/restourant.jpg'),
// text: 'Sizzler Steak House',
// text2: 'Steak House',
// text4: 'Has scenic views',
// text5: 'Quiet setting',
// text3: 'Open',
// ),
// burgerCategoryCard(
// image: AssetImage('assets/images/restourant.jpg'),
// text: 'Sizzler Steak House',
// text2: 'Steak House',
// text4: 'Has scenic views',
// text5: 'Quiet setting',
// text3: 'Open',
// ),
// burgerCategoryCard(
// image: AssetImage('assets/images/restourant.jpg'),
// text: 'Sizzler Steak House',
// text2: 'Steak House',
// text4: 'Has scenic views',
// text5: 'Quiet setting',
// text3: 'Open',
// ),
// burgerCategoryCard(
// image: AssetImage('assets/images/restourant.jpg'),
// text: 'Sizzler Steak House',
// text2: 'Steak House',
// text4: 'Has scenic views',
// text5: 'Quiet setting',
// text3: 'Open',
// ),
// ]),
// ),
