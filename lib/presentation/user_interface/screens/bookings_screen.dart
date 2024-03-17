// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:untitled/bussiness_logic/booking_cubit.dart';
// import 'package:untitled/data/models/booking_class.dart';
// import 'package:untitled/presentation/widgets/text_app.dart';
//
// import '../../../constance/app_size.dart';
// import '../../../constance/color_assets.dart';
// import '../../widgets/booking_card.dart';
//
// class BookingsPage extends StatefulWidget {
//   const BookingsPage({super.key});
//
//   @override
//   State<BookingsPage> createState() => _BookingsPageState();
// }
//
//
// class _BookingsPageState extends State<BookingsPage> {
//   List<bool> isSelected = List.generate(2, (index) => false);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//           title:
//           TextBox(text: 'My Bookings', fontSize: AppSize.defaultSize! * 2),
//           centerTitle: true),
//       body: Column(
//         children: [
//           Center(
//             child: ToggleButtons(
//                 selectedColor: Asset.buttontextColor,
//                 // fillColor: Asset.text2color,
//                 borderRadius: BorderRadius.circular(50),
//                 borderWidth: 1,
//                 borderColor: Asset.text2color,
//                 onPressed: (int index) {
//                   setState(() {
//                     if (index == 0) {
//                       isSelected[index] = !isSelected[index];
//                       isSelected[index + 1] = !isSelected[index];
//                     } else {
//                       isSelected[index] = !isSelected[index];
//                       isSelected[index - 1] = !isSelected[index];
//                     }
//                   });
//                 },
//                 isSelected: isSelected,
//                 children: [
//                   Padding(
//                     padding: EdgeInsets.symmetric(
//                         horizontal: AppSize.defaultSize! * 1.2),
//                     child: TextBox(
//                       text: 'Upcoimg',
//                       fontSize: AppSize.defaultSize! * 1.2,
//                     ),
//                   ),
//                   Padding(
//                     padding: EdgeInsets.symmetric(
//                         horizontal: AppSize.defaultSize! * 1.2),
//                     child: TextBox(
//                         text: 'History', fontSize: AppSize.defaultSize! * 1.2),
//                   ),
//                 ]),
//           ),
//           SizedBox(height: AppSize.defaultSize! * 1.2),
//           BlocConsumer<BookingCubit, BookingState>(
//             listener: (context, state) {
//
//             },
//             builder: (context, state) {
//               if (state is BookingLoaded) {
//                 return Expanded(
//                   child: ListView.builder(itemBuilder: (context, index) {
//                     return bookingCategoryCard(
//                         image: const AssetImage('assets/images/restourant.jpg'),
//                         text: context.read<BookingCubit>().booking[index].restaurant?.name ?? '',
//                         text2: '420 EGP',
//                         text3: '4 Members',
//                         text4: context.read<BookingCubit>().booking[index].startTime ?? '',
//                         text6: context.read<BookingCubit>().booking[index].endTime ?? '',
//                         text5: '17 Road 231 Maadi Degla Branch', );
//                   }, itemCount: context.read<BookingCubit>().booking.length,),
//                 );
//               } else {
//                 return showLoadingIndicator();
//               }
//             },
//           ),
//
//         ],
//       ),
//     );
//   }
// }
//
//
// Widget showLoadingIndicator() {
//   return const Center(
//     child: CircularProgressIndicator(
//       color: Colors.red,
//     ),
//   );
// }