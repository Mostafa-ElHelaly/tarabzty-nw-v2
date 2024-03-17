import 'package:flutter/material.dart';

import '../../../../core/constance/app_size.dart';
import '../../../../core/constance/color_assets.dart';
import '../../../../core/constance/strings_assets.dart';
import '../../widgets/text_app.dart';

class RestaurantItem extends StatelessWidget {
  const RestaurantItem(
      {super.key,
      required this.image,
      required this.text,
      required this.text2,
      required this.text3,
      required this.text4,
      required this.text5});

  final ImageProvider<Object> image;
  final String text;
  final String text2;
  final String text3;
  final String text4;
  final String text5;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      //height: AppSize.defaultSize!,
      width: AppSize.screenWidth,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: AppSize.defaultSize! * 2),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Stack(
              alignment: Alignment.bottomLeft,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image(
                    fit: BoxFit.fill,
                    image: image,
                    width: AppSize.screenWidth,
                    height: AppSize.defaultSize! * 13.6,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    alignment: Alignment.center,
                    decoration: const BoxDecoration(
                        color: Color.fromRGBO(68, 68, 68, 1),
                        borderRadius:
                            BorderRadiusDirectional.all(Radius.circular(5))),
                    width: AppSize.defaultSize! * 17.2,
                    height: AppSize.defaultSize! * 3.2,
                    child: TextApp(
                      text: 'Starts from 120 EGP/Member',
                      fontSize: AppSize.defaultSize! * 1.1,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),

            // SizedBox(height: AppSize.defaultSize! * 0.7),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextApp(
                      text: text,
                      fontSize: AppSize.defaultSize! * 1.1,
                      color: ColorAsset.buttonTextColor,
                    ),
                    TextApp(
                      text: text2,
                      fontSize: AppSize.defaultSize! * 1.1,
                      color: ColorAsset.buttonTextColor,
                    ),
                  ],
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
                    text: AssetString.rate,
                    fontSize: AppSize.defaultSize! * 1.1,
                    color: ColorAsset.buttonTextColor,
                  ),
                ),
              ],
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(5),
                    decoration: const BoxDecoration(
                        color: Colors.green,
                        borderRadius:
                            BorderRadiusDirectional.all(Radius.circular(5))),
                    //width: AppSize.defaultSize! * 7,
                    //height: AppSize.defaultSize! * 2.4,
                    child: TextApp(
                      text: text3,
                      fontSize: AppSize.defaultSize! * 1.1,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    width: AppSize.defaultSize! * 1.5,
                  ),
                  Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(5),
                    decoration: const BoxDecoration(
                        color: ColorAsset.borderColor,
                        borderRadius:
                            BorderRadiusDirectional.all(Radius.circular(5))),
                    width: AppSize.defaultSize! * 10.5,
                    //height: AppSize.defaultSize! * 2.4,
                    child: TextApp(
                      text: text4,
                      fontSize: AppSize.defaultSize! * 1.1,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    width: AppSize.defaultSize! * 0.5,
                  ),
                  Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(5),
                    decoration: const BoxDecoration(
                        color: ColorAsset.borderColor,
                        borderRadius:
                            BorderRadiusDirectional.all(Radius.circular(5))),
                    //width: AppSize.defaultSize! * 8.7,
                    //height: AppSize.defaultSize! * 2.4,
                    child: TextApp(
                      text: text5,
                      fontSize: AppSize.defaultSize! * 1.1,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    width: AppSize.defaultSize! * 0.5,
                  ),
                  TextApp(text: '+4', fontSize: AppSize.defaultSize! * 1.2)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
