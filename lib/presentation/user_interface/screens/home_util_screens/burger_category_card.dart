import 'package:flutter/material.dart';

import '../../../../data/models/restaurants_class.dart';
import 'restaurant.dart';
import 'restourant_details.dart';


class BurgerCategoryCard extends StatelessWidget {
  const BurgerCategoryCard({super.key, required this.restaurant});

  final RestaurantModel restaurant;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return RestourantDetails(restaurant: restaurant,);
            },
          ),
        );
      },


      child: Container(
        width: double.infinity,
        margin: EdgeInsets.only(bottom: 30),
        child: RestaurantItem(
          image: AssetImage('assets/images/restourant.jpg'),
          text: restaurant.name??'',
          text2: restaurant.address??'',
          text4: restaurant.cuisineType??'',
          text5: restaurant.phone??'',
          text3: restaurant.availableServices??'',
        ),
      ),
    );
  }
}
