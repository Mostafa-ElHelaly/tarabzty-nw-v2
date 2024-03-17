import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/constance/app_size.dart';
import '../../../../core/constance/color_assets.dart';
import '../../../../core/constance/strings_assets.dart';
import '../../../business_logic/restaurants_cubit.dart';
import '../../widgets/text_app.dart';
import 'category_page.dart';

class CategoryCard extends StatelessWidget {
  CategoryCard({super.key});

  List<ImageProvider<Object>> image = [
    const AssetImage('assets/images/icon/cooking pot.png'),
    const AssetImage('assets/images/icon/icon1.png'),
    const AssetImage('assets/images/icon/icon2.png'),
    const AssetImage('assets/images/icon/icon3.png'),
    const AssetImage('assets/images/icon/icon4.png'),
    const AssetImage('assets/images/icon/icon5.png'),
    const AssetImage('assets/images/icon/icon6.png'),
    const AssetImage('assets/images/icon/icon7.png'),
    const AssetImage('assets/images/icon/icon8.png'),
    const AssetImage('assets/images/icon/icon9.png')
  ];

  List<String> text = [
    AssetString.egyptian,
    AssetString.desserts,
    AssetString.burgers,
    AssetString.friedChicken,
    AssetString.italian,
    AssetString.sushi,
    AssetString.syrian,
    AssetString.steakhouse,
    AssetString.seafood,
    AssetString.chinese,
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: AppSize.defaultSize! * 11,
      child: ListView.builder(
          itemCount: image.length,
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.all(AppSize.defaultSize! * 0.5),
              child: BlocBuilder<RestaurantsCubit, RestaurantsState>(
                builder: (context, state) {
                  return InkWell(
                    onTap: () {
                      context.read<RestaurantsCubit>().getAllRestaurants();
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return CategorySearch();
                          },
                        ),
                      );
                    },
                    child: Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadiusDirectional.circular(10),
                          border: Border.all(
                              width: 1, color: ColorAsset.borderColor)),
                      height: AppSize.defaultSize! * 10.1,
                      width: AppSize.defaultSize! * 8.8,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: AppSize.defaultSize! * 1.5,
                          ),
                          Image(
                            image: image[index],
                            width: AppSize.defaultSize! * 3.8,
                            height: AppSize.defaultSize! * 4.2,
                          ),
                          TextApp(
                            text: text[index],
                            fontSize: AppSize.defaultSize! * 1.1,
                            color: ColorAsset.buttonTextColor,
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
            );
          }),
    );
  }
}
