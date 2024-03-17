import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:table_calendar/table_calendar.dart';

import '../../../core/constance/app_size.dart';
import '../../../core/constance/color_assets.dart';
import '../../../core/constance/strings_assets.dart';
import '../../business_logic/restaurants_cubit.dart';
import '../widgets/text_app.dart';
import '../widgets/text_fields.dart';
import 'home_hub.dart';
import 'home_util_screens/category_card.dart';
import 'home_util_screens/category_recommended_restaurants.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  DateTime today = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: AppSize.defaultSize! * 13.6,
              color: ColorAsset.backgroundAppbarColor,
              alignment: Alignment.center,
              child: Column(children: [
                SizedBox(
                  height: AppSize.defaultSize! * 1.6,
                ),
                Image.asset(
                  'assets/images/logo@2x.png',
                  scale: 1.5,
                ),
                SizedBox(
                  height: AppSize.defaultSize! * 1.6,
                ),
                TextFields(
                  readOnly: true,
                  onTap: () {
                    context.read<RestaurantsCubit>().getAllRestaurants();
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return const HomeHub();
                        },
                      ),
                    );
                  },
                  border: BorderSide.none,
                  text: AssetString.search,
                  pIcon: const Icon(
                    Icons.search,
                  ),
                  height: AppSize.defaultSize! * 4,
                  width: AppSize.defaultSize! * 32.8,
                )
              ]),
            ),
            Padding(
              padding: EdgeInsets.all(AppSize.defaultSize! * 1.3),
              child: Column(
                children: [
                  SizedBox(height: AppSize.defaultSize! * 1.3),
                  TextApp(
                      text: AssetString.selectCategory,
                      fontSize: AppSize.defaultSize! * 1.6,
                      fontWeight: FontWeight.w600),
                ],
              ),
            ),
            CategoryCard(),
            Padding(
              padding: EdgeInsets.all(AppSize.defaultSize! * 1.3),
              child: Column(
                children: [
                  SizedBox(height: AppSize.defaultSize! * 1.3),
                  TextApp(
                      text: AssetString.recommendedRestaurants,
                      fontSize: AppSize.defaultSize! * 1.6,
                      fontWeight: FontWeight.w600),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: AppSize.defaultSize! * 1.3),
                child: Row(children: [
                  const CategoryRecommendedRestaurants(
                    image: AssetImage('assets/images/restourant.jpg'),
                    text: AssetString.sizzlerSteakHouse,
                    text2: AssetString.rate,
                    text3: AssetString.steakHouse,
                  ),
                  SizedBox(width: AppSize.defaultSize! * 1),
                  const CategoryRecommendedRestaurants(
                    image: AssetImage('assets/images/restourant.jpg'),
                    text: AssetString.sizzlerSteakHouse,
                    text2: AssetString.rate,
                    text3: AssetString.steakHouse,
                  ),
                  SizedBox(width: AppSize.defaultSize! * 1),
                  const CategoryRecommendedRestaurants(
                    image: AssetImage('assets/images/restourant.jpg'),
                    text: AssetString.sizzlerSteakHouse,
                    text2: AssetString.rate,
                    text3: AssetString.steakHouse,
                  ),
                  SizedBox(width: AppSize.defaultSize! * 1),
                  const CategoryRecommendedRestaurants(
                    image: AssetImage('assets/images/restourant.jpg'),
                    text: AssetString.sizzlerSteakHouse,
                    text2: AssetString.rate,
                    text3: AssetString.steakHouse,
                  ),
                  SizedBox(width: AppSize.defaultSize! * 1),
                  const CategoryRecommendedRestaurants(
                    image: AssetImage('assets/images/restourant.jpg'),
                    text: AssetString.sizzlerSteakHouse,
                    text2: AssetString.rate,
                    text3: AssetString.steakHouse,
                  ),
                  SizedBox(width: AppSize.defaultSize! * 1),
                  const CategoryRecommendedRestaurants(
                    image: AssetImage('assets/images/restourant.jpg'),
                    text: AssetString.sizzlerSteakHouse,
                    text2: AssetString.rate,
                    text3: AssetString.steakHouse,
                  ),
                  SizedBox(width: AppSize.defaultSize! * 1),
                  const CategoryRecommendedRestaurants(
                    image: AssetImage('assets/images/restourant.jpg'),
                    text: AssetString.sizzlerSteakHouse,
                    text2: AssetString.rate,
                    text3: AssetString.steakHouse,
                  ),
                  SizedBox(width: AppSize.defaultSize! * 1),
                  const CategoryRecommendedRestaurants(
                    image: AssetImage('assets/images/restourant.jpg'),
                    text: AssetString.sizzlerSteakHouse,
                    text2: AssetString.rate,
                    text3: AssetString.steakHouse,
                  ),
                  SizedBox(width: AppSize.defaultSize! * 1),
                ]),
              ),
            ),
            TableCalendar(
              headerStyle: const HeaderStyle(
                titleCentered: true,
                formatButtonShowsNext: bool.fromEnvironment(''),
              ),
              availableGestures: AvailableGestures.all,
              selectedDayPredicate: (day) => isSameDay(day, DateTime(2024)),
              focusedDay: today,
              firstDay: DateTime.utc(2010, 10, 16),
              lastDay: DateTime.utc(20300, 10, 16),
              // onDaySelected: _onDaySelected,
            ),
          ],
        ),
      ),
    );
  }
}

//   Scaffold(
//   body: SingleChildScrollView(
//     child: Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Container(
//           height: AppSize.defaultSize! * 13.6,
//           color: Asset.backgroundappbarcolor,
//           alignment: Alignment.center,
//           child: Column(children: [
//             SizedBox(
//               height: AppSize.defaultSize! * 1.6,
//             ),
//             Image.asset(
//               'assets/images/logo@2x.png',
//               scale: 1.5,
//             ),
//             SizedBox(
//               height: AppSize.defaultSize! * 1.6,
//             ),
//             TextFields(
//               border: BorderSide.none,
//               text: assetString.Search,
//               pIcon: const Icon(
//                 Icons.search,
//               ),
//               height: AppSize.defaultSize! * 4,
//               width: AppSize.defaultSize! * 32.8,
//             )
//           ]),
//         ),
//         Padding(
//           padding: EdgeInsets.all(AppSize.defaultSize! * 1.3),
//           child: Column(
//             children: [
//               SizedBox(height: AppSize.defaultSize! * 1.3),
//               TextBox(
//                   text: assetString.SelectCategory,
//                   fontSize: AppSize.defaultSize! * 1.6,
//                   fontWeight: FontWeight.w600),
//             ],
//           ),
//         ),
//         ListView.builder(
//             itemCount: 10,
//             scrollDirection: Axis.horizontal,
//             shrinkWrap: true,
//             itemBuilder: (context,index){
//           return       CategoryCard(
//             rout:  () {
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(
//                   builder: (context) {
//                     return  const CategorySearch();
//                   },
//                 ),
//               );
//             },
//             image: const AssetImage('assets/images/icon/cooking pot.png'),
//             text: assetString.Egyptian,
//           );
//         }),
//         // SingleChildScrollView(
//         //   scrollDirection: Axis.horizontal,
//         //   child: Padding(
//         //     padding: EdgeInsets.symmetric(
//         //         horizontal: AppSize.defaultSize! * 1.3),
//         //     child: Row(children: [
//         //        CategoryCard(
//         //         rout:  () {
//         //           Navigator.push(
//         //             context,
//         //             MaterialPageRoute(
//         //               builder: (context) {
//         //                 return  const CategorySearch();
//         //               },
//         //             ),
//         //           );
//         //         },
//         //         image: const AssetImage('assets/images/icon/cooking pot.png'),
//         //         text: assetString.Egyptian,
//         //       ),
//         //       SizedBox(width: AppSize.defaultSize! * 1),
//         //       CategoryCard(
//         //         rout:  () {
//         //           Navigator.push(
//         //             context,
//         //             MaterialPageRoute(
//         //               builder: (context) {
//         //                 return  const CategorySearch();
//         //               },
//         //             ),
//         //           );
//         //         },
//         //         image: const AssetImage('assets/images/icon/icon1.png'),
//         //         text: assetString.desserts,
//         //       ),
//         //       SizedBox(width: AppSize.defaultSize! * 1),
//         //       CategoryCard(
//         //         rout:  () {
//         //           Navigator.push(
//         //             context,
//         //             MaterialPageRoute(
//         //               builder: (context) {
//         //                 return  const CategorySearch();
//         //               },
//         //             ),
//         //           );
//         //         },
//         //         image: const AssetImage('assets/images/icon/icon2.png'),
//         //         text: assetString.burgers,
//         //       ),
//         //       SizedBox(width: AppSize.defaultSize! * 1),
//         //        CategoryCard(
//         //          rout:  () {
//         //            Navigator.push(
//         //              context,
//         //              MaterialPageRoute(
//         //                builder: (context) {
//         //                  return  const CategorySearch();
//         //                },
//         //              ),
//         //            );
//         //          },
//         //         image: const AssetImage('assets/images/icon/icon3.png'),
//         //         text: assetString.friedChicken,
//         //       ),
//         //       SizedBox(width: AppSize.defaultSize! * 1),
//         //        CategoryCard(
//         //          rout:  () {
//         //            Navigator.push(
//         //              context,
//         //              MaterialPageRoute(
//         //                builder: (context) {
//         //                  return  const CategorySearch();
//         //                },
//         //              ),
//         //            );
//         //          },
//         //         image: const AssetImage('assets/images/icon/icon4.png'),
//         //         text: assetString.italian,
//         //       ),
//         //       SizedBox(width: AppSize.defaultSize! * 1),
//         //        CategoryCard(
//         //          rout:  () {
//         //            Navigator.push(
//         //              context,
//         //              MaterialPageRoute(
//         //                builder: (context) {
//         //                  return  const CategorySearch();
//         //                },
//         //              ),
//         //            );
//         //          },
//         //         image: const AssetImage('assets/images/icon/icon5.png'),
//         //         text: assetString.sushi,
//         //       ),
//         //       SizedBox(width: AppSize.defaultSize! * 1),
//         //        CategoryCard(
//         //          rout:  () {
//         //            Navigator.push(
//         //              context,
//         //              MaterialPageRoute(
//         //                builder: (context) {
//         //                  return  const CategorySearch();
//         //                },
//         //              ),
//         //            );
//         //          },
//         //         image: const AssetImage('assets/images/icon/icon6.png'),
//         //         text: assetString.syrian,
//         //       ),
//         //       SizedBox(width: AppSize.defaultSize! * 1),
//         //        CategoryCard(
//         //          rout:  () {
//         //            Navigator.push(
//         //              context,
//         //              MaterialPageRoute(
//         //                builder: (context) {
//         //                  return  const CategorySearch();
//         //                },
//         //              ),
//         //            );
//         //          },
//         //         image: const AssetImage('assets/images/icon/icon7.png'),
//         //         text: assetString.steakhouse,
//         //       ),
//         //       SizedBox(width: AppSize.defaultSize! * 1),
//         //        CategoryCard(
//         //          rout:  () {
//         //            Navigator.push(
//         //              context,
//         //              MaterialPageRoute(
//         //                builder: (context) {
//         //                  return  const CategorySearch();
//         //                },
//         //              ),
//         //            );
//         //          },
//         //         image: const AssetImage('assets/images/icon/icon8.png'),
//         //         text: assetString.seafood,
//         //       ),
//         //       SizedBox(width: AppSize.defaultSize! * 1),
//         //        CategoryCard(
//         //          rout:  () {
//         //            Navigator.push(
//         //              context,
//         //              MaterialPageRoute(
//         //                builder: (context) {
//         //                  return  const CategorySearch();
//         //                },
//         //              ),
//         //            );
//         //          },
//         //         image: const AssetImage('assets/images/icon/icon9.png'),
//         //         text: assetString.chinese,
//         //       ),
//         //     ]),
//         //   ),
//         // ),
//         Padding(
//           padding: EdgeInsets.all(AppSize.defaultSize! * 1.3),
//           child: Column(
//             children: [
//               SizedBox(height: AppSize.defaultSize! * 1.3),
//               TextBox(
//                   text: assetString.RecommendedRestaurants,
//                   fontSize: AppSize.defaultSize! * 1.6,
//                   fontWeight: FontWeight.w600),
//             ],
//           ),
//         ),
//         SingleChildScrollView(
//           scrollDirection: Axis.horizontal,
//           child: Padding(
//             padding: EdgeInsets.symmetric(
//                 horizontal: AppSize.defaultSize! * 1.3),
//             child: Row(children: [
//                const categoryRecomandedRestaurants(
//                 image: AssetImage('assets/images/restourant.jpg'),
//                 text: assetString.SizzlerSteakHouse,
//                 text2: assetString.rate,
//                 text3: assetString.SteakHouse,
//               ),
//               SizedBox(width: AppSize.defaultSize! * 1),
//                const categoryRecomandedRestaurants(
//                 image: AssetImage('assets/images/restourant.jpg'),
//                 text: assetString.SizzlerSteakHouse,
//                 text2: assetString.rate,
//                 text3: assetString.SteakHouse,
//               ),
//               SizedBox(width: AppSize.defaultSize! * 1),
//                const categoryRecomandedRestaurants(
//                 image: AssetImage('assets/images/restourant.jpg'),
//                 text: assetString.SizzlerSteakHouse,
//                 text2: assetString.rate,
//                 text3: assetString.SteakHouse,
//               ),
//               SizedBox(width: AppSize.defaultSize! * 1),
//                const categoryRecomandedRestaurants(
//                 image: AssetImage('assets/images/restourant.jpg'),
//                 text: assetString.SizzlerSteakHouse,
//                 text2: assetString.rate,
//                 text3: assetString.SteakHouse,
//               ),
//               SizedBox(width: AppSize.defaultSize! * 1),
//                const categoryRecomandedRestaurants(
//                 image: AssetImage('assets/images/restourant.jpg'),
//                 text: assetString.SizzlerSteakHouse,
//                 text2: assetString.rate,
//                 text3: assetString.SteakHouse,
//               ),
//               SizedBox(width: AppSize.defaultSize! * 1),
//                const categoryRecomandedRestaurants(
//                 image: AssetImage('assets/images/restourant.jpg'),
//                 text: assetString.SizzlerSteakHouse,
//                 text2: assetString.rate,
//                 text3: assetString.SteakHouse,
//               ),
//               SizedBox(width: AppSize.defaultSize! * 1),
//                const categoryRecomandedRestaurants(
//                 image: AssetImage('assets/images/restourant.jpg'),
//                 text: assetString.SizzlerSteakHouse,
//                 text2: assetString.rate,
//                 text3: assetString.SteakHouse,
//               ),
//               SizedBox(width: AppSize.defaultSize! * 1),
//                const categoryRecomandedRestaurants(
//                 image: AssetImage('assets/images/restourant.jpg'),
//                 text: assetString.SizzlerSteakHouse,
//                 text2: assetString.rate,
//                 text3: assetString.SteakHouse,
//               ),
//               SizedBox(width: AppSize.defaultSize! * 1),
//             ]),
//           ),
//         ),
//         TableCalendar(
//           headerStyle: const HeaderStyle(
//             titleCentered: true,
//             formatButtonShowsNext: bool.fromEnvironment(''),
//           ),
//           availableGestures: AvailableGestures.all,
//           selectedDayPredicate: (day) => isSameDay(day, DateTime(2024)),
//           focusedDay: today,
//           firstDay: DateTime.utc(2010, 10, 16),
//           lastDay: DateTime.utc(20300, 10, 16),
//           // onDaySelected: _onDaySelected,
//         ),
//       ],
//     ),
//   ),
// );
//   }
// }
