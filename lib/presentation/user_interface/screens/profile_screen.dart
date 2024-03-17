// import 'package:flutter/material.dart';
//
// class ProfilePage extends StatefulWidget {
//   const ProfilePage({super.key});
//
//   @override
//   State<ProfilePage> createState() => _ProfilePageState();
// }
// DateTime today = DateTime.now();
//
//
// class _ProfilePageState extends State<ProfilePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: ApplicationToolbar(
//         text: 'Profile',
//       ),
//       body: Padding(
//         padding: EdgeInsets.symmetric(horizontal: AppSize.defaultSize! * 2),
//         child: Column(
//           children: [
//             Container(
//               decoration: BoxDecoration(
//                   borderRadius: BorderRadiusDirectional.circular(10),
//                   border: Border.all(width: 1, color: Asset.bordercolor)),
//               height: AppSize.defaultSize! * 30,
//               width: AppSize.screenWidth,
//               child: Column(children: [
//                 Padding(
//                   padding: EdgeInsets.all(AppSize.defaultSize! * 1),
//                   child: Row(
//                     children: [
//                       CircleAvatar(
//                         radius: 40,
//                         backgroundImage:
//                         AssetImage('assets/images/restourant.jpg'),
//                       ),
//                       SizedBox(width: AppSize.defaultSize! * 2),
//                       Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           TextBox(
//                               text: 'Mohamed Ahmed',
//                               fontSize: AppSize.defaultSize! * 1.2,
//                               fontWeight: FontWeight.w800),
//                           SizedBox(height: AppSize.defaultSize! * 0.7),
//                           TextBox(
//                               text: 'Mohamed.ahmed@gmail.com',
//                               fontSize: AppSize.defaultSize! * 1.2),
//                           SizedBox(height: AppSize.defaultSize! * 0.7),
//                           TextBox(
//                               text: '01145983265',
//                               fontSize: AppSize.defaultSize! * 1.2),
//                         ],
//                       )
//                     ],
//                   ),
//                 ),
//                 SizedBox(height: AppSize.defaultSize! * 2),
//                 Padding(
//                   padding: EdgeInsets.all(AppSize.defaultSize! * 1),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       CustomElevatedButton(
//                         onTap: () {
//                           Navigator.push(
//                             context,
//                             MaterialPageRoute(
//                               builder: (context) {
//                                 return ChangePassword();
//                               },
//                             ),
//                           );
//                         },
//                         text: 'Change Password',
//                         textColor: Asset.buttontextColor,
//                         textSize: AppSize.defaultSize! * 1.5,
//                         BGColor: Colors.white,
//                         shape: MaterialStatePropertyAll(
//                           ContinuousRectangleBorder(
//                               borderRadius:
//                               BorderRadius.all(Radius.circular(5)),
//                               side: BorderSide(
//                                   width: 1, color: Asset.buttontextColor)),
//                         ),
//                       ),
//                       CustomElevatedButton(
//                         onTap: () {
//                           Navigator.push(
//                             context,
//                             MaterialPageRoute(
//                               builder: (context) {
//                                 return edit_Profile();
//                               },
//                             ),
//                           );
//                         },
//                         text: 'Edit Profile',
//                         textColor: Colors.white,
//                         textSize: AppSize.defaultSize! * 1.5,
//                         BGColor: Asset.buttontextColor,
//                         shape: MaterialStatePropertyAll(
//                           ContinuousRectangleBorder(
//                               borderRadius:
//                               BorderRadius.all(Radius.circular(5)),
//                               side: BorderSide(
//                                   width: 1, color: Asset.buttontextColor)),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//                 Padding(
//                   padding: EdgeInsets.all(AppSize.defaultSize! * 1),
//                   child: CustomElevatedButton(
//                     onTap: () {
//                       Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                           builder: (context) {
//                             return LoginScreen();
//                           },
//                         ),
//                       );
//                     },
//                     text: 'Logout',
//                     textColor: Asset.buttontextColor,
//                     textSize: AppSize.defaultSize! * 1.5,
//                     BGColor: Colors.white,
//                     shape: MaterialStatePropertyAll(
//                       ContinuousRectangleBorder(
//                           borderRadius: BorderRadius.all(Radius.circular(5)),
//                           side: BorderSide(
//                               width: 1, color: Asset.buttontextColor)),
//                     ),
//                   ),
//                 ),
//               ]),
//             ),
//             SizedBox(
//               height: AppSize.defaultSize! * 2,
//             ),
//             Container(
//               decoration: BoxDecoration(
//                   borderRadius: BorderRadiusDirectional.circular(10),
//                   border: Border.all(width: 1, color: Asset.bordercolor)),
//               height: AppSize.defaultSize! * 30,
//               width: AppSize.screenWidth,
//               child: Padding(
//                 padding: EdgeInsets.all(AppSize.defaultSize! * 2),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     TextBox(
//                         text: 'Dining Preferences',
//                         fontSize: AppSize.defaultSize! * 1.4,
//                         fontWeight: FontWeight.w700),
//                     TextBox(
//                         text: 'Favorite Cuisine Types',
//                         fontSize: AppSize.defaultSize! * 1.2),
//                     TextBox(
//                         text: 'Egyptian, Desserts, Fried Chicken',
//                         fontSize: AppSize.defaultSize! * 1.2,
//                         color: Colors.grey),
//                     SizedBox(height: AppSize.defaultSize! * 1.2),
//                     TextBox(
//                         text: 'Important Restaurant Attributes',
//                         fontSize: AppSize.defaultSize! * 1.2),
//                     TextBox(
//                         text: 'Formal ambiance, Casual ambiance,',
//                         fontSize: AppSize.defaultSize! * 1.2,
//                         color: Colors.grey),
//                     TextBox(
//                         text: 'Has scenic views',
//                         fontSize: AppSize.defaultSize! * 1.2,
//                         color: Colors.grey),
//                     SizedBox(
//                       height: AppSize.defaultSize! * 4,
//                     ),
//                     CustomElevatedButton(
//                       onTap: () {
//                         Navigator.push(
//                           context,
//                           MaterialPageRoute(
//                             builder: (context) {
//                               return DiningPreferences();
//                             },
//                           ),
//                         );
//                       },
//                       text: 'Edit Dining Preferences',
//                       textColor: Colors.white,
//                       textSize: AppSize.defaultSize! * 1.5,
//                       BGColor: Asset.buttontextColor,
//                       shape: MaterialStatePropertyAll(
//                         ContinuousRectangleBorder(
//                             borderRadius:
//                             BorderRadius.all(Radius.circular(5)),
//                             side: BorderSide(
//                                 width: 1, color: Asset.buttontextColor)),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }