// import 'package:flutter/material.dart';
// import 'package:table_calendar/table_calendar.dart';
// import 'package:untitled/presentation/widgets/text_app.dart';
//
// import '../../../../constance/app_size.dart';
// import '../../../../constance/color_assets.dart';
// import '../../../widgets/appbar.dart';
//
// class modifyBookingPage extends StatefulWidget {
//   const modifyBookingPage({super.key});
//
//   @override
//   State<modifyBookingPage> createState() => _modifyBookingPageState();
// }
//
// class _modifyBookingPageState extends State<modifyBookingPage> {
//   DateTime today = DateTime.now();
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: const ApplicationToolbar(text: 'Modify Booking'),
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: EdgeInsets.symmetric(horizontal: AppSize.defaultSize! * 1.6),
//           child:
//           Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
//             Row(
//               children: [
//                 TextBox(
//                     text: 'No. of Members',
//                     fontSize: AppSize.defaultSize! * 1.5),
//                 SizedBox(width: AppSize.defaultSize! * 1.4),
//                 CircleAvatar(
//                   radius: 15,
//                   backgroundColor: Asset.modefyColor,
//                   child: InkWell(
//                       onTap: () {},
//                       child: TextBox(
//                         text: '-',
//                         fontSize: AppSize.defaultSize! * 2,
//                         color: Asset.buttontextColor,
//                       )),
//                 ),
//                 SizedBox(width: AppSize.defaultSize! * 1),
//                 TextBox(text: '5', fontSize: AppSize.defaultSize! * 1.4),
//                 SizedBox(width: AppSize.defaultSize! * 1),
//                 CircleAvatar(
//                   radius: 15,
//                   backgroundColor: Asset.modefyColor,
//                   child: InkWell(
//                       onTap: () {},
//                       child: TextBox(
//                         text: '+',
//                         fontSize: AppSize.defaultSize! * 1.7,
//                         color: Asset.buttontextColor,
//                       )),
//                 ),
//               ],
//             ),
//             SizedBox(height: AppSize.defaultSize! * 3),
//             TextBox(
//                 text: 'Please Select Branch',
//                 fontSize: AppSize.defaultSize! * 1.6),
//             SizedBox(height: AppSize.defaultSize! * 3),
//             InkWell(
//               onTap: () {},
//               child: Container(
//                 alignment: Alignment.center,
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadiusDirectional.circular(10),
//                   border: Border.all(width: 1, color: Asset.bordercolor),
//                 ),
//                 height: AppSize.defaultSize! * 8,
//                 width: AppSize.defaultSize! * 35.5,
//                 child: Padding(
//                   padding: EdgeInsets.symmetric(
//                       horizontal: AppSize.defaultSize! * 2,
//                       vertical: AppSize.defaultSize! * 0.5),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       TextBox(
//                           text: 'Maadi ',
//                           fontWeight: FontWeight.w700,
//                           fontSize: AppSize.defaultSize! * 1.4,
//                           color: Color.fromRGBO(133, 133, 133, 1)),
//                       TextBox(
//                           text: '17 Road 231 Maadi Degla Cairo, Egypt',
//                           fontSize: AppSize.defaultSize! * 1.4,
//                           color: Color.fromRGBO(133, 133, 133, 1)),
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//             SizedBox(height: AppSize.defaultSize! * 1),
//             InkWell(
//               onTap: () {},
//               child: Container(
//                 alignment: Alignment.center,
//                 decoration: BoxDecoration(
//                   color: Color.fromRGBO(248, 237, 237, 1),
//                   borderRadius: BorderRadiusDirectional.circular(10),
//                   border: Border.all(width: 1, color: Asset.bordercolor),
//                 ),
//                 height: AppSize.defaultSize! * 8,
//                 width: AppSize.defaultSize! * 35.5,
//                 child: Padding(
//                   padding: EdgeInsets.symmetric(
//                       horizontal: AppSize.defaultSize! * 2,
//                       vertical: AppSize.defaultSize! * 0.5),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       TextBox(
//                           text: 'Nasr City',
//                           fontWeight: FontWeight.w700,
//                           fontSize: AppSize.defaultSize! * 1.4,
//                           color: Color.fromRGBO(186, 83, 83, 1)),
//                       TextBox(
//                           text:
//                           'Level 4 City Stars Mall Nasr City Cairo, Egypt',
//                           fontSize: AppSize.defaultSize! * 1.4,
//                           color: Color.fromRGBO(186, 83, 83, 1)),
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//             SizedBox(height: AppSize.defaultSize! * 1),
//             InkWell(
//               onTap: () {},
//               child: Container(
//                 alignment: Alignment.center,
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadiusDirectional.circular(10),
//                   border: Border.all(width: 1, color: Asset.bordercolor),
//                 ),
//                 height: AppSize.defaultSize! * 8,
//                 width: AppSize.defaultSize! * 35.5,
//                 child: Padding(
//                   padding: EdgeInsets.symmetric(
//                       horizontal: AppSize.defaultSize! * 2,
//                       vertical: AppSize.defaultSize! * 0.5),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       TextBox(
//                           text: 'New Cairo',
//                           fontWeight: FontWeight.w700,
//                           fontSize: AppSize.defaultSize! * 1.4,
//                           color: Color.fromRGBO(133, 133, 133, 1)),
//                       TextBox(
//                           text:
//                           'Fountain Area in Cairo Festival City Mall New Cairo Cairo, Egypt',
//                           fontSize: AppSize.defaultSize! * 1.4,
//                           color: Color.fromRGBO(133, 133, 133, 1)),
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//             SizedBox(height: AppSize.defaultSize! * 3),
//             TextBox(text: 'Booking Time', fontSize: AppSize.defaultSize! * 1.6),
//             Container(
//               child: TableCalendar(
//                 headerStyle: const HeaderStyle(
//                   titleCentered: true,
//                   formatButtonShowsNext: const bool.fromEnvironment(''),
//                 ),
//                 availableGestures: AvailableGestures.all,
//                 selectedDayPredicate: (day) => isSameDay(day, DateTime(2024)),
//                 focusedDay: today,
//                 firstDay: DateTime.utc(2010, 10, 16),
//                 lastDay: DateTime.utc(20300, 10, 16),
//                 // onDaySelected: _onDaySelected,
//               ),
//             ),
//           ]),
//         ),
//       ),
//     );
//   }
// }
