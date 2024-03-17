//
// import 'package:flutter/material.dart';
// import 'package:untitled/presentation/widgets/text_app.dart';
//
// import '../../../constance/app_size.dart';
// import '../../widgets/appbar.dart';
//
// class NotificationPage extends StatefulWidget {
//   const NotificationPage({super.key});
//
//   @override
//   State<NotificationPage> createState() => _NotificationPageState();
// }
//
// class _NotificationPageState extends State<NotificationPage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: ApplicationToolbar(
//         text: 'Notifications',
//       ),
//       body: Padding(
//         padding: EdgeInsets.symmetric(horizontal: AppSize.defaultSize! * 3),
//         child: Column(children: [
//           Row(
//             children: [
//               Container(
//                 height: AppSize.defaultSize! * 4.8,
//                 width: AppSize.defaultSize! * 4.8,
//                 child: Image(
//                   image: AssetImage(
//                     'assets/images/icon@2xxnotfecation.png',
//                   ),
//                 ),
//               ),
//               SizedBox(
//                 width: AppSize.defaultSize! * 1.5,
//               ),
//               Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   TextBox(
//                       text: 'Your booking in Sizzler Steak House',
//                       fontSize: AppSize.defaultSize! * 1.4),
//                   TextBox(
//                       text: 'is done successfully',
//                       fontSize: AppSize.defaultSize! * 1.4),
//                 ],
//               ),
//             ],
//           ),
//           SizedBox(
//             height: AppSize.defaultSize! * 1,
//           ),
//           const Divider(
//             thickness: 1,
//           ),
//           Row(
//             children: [
//               Container(
//                 height: AppSize.defaultSize! * 4.8,
//                 width: AppSize.defaultSize! * 4.8,
//                 child: Image(
//                   image: AssetImage(
//                     'assets/images/icon@2xnotfecationlocation.png',
//                   ),
//                 ),
//               ),
//               SizedBox(
//                 width: AppSize.defaultSize! * 1.5,
//               ),
//               Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   TextBox(
//                       text: 'You have now 20% on reservation',
//                       fontSize: AppSize.defaultSize! * 1.4),
//                   TextBox(
//                       text: 'that have above 2 Members',
//                       fontSize: AppSize.defaultSize! * 1.4),
//                 ],
//               ),
//             ],
//           ),
//           SizedBox(
//             height: AppSize.defaultSize! * 1,
//           ),
//           const Divider(
//             thickness: 1,
//           ),
//           Row(
//             children: [
//               Container(
//                 height: AppSize.defaultSize! * 4.8,
//                 width: AppSize.defaultSize! * 4.8,
//                 child: Image(
//                   image: AssetImage(
//                     'assets/images/icon@2xright-notfecation.png',
//                   ),
//                 ),
//               ),
//               SizedBox(
//                 width: AppSize.defaultSize! * 1.5,
//               ),
//               Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   TextBox(
//                       text: 'You have now 20% on reservation',
//                       fontSize: AppSize.defaultSize! * 1.4),
//                   TextBox(
//                       text: 'that have above 2 Members',
//                       fontSize: AppSize.defaultSize! * 1.4),
//                 ],
//               ),
//             ],
//           ),
//           SizedBox(
//             height: AppSize.defaultSize! * 1,
//           ),
//           const Divider(
//             thickness: 1,
//           ),
//         ]),
//       ),
//     );
//   }
// }