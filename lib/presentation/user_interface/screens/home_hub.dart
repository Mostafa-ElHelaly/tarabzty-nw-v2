import 'package:flutter/material.dart';
import '../../../core/constance/color_assets.dart';
import '../../../data/models/booking_class.dart';
import 'home_page.dart';

class HomeHub extends StatefulWidget {
  const HomeHub({super.key});

  @override
  State<HomeHub> createState() => _HomeHubState();
}

class _HomeHubState extends State<HomeHub> {
  DateTime today = DateTime.now();

  void _onDaySelected(DateTime day, DateTime focusDay) {
    setState(() {
      today = day;
    });
  }

  late final List<BookingModel> bookings;

  int _currentIndex = 0;
  List<Widget> body = [
    HomePage(),
    // BookingsPage(),
    // const NotificationPage(),
    // const ProfilePage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: body[_currentIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: false,
        selectedItemColor: ColorAsset.buttonTextColor,
        currentIndex: _currentIndex,
        onTap: (int newIndex) {
          setState(() {
            _currentIndex = newIndex;
          });
        },
        items: const [
          BottomNavigationBarItem(
              label: 'Home',
              icon: Icon(
                Icons.home,
                color: Color.fromRGBO(128, 129, 132, 1),
              )),
          BottomNavigationBarItem(
              label: 'Bookings',
              icon: Icon(
                Icons.calendar_today,
                color: Color.fromRGBO(128, 129, 132, 1),
              )),
          BottomNavigationBarItem(
              label: 'Notifications',
              icon: Icon(
                Icons.notifications_none,
                color: Color.fromRGBO(128, 129, 132, 1),
              )),
          BottomNavigationBarItem(
              label: 'Profile',
              icon: Icon(
                Icons.person,
                color: Color.fromRGBO(128, 129, 132, 1),
              )),
        ],
      ),
    );
  }
}
