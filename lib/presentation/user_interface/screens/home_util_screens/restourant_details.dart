import 'package:flutter/material.dart';
import '../../../../core/constance/app_size.dart';
import '../../../../core/constance/color_assets.dart';
import '../../../../data/models/restaurants_class.dart';
import '../../widgets/Button_with_text.dart';
import '../../widgets/text_app.dart';
import '../../widgets/elevated_button.dart';
import '../home_page.dart';

class RestourantDetails extends StatefulWidget {
  const RestourantDetails({super.key, required this.restaurant});
  final RestaurantModel restaurant;

  @override
  State<RestourantDetails> createState() => _RestourantDetailsState();
}

class _RestourantDetailsState extends State<RestourantDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // CarouselSlider(
            //   options: CarouselOptions(height: AppSize.defaultSize! * 30),
            //   items: [1, 2, 3, 4, 5].map((i) {
            //     return Builder(
            //       builder: (BuildContext context) {
            //         return Container(
            //           width: AppSize.screenWidth,
            //           margin: EdgeInsets.symmetric(
            //               horizontal: AppSize.defaultSize! * 10),
            //           child: const Row(
            //             children: [
            //               Image(
            //                 image: AssetImage('assets/images/restourant.jpg'),
            //               ),
            //               SizedBox(
            //                 width: 15.0,
            //               ),
            //               Image(
            //                 image: AssetImage('assets/images/restourant.jpg'),
            //               ),
            //               SizedBox(
            //                 width: 15.0,
            //               ),
            //
            //               Image(
            //                 image: AssetImage('assets/images/restourant.jpg'),
            //               ),
            //               SizedBox(
            //                 width: 15.0,
            //               ),
            //
            //               Image(
            //                 image: AssetImage('assets/images/restourant.jpg'),
            //               ),
            //               SizedBox(
            //                 width: 15.0,
            //               ),
            //
            //               Image(
            //                 image: AssetImage('assets/images/restourant.jpg'),
            //               ),
            //               SizedBox(
            //                 width: 15.0,
            //               ),
            //             ],
            //           ),
            //         );
            //       },
            //     );
            //   }).toList(),
            // ),
            SizedBox(
              height: AppSize.defaultSize! * 15.2,
              child: Stack(fit: StackFit.expand, children: [
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      SizedBox(
                        width: AppSize.screenWidth,
                        height: AppSize.screenHeight,
                        child: const Image(
                          fit: BoxFit.fitWidth,
                          image: AssetImage('assets/images/restourant.jpg'),
                        ),
                      ),
                      SizedBox(
                        width: AppSize.screenWidth,
                        height: AppSize.screenHeight,
                        child: const Image(
                          fit: BoxFit.fitWidth,
                          image: AssetImage('assets/images/restourant.jpg'),
                        ),
                      ),
                      SizedBox(
                        width: AppSize.screenWidth,
                        height: AppSize.screenHeight,
                        child: const Image(
                          fit: BoxFit.fitWidth,
                          image: AssetImage('assets/images/restourant.jpg'),
                        ),
                      ),
                      SizedBox(
                        width: AppSize.screenWidth,
                        height: AppSize.screenHeight,
                        child: const Image(
                          fit: BoxFit.fitWidth,
                          image: AssetImage('assets/images/restourant.jpg'),
                        ),
                      ),
                    ],
                  ),
                ),
              ]),
            ),
            SizedBox(
              height: AppSize.defaultSize! * 2,
            ),
            Padding(
              padding: EdgeInsets.all(AppSize.defaultSize! * 1.5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image(
                    image: const AssetImage('assets/images/logo@2x.png'),
                    width: AppSize.defaultSize! * 10,
                  ),
                  SizedBox(
                    width: AppSize.defaultSize! * 1,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextApp(
                          text: 'Sizzler Steak House',
                          fontSize: AppSize.defaultSize! * 1.8,
                          fontWeight: FontWeight.w800),
                      TextApp(
                        text: 'Steak House',
                        fontSize: AppSize.defaultSize! * 1.4,
                        color: Colors.grey,
                      ),
                    ],
                  ),
                  SizedBox(
                    width: AppSize.defaultSize! * 1,
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
                      text: '4.2',
                      fontSize: AppSize.defaultSize! * 1.1,
                      color: ColorAsset.buttonTextColor,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: AppSize.defaultSize! * 2,
            ),
            Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: AppSize.defaultSize! * 1.5),
              child: SizedBox(
                  child: CustomElevatedButton(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return const HomePage();
                      },
                    ),
                  );
                },
                shape: MaterialStatePropertyAll(
                  ContinuousRectangleBorder(
                    borderRadius: BorderRadiusDirectional.circular(10),
                  ),
                ),
                text: 'Book Now',
                textColor: Colors.white,
                textSize: AppSize.defaultSize! * 1.4,
                bGColor: ColorAsset.buttonTextColor,
              )),
            ),
            SizedBox(
              height: AppSize.defaultSize! * 1,
            ),
            Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: AppSize.defaultSize! * 1.5),
              child: Row(
                children: [
                  const Icon(Icons.money, color: ColorAsset.buttonTextColor),
                  SizedBox(
                    width: AppSize.defaultSize! * 1,
                  ),
                  TextApp(
                      text: '120 EGP/Member',
                      fontSize: AppSize.defaultSize! * 1.3)
                ],
              ),
            ),
            SizedBox(
              height: AppSize.defaultSize! * 1,
            ),
            Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: AppSize.defaultSize! * 1.5),
              child: Row(
                children: [
                  Icon(Icons.access_time, color: ColorAsset.buttonTextColor),
                  SizedBox(
                    width: AppSize.defaultSize! * 1,
                  ),
                  TextApp(
                      text: 'Open • Closes 11:00 PM',
                      fontSize: AppSize.defaultSize! * 1.3),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: AppSize.defaultSize! * 2.5,
                        vertical: AppSize.defaultSize! * 1),
                    child: Align(
                      alignment: Alignment.topRight,
                      child: CostumTextButton(
                        onTap: () {
                          // Navigator.push(
                          //   context,
                          //   MaterialPageRoute(
                          //     builder: (context) {
                          //       return LoginScreen();
                          //     },
                          //   ),
                          // );
                        },
                        text: 'View All Days',
                        textColor: ColorAsset.buttonTextColor,
                        textSize: AppSize.defaultSize! * 1.4,
                        textUnderLine: TextDecoration.underline,
                        textUnderLineColor: ColorAsset.buttonTextColor,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: AppSize.defaultSize! * 1,
            ),
            Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: AppSize.defaultSize! * 1.5),
              child: Row(
                children: [
                  Icon(Icons.location_on_outlined,
                      color: ColorAsset.buttonTextColor),
                  SizedBox(
                    width: AppSize.defaultSize! * 1,
                  ),
                  TextApp(
                      text: '17 Road 231 Maadi Degla',
                      fontSize: AppSize.defaultSize! * 1.3),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: AppSize.defaultSize! * 2.5,
                        vertical: AppSize.defaultSize! * 1),
                    child: Align(
                      alignment: Alignment.topRight,
                      child: CostumTextButton(
                        onTap: () {
                          // Navigator.push(
                          //   context,
                          //   MaterialPageRoute(
                          //     builder: (context) {
                          //       return LoginScreen();
                          //     },
                          //   ),
                          // );
                        },
                        text: '+ 5 Braches',
                        textColor: ColorAsset.buttonTextColor,
                        textSize: AppSize.defaultSize! * 1.4,
                        textUnderLine: TextDecoration.underline,
                        textUnderLineColor: ColorAsset.buttonTextColor,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: AppSize.defaultSize! * 1),
            Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: AppSize.defaultSize! * 1.5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    decoration: const BoxDecoration(
                        color: Color.fromRGBO(241, 241, 241, 1),
                        borderRadius: BorderRadius.all(Radius.circular(3))),
                    alignment: Alignment.center,
                    width: AppSize.defaultSize! * 11.5,
                    height: AppSize.defaultSize! * 2,
                    child: TextApp(
                        text: 'Has scenic views',
                        fontSize: AppSize.defaultSize! * 1,
                        color: const Color.fromRGBO(133, 133, 133, 1)),
                  ),
                  Container(
                    decoration: const BoxDecoration(
                        color: Color.fromRGBO(241, 241, 241, 1),
                        borderRadius: BorderRadius.all(Radius.circular(3))),
                    alignment: Alignment.center,
                    width: AppSize.defaultSize! * 9,
                    height: AppSize.defaultSize! * 2,
                    child: TextApp(
                        text: 'Quiet setting',
                        fontSize: AppSize.defaultSize! * 1,
                        color: const Color.fromRGBO(133, 133, 133, 1)),
                  ),
                  Container(
                    decoration: const BoxDecoration(
                        color: Color.fromRGBO(241, 241, 241, 1),
                        borderRadius: BorderRadius.all(Radius.circular(3))),
                    alignment: Alignment.center,
                    width: AppSize.defaultSize! * 10,
                    height: AppSize.defaultSize! * 2,
                    child: TextApp(
                        text: 'Outdoor Dining',
                        fontSize: AppSize.defaultSize! * 1,
                        color: const Color.fromRGBO(133, 133, 133, 1)),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: AppSize.defaultSize! * 1,
            ),
            Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: AppSize.defaultSize! * 3),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    decoration: const BoxDecoration(
                        color: Color.fromRGBO(241, 241, 241, 1),
                        borderRadius: BorderRadius.all(Radius.circular(3))),
                    alignment: Alignment.center,
                    width: AppSize.defaultSize! * 11.5,
                    height: AppSize.defaultSize! * 2,
                    child: TextApp(
                        text: 'Romantic setting',
                        fontSize: AppSize.defaultSize! * 1,
                        color: const Color.fromRGBO(133, 133, 133, 1)),
                  ),
                  SizedBox(
                    width: AppSize.defaultSize! * 2.7,
                  ),
                  Container(
                    decoration: const BoxDecoration(
                        color: Color.fromRGBO(241, 241, 241, 1),
                        borderRadius: BorderRadius.all(Radius.circular(3))),
                    alignment: Alignment.center,
                    width: AppSize.defaultSize! * 11.5,
                    height: AppSize.defaultSize! * 2,
                    child: TextApp(
                        text: 'Quiet setting',
                        fontSize: AppSize.defaultSize! * 1,
                        color: const Color.fromRGBO(133, 133, 133, 1)),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: AppSize.defaultSize! * 2,
            ),
            Container(
              decoration: const BoxDecoration(
                  color: Color.fromRGBO(241, 225, 225, 1),
                  borderRadius: BorderRadius.all(Radius.circular(5))),
              width: AppSize.defaultSize! * 36,
              height: AppSize.defaultSize! * 9,
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: AppSize.defaultSize! * 1,
                    vertical: AppSize.defaultSize! * 0.5),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Icon(Icons.label, color: ColorAsset.buttonTextColor),
                        SizedBox(
                          width: AppSize.defaultSize! * 1,
                        ),
                        TextApp(
                            text: 'table_20',
                            fontSize: AppSize.defaultSize! * 1.3,
                            color: ColorAsset.buttonTextColor)
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TextApp(
                                text: '20% on reservation that have',
                                fontSize: AppSize.defaultSize! * 1.1),
                            TextApp(
                                text: ' above 2 Members',
                                fontSize: AppSize.defaultSize! * 1.1),
                          ],
                        ),
                        SizedBox(
                          width: AppSize.defaultSize! * 1,
                        ),
                        CustomElevatedButton(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return const HomePage();
                                },
                              ),
                            );
                          },
                          text: 'Apply',
                          textColor: ColorAsset.buttonTextColor,
                          textSize: AppSize.defaultSize! * 1.3,
                          bGColor: Colors.white,
                          shape: const MaterialStatePropertyAll(
                            ContinuousRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5)),
                                side: BorderSide(
                                    width: 1, color: ColorAsset.buttonTextColor)),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
