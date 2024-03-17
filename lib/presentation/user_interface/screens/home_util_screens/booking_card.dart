//
//
//
// import 'package:flutter/material.dart';
// import 'package:untitled/presentation/views/main_hub/home_hub.dart';
// import 'package:untitled/presentation/widgets/text_app.dart';
// import 'package:untitled/presentation/widgets/elevated_button.dart';
//
// import '../../constance/app_size.dart';
// import '../../constance/color_assets.dart';
// import '../views/main_hub/home_util_screens/modify_booking.dart';
//
// class bookingCategoryCard extends StatelessWidget {
//   const bookingCategoryCard({
//     super.key,
//     required this.image,
//     required this.text,
//     required this.text2,
//     required this.text3,
//     required this.text4,
//     required this.text5, required this.text6,
//   });
//
//   final ImageProvider<Object> image;
//   final String text;
//   final String text2;
//   final String text3;
//   final String text4;
//   final String text5;
//   final String text6;
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: AppSize.defaultSize! * 35,
//       width: AppSize.screenWidth,
//       child: Padding(
//         padding: EdgeInsets.symmetric(horizontal: AppSize.defaultSize! * 2),
//         child: Column(
//           children: [
//             ClipRRect(
//               borderRadius: const BorderRadius.vertical(top: Radius.circular(15)),
//               child: Image(
//                 fit: BoxFit.fitWidth,
//                 image: image,
//                 width: AppSize.screenWidth,
//                 height: AppSize.defaultSize! * 13.6,
//               ),
//             ),
//             SizedBox(
//               height: AppSize.defaultSize! * 1,
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 TextBox(
//                   text: text,
//                   fontSize: AppSize.defaultSize! * 1.6,
//                   fontWeight: FontWeight.w500,
//                 ),
//                 TextBox(
//                   text: text2,
//                   fontSize: AppSize.defaultSize! * 1.6,
//                   fontWeight: FontWeight.w500,
//                   color: Asset.buttontextColor,
//                 ),
//               ],
//             ),
//             SizedBox(
//               height: AppSize.defaultSize! * 1,
//             ),
//             Row(children: [
//               const Icon(Icons.person_2_outlined, color: Asset.buttontextColor),
//               SizedBox(width: AppSize.defaultSize! * 1),
//               TextBox(
//                 text: text3,
//                 fontSize: AppSize.defaultSize! * 1.3,
//               ),
//             ]),
//             Row(children: [
//               const Icon(Icons.access_time, color: Asset.buttontextColor),
//               SizedBox(width: AppSize.defaultSize! * 1),
//               TextBox(
//                 text: text4,
//                 fontSize: AppSize.defaultSize! * 1.3,
//               ),
//               SizedBox(width: AppSize.defaultSize! * 0.2),
//
//               TextBox(
//                 text: text6,
//                 fontSize: AppSize.defaultSize! * 1.3,
//               ),
//             ]),
//             SizedBox(width: AppSize.defaultSize! * 1),
//             Row(children: [
//               const Icon(Icons.location_on_outlined, color: Asset.buttontextColor),
//               SizedBox(width: AppSize.defaultSize! * 1),
//               TextBox(
//                 text: text5,
//                 fontSize: AppSize.defaultSize! * 1.3,
//               ),
//             ]),
//             SizedBox(height: AppSize.defaultSize! * 2),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 CustomElevatedButton(
//                   onTap: () {
//                     Navigator.push(
//                       context,
//                       MaterialPageRoute(
//                         builder: (context) {
//                           return modifyBookingPage();
//                         },
//                       ),
//                     );
//                   },
//                   text: 'Modify Booking',
//                   textColor: Asset.buttontextColor,
//                   textSize: AppSize.defaultSize! * 1.5,
//                   BGColor: Colors.white,
//                   shape: const MaterialStatePropertyAll(
//                     ContinuousRectangleBorder(
//                         borderRadius: BorderRadius.all(Radius.circular(5)),
//                         side:
//                             BorderSide(width: 1, color: Asset.buttontextColor)),
//                   ),
//                 ),
//                 CustomElevatedButton(
//                   onTap: () {
//                     showDialog(
//                       context: context,
//                       builder: (context) => AlertDialog(
//
//                         alignment: Alignment.center,
//                         title: Column(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           crossAxisAlignment: CrossAxisAlignment.center,
//                           children: [
//                             TextBox(
//                                 text:
//                                     'Are you sure that you want to cancel your booking ?',
//                                 fontSize: AppSize.defaultSize! * 1.6,
//                                 color: Asset.buttontextColor),
//                             SizedBox(height: AppSize.defaultSize! * 1.6),
//                             TextBox(
//                                 text:
//                                     'There is a cancellation fees which is 50 EGP / Member',
//                                 fontSize: AppSize.defaultSize! * 1.3),
//                             Row(
//                               mainAxisAlignment: MainAxisAlignment.spaceAround,
//                               children: [
//                                 CustomElevatedButton(
//                                   onTap: () {
//                                     Navigator.push(
//                                       context,
//                                       MaterialPageRoute(
//                                         builder: (context) {
//                                           return HomeHub();
//                                         },
//                                       ),
//                                     );
//                                   },
//                                   text: 'Back',
//                                   textColor: Asset.buttontextColor,
//                                   textSize: AppSize.defaultSize! * 1.5,
//                                   BGColor: Colors.white,
//                                   shape: const MaterialStatePropertyAll(
//                                     ContinuousRectangleBorder(
//                                         borderRadius: BorderRadius.all(
//                                             Radius.circular(5)),
//                                         side: BorderSide(
//                                             width: 1,
//                                             color: Asset.buttontextColor)),
//                                   ),
//                                 ),
//                                 CustomElevatedButton(
//                                   onTap: () {
//                                     // Navigator.push(
//                                     //   context,
//                                     //   MaterialPageRoute(
//                                     //     builder: (context) {
//                                     //       return bookings();
//                                     //     },
//                                     //   ),
//                                     // );
//                                   },
//                                   text: 'yes, Sure',
//                                   textColor: Colors.white,
//                                   textSize: AppSize.defaultSize! * 1.5,
//                                   BGColor: Asset.buttontextColor,
//                                   shape: const MaterialStatePropertyAll(
//                                     ContinuousRectangleBorder(
//                                         borderRadius: BorderRadius.all(
//                                             Radius.circular(5)),
//                                         side: BorderSide(
//                                             width: 1,
//                                             color: Asset.buttontextColor)),
//                                   ),
//                                 ),
//                               ],
//                             )
//                           ],
//                         ),
//                       ),
//                     );
//                   },
//                   text: 'Cancel Booking',
//                   textColor: Colors.white,
//                   textSize: AppSize.defaultSize! * 1.5,
//                   BGColor: Colors.red,
//                   shape: const MaterialStatePropertyAll(
//                     ContinuousRectangleBorder(
//                         borderRadius: BorderRadius.all(Radius.circular(5)),
//                         side:
//                             BorderSide(width: 1, color: Asset.buttontextColor)),
//                   ),
//                 ),
//               ],
//             ),
//             const Divider(
//               thickness: 1,
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
