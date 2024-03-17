// import 'package:flutter/material.dart';
// import 'package:untitled/constance/strings_assets.dart';
// import 'package:untitled/presentation/views/main_hub/home_util_screens/forget_password.dart';
// import 'package:untitled/presentation/widgets/text_app.dart';
// import 'package:untitled/presentation/widgets/elevated_button.dart';
//
// import '../../../../constance/app_size.dart';
// import '../../../../constance/color_assets.dart';
// import '../../../widgets/appbar.dart';
//
// class DiningPreferences extends StatefulWidget {
//   const DiningPreferences({super.key});
//
//   @override
//   State<DiningPreferences> createState() => _DiningPreferencesState();
// }
//
// class _DiningPreferencesState extends State<DiningPreferences> {
//   List<bool> isSelected = [false, false, false];
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: const ApplicationToolbar(text: assetString.DiningPre),
//       body: Padding(
//         padding: EdgeInsets.all(AppSize.defaultSize! * 1.3),
//         child: Column(
//           children: [
//             TextBox(
//               text: assetString.headOfPreference,
//               fontSize: AppSize.defaultSize! * 1.3,
//               color: Asset.text2color,
//             ),
//             Padding(
//               padding: EdgeInsets.only(top: AppSize.defaultSize! * 1.3),
//               child: Container(
//                 alignment: Alignment.centerLeft,
//                 child: TextBox(
//                   text: assetString.favoriteOfPreference,
//                   fontSize: AppSize.defaultSize! * 1.2,
//                 ),
//               ),
//             ),
//             const Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 CustomElevatedButton(
//                   text: 'text',
//                   textColor: Asset.text2color,
//                   textSize: 14,
//                   BGColor: Asset.backgroundtogglecolor,
//                   shape: MaterialStatePropertyAll(StadiumBorder(
//                       side: BorderSide(width: 1, color: Asset.bordercolor))),
//                 ),
//                 CustomElevatedButton(
//                   text: 'text',
//                   textColor: Asset.text2color,
//                   textSize: 14,
//                   BGColor: Asset.backgroundtogglecolor,
//                   shape: MaterialStatePropertyAll(StadiumBorder(
//                       side: BorderSide(width: 1, color: Asset.bordercolor))),
//                 ),
//                 CustomElevatedButton(
//                   text: 'text',
//                   textColor: Asset.text2color,
//                   textSize: 14,
//                   BGColor: Asset.backgroundtogglecolor,
//                   shape: MaterialStatePropertyAll(StadiumBorder(
//                       side: BorderSide(width: 1, color: Asset.bordercolor))),
//                 ),
//               ],
//             ),
//             const Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 CustomElevatedButton(
//                   text: 'text',
//                   textColor: Asset.text2color,
//                   textSize: 14,
//                   BGColor: Asset.backgroundtogglecolor,
//                   shape: MaterialStatePropertyAll(StadiumBorder(
//                       side: BorderSide(width: 1, color: Asset.bordercolor))),
//                 ),
//                 CustomElevatedButton(
//                   text: 'text',
//                   textColor: Asset.text2color,
//                   textSize: 14,
//                   BGColor: Asset.backgroundtogglecolor,
//                   shape: MaterialStatePropertyAll(StadiumBorder(
//                       side: BorderSide(width: 1, color: Asset.bordercolor))),
//                 ),
//                 CustomElevatedButton(
//                   text: 'text',
//                   textColor: Asset.text2color,
//                   textSize: 14,
//                   BGColor: Asset.backgroundtogglecolor,
//                   shape: MaterialStatePropertyAll(StadiumBorder(
//                       side: BorderSide(width: 1, color: Asset.bordercolor))),
//                 ),
//                 CustomElevatedButton(
//                   text: 'text',
//                   textColor: Asset.text2color,
//                   textSize: 14,
//                   BGColor: Asset.backgroundtogglecolor,
//                   shape: MaterialStatePropertyAll(StadiumBorder(
//                       side: BorderSide(width: 1, color: Asset.bordercolor))),
//                 ),
//               ],
//             ),
//             const Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 CustomElevatedButton(
//                   text: 'text',
//                   textColor: Asset.text2color,
//                   textSize: 14,
//                   BGColor: Asset.backgroundtogglecolor,
//                   shape: MaterialStatePropertyAll(StadiumBorder(
//                       side: BorderSide(width: 1, color: Asset.bordercolor))),
//                 ),
//                 CustomElevatedButton(
//                   text: 'text',
//                   textColor: Asset.text2color,
//                   textSize: 14,
//                   BGColor: Asset.backgroundtogglecolor,
//                   shape: MaterialStatePropertyAll(StadiumBorder(
//                       side: BorderSide(width: 1, color: Asset.bordercolor))),
//                 ),
//                 CustomElevatedButton(
//                   text: 'text',
//                   textColor: Asset.text2color,
//                   textSize: 14,
//                   BGColor: Asset.backgroundtogglecolor,
//                   shape: MaterialStatePropertyAll(StadiumBorder(
//                       side: BorderSide(width: 1, color: Asset.bordercolor))),
//                 ),
//               ],
//             ),
//             Padding(
//               padding: EdgeInsets.only(top: AppSize.defaultSize! * 4),
//               child: Container(
//                 alignment: Alignment.centerLeft,
//                 child: TextBox(
//                   text: assetString.importantRestaurantAttributes,
//                   fontSize: AppSize.defaultSize! * 1.2,
//                 ),
//               ),
//             ),
//             const Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 CustomElevatedButton(
//                   text: 'text',
//                   textColor: Asset.text2color,
//                   textSize: 14,
//                   BGColor: Asset.backgroundtogglecolor,
//                   shape: MaterialStatePropertyAll(StadiumBorder(
//                       side: BorderSide(width: 1, color: Asset.bordercolor))),
//                 ),
//                 CustomElevatedButton(
//                   text: 'text',
//                   textColor: Asset.text2color,
//                   textSize: 14,
//                   BGColor: Asset.backgroundtogglecolor,
//                   shape: MaterialStatePropertyAll(StadiumBorder(
//                       side: BorderSide(width: 1, color: Asset.bordercolor))),
//                 ),
//                 CustomElevatedButton(
//                   text: 'text',
//                   textColor: Asset.text2color,
//                   textSize: 14,
//                   BGColor: Asset.backgroundtogglecolor,
//                   shape: MaterialStatePropertyAll(StadiumBorder(
//                       side: BorderSide(width: 1, color: Asset.bordercolor))),
//                 ),
//               ],
//             ),
//             const Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 CustomElevatedButton(
//                   text: 'text',
//                   textColor: Asset.text2color,
//                   textSize: 14,
//                   BGColor: Asset.backgroundtogglecolor,
//                   shape: MaterialStatePropertyAll(StadiumBorder(
//                       side: BorderSide(width: 1, color: Asset.bordercolor))),
//                 ),
//                 CustomElevatedButton(
//                   text: 'text',
//                   textColor: Asset.text2color,
//                   textSize: 14,
//                   BGColor: Asset.backgroundtogglecolor,
//                   shape: MaterialStatePropertyAll(StadiumBorder(
//                       side: BorderSide(width: 1, color: Asset.bordercolor))),
//                 ),
//                 CustomElevatedButton(
//                   text: 'text',
//                   textColor: Asset.text2color,
//                   textSize: 14,
//                   BGColor: Asset.backgroundtogglecolor,
//                   shape: MaterialStatePropertyAll(StadiumBorder(
//                       side: BorderSide(width: 1, color: Asset.bordercolor))),
//                 ),
//                 CustomElevatedButton(
//                   text: 'text',
//                   textColor: Asset.text2color,
//                   textSize: 14,
//                   BGColor: Asset.backgroundtogglecolor,
//                   shape: MaterialStatePropertyAll(StadiumBorder(
//                       side: BorderSide(width: 1, color: Asset.bordercolor))),
//                 ),
//               ],
//             ),
//             const Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 CustomElevatedButton(
//                   text: 'text',
//                   textColor: Asset.text2color,
//                   textSize: 14,
//                   BGColor: Asset.backgroundtogglecolor,
//                   shape: MaterialStatePropertyAll(StadiumBorder(
//                       side: BorderSide(width: 1, color: Asset.bordercolor))),
//                 ),
//                 CustomElevatedButton(
//                   text: 'text',
//                   textColor: Asset.text2color,
//                   textSize: 14,
//                   BGColor: Asset.backgroundtogglecolor,
//                   shape: MaterialStatePropertyAll(StadiumBorder(
//                       side: BorderSide(width: 1, color: Asset.bordercolor))),
//                 ),
//                 CustomElevatedButton(
//                   text: 'text',
//                   textColor: Asset.text2color,
//                   textSize: 14,
//                   BGColor: Asset.backgroundtogglecolor,
//                   shape: MaterialStatePropertyAll(StadiumBorder(
//                       side: BorderSide(width: 1, color: Asset.bordercolor))),
//                 ),
//               ],
//             ),
//             Padding(
//               padding: EdgeInsets.only(top: AppSize.defaultSize! * 2),
//               child: CustomElevatedButton(
//                 text: assetString.sginup,
//                 textColor: Colors.white,
//                 textSize: AppSize.defaultSize! * 1.4,
//                 BGColor: Asset.buttontextColor,
//                 onTap: () {
//                   Navigator.push(
//                     context,
//                     MaterialPageRoute(
//                       builder: (context) {
//                         return const forgetPass();
//                       },
//                     ),
//                   );
//                 },
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
