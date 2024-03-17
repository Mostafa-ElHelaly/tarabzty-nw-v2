import 'package:flutter/material.dart';

import '../../../../core/constance/app_size.dart';
import '../../../../core/constance/color_assets.dart';
import '../../widgets/text_app.dart';
import 'category_page.dart';

class CategoryRecommendedRestaurants extends StatelessWidget {
  const CategoryRecommendedRestaurants(
      {super.key,
      required this.image,
      required this.text,
      required this.text2,
      required this.text3});

  final ImageProvider<Object> image;
  final String text;
  final String text2;
  final String text3;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return CategorySearch();
            },
          ),
        );
      },
      child: SizedBox(
        height: AppSize.defaultSize! * 13,
        width: AppSize.defaultSize! * 18.4,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image(
              image: image,
              width: AppSize.defaultSize! * 18.4,
              height: AppSize.defaultSize! * 8,
              fit: BoxFit.fill,
            ),
            SizedBox(height: AppSize.defaultSize! * 1),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextApp(
                  text: text,
                  fontSize: AppSize.defaultSize! * 1.4,
                  color: ColorAsset.buttonTextColor,
                ),
                Container(
                  alignment: Alignment.center,
                  decoration: const BoxDecoration(
                      color: ColorAsset.backgroundAppbarColor,
                      borderRadius:
                          BorderRadiusDirectional.all(Radius.circular(5))),
                  width: AppSize.defaultSize! * 2.5,
                  height: AppSize.defaultSize! * 2.4,
                  child: TextApp(
                    text: text2,
                    fontSize: AppSize.defaultSize! * 1.1,
                    color: ColorAsset.buttonTextColor,
                  ),
                ),
              ],
            ),
            TextApp(
              text: text3,
              fontSize: AppSize.defaultSize! * 1,
              color: ColorAsset.text2color,
            ),
          ],
        ),
      ),
    );
  }
}
