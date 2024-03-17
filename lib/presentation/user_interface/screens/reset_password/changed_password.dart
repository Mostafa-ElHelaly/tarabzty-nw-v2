// import 'package:flutter/material.dart';
// import 'package:untitled/presentation/widgets/appbar.dart';
// import '../../../../constance/app_size.dart';
// import '../../../../constance/color_assets.dart';
// import '../../../widgets/column_with_text_pass.dart';
// import '../../../widgets/elevated_button.dart';
// import '../home_page.dart';
//
// class ChangePassword extends StatefulWidget {
//   const ChangePassword({super.key});
//
//   @override
//   State<ChangePassword> createState() => _ChangePasswordState();
// }
//
// bool isVisible = true;
//
// class _ChangePasswordState extends State<ChangePassword> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: ApplicationToolbar(text: 'Change Password'),
//       body: Padding(
//         padding: EdgeInsets.all(AppSize.defaultSize! * 2),
//         child: Column(children: [
//           columnWithFieldTextWithPass(
//             text: 'Old Password',
//             width: AppSize.defaultSize! * 38,
//           ),
//           SizedBox(height: AppSize.defaultSize! * 2),
//           columnWithFieldTextWithPass(
//             text: 'New Password',
//             width: AppSize.defaultSize! * 38,
//           ),
//           SizedBox(height: AppSize.defaultSize! * 2),
//           columnWithFieldTextWithPass(
//             text: 'Confirm New Password',
//             width: AppSize.defaultSize! * 38,
//           ),
//           SizedBox(height: AppSize.defaultSize! * 2),
//
//           CustomElevatedButton(
//             onTap: () {
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(
//                   builder: (context) {
//                     return HomePage();
//                   },
//                 ),
//               );
//             },
//             text: 'Change Password',
//             textColor: Colors.white,
//             textSize: AppSize.defaultSize! * 1.5,
//             BGColor: Asset.buttontextColor,
//             shape: MaterialStatePropertyAll(
//               ContinuousRectangleBorder(
//                   borderRadius: BorderRadius.all(Radius.circular(5)),
//                   side: BorderSide(
//                       width: 1, color: Asset.buttontextColor)),
//             ),
//           ),
//         ]),
//       ),
//     );
//   }
// }