// import 'package:flutter/material.dart';
// import 'package:untitled/constance/strings_assets.dart';
// import 'package:untitled/presentation/views/auth_screens/login_screen.dart';
// import 'package:untitled/presentation/views/main_hub/profile_screen.dart';
// import 'package:untitled/presentation/widgets/Button_with_text.dart';
//
// import '../../../../constance/app_size.dart';
// import '../../../../constance/color_assets.dart';
// import '../../../widgets/appbar.dart';
// import '../../../widgets/column_with_text.dart';
// import '../../../widgets/elevated_button.dart';
//
// class edit_Profile extends StatefulWidget {
//   const edit_Profile({super.key});
//
//   @override
//   State<edit_Profile> createState() => _edit_ProfileState();
// }
//
// class _edit_ProfileState extends State<edit_Profile> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: ApplicationToolbar(text: 'Edit Profile'),
//       body: Padding(
//         padding: EdgeInsets.all(AppSize.defaultSize! * 2),
//         child: Column(
//           children: [
//             Center(
//               child: Column(
//                 children: [
//                   CircleAvatar(
//                     radius: 70,
//                     backgroundImage: AssetImage(
//                       'assets/images/profile_person.png',
//                     ),
//                   ),
//                   SizedBox(height: AppSize.defaultSize! * 1),
//                   Align(
//                     alignment: Alignment.center,
//                     child: CostumTextButton(
//                       onTap: () {
//                         Navigator.push(
//                           context,
//                           MaterialPageRoute(
//                             builder: (context) {
//                               return LoginScreen();
//                             },
//                           ),
//                         );
//                       },
//                       text: 'Upload Profile Image',
//                       textColor: Asset.buttontextColor,
//                       textSize: AppSize.defaultSize! * 1.4,
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             SizedBox(height: AppSize.defaultSize! * 2),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 columnWithFieldText(
//                     text: assetString.Fname, width: AppSize.defaultSize! * 16),
//                 columnWithFieldText(
//                     text: assetString.Lname, width: AppSize.defaultSize! * 16),
//               ],
//             ),
//             SizedBox(height:AppSize.defaultSize! * 2 ),
//             columnWithFieldText(
//                 text: assetString.phoneNo, width: AppSize.screenWidth!),SizedBox(height:AppSize.defaultSize! * 2 ),
//             columnWithFieldText(
//                 text: assetString.email, width: AppSize.screenWidth!),SizedBox(height:AppSize.defaultSize! * 2 ),
//             columnWithFieldText(
//                 text: 'Date of Birth', width: AppSize.screenWidth!),
//
//             SizedBox(height:AppSize.defaultSize! * 2 ),
//
//             CustomElevatedButton(
//               onTap: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                     builder: (context) {
//                       return ProfilePage();
//                     },
//                   ),
//                 );
//               },
//               text: 'Edit Profile',
//               textColor: Colors.white,
//               textSize: AppSize.defaultSize! * 1.5,
//               BGColor: Asset.buttontextColor,
//               shape: MaterialStatePropertyAll(
//                 ContinuousRectangleBorder(
//                     borderRadius:
//                     BorderRadius.all(Radius.circular(5)),
//                     side: BorderSide(
//                         width: 1, color: Asset.buttontextColor)),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
