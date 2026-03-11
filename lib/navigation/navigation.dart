import 'package:flutter/material.dart';
import 'package:property_management_app/view/homescreen.dart';
import 'package:property_management_app/view/properties_screen.dart';
import 'package:property_management_app/view/payment_screen.dart';
import 'package:property_management_app/view/profile_screen.dart';
import 'package:property_management_app/view/reports_screen.dart';

class Navigationscreen extends StatefulWidget {
  const Navigationscreen({super.key});

  @override
  State<Navigationscreen> createState() => _NavigationscreenState();
}

class _NavigationscreenState extends State<Navigationscreen> {
  int _currentIndex = 0;
  final List<Widget> _screens = [
    Homescreen(),
    PropertiesScreen(),
    PaymentScreen(),
    ProfileScreen(),
    ReportsScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex],

      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(splashColor: Colors.transparent),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.purple,
          unselectedItemColor: Colors.grey,
          showUnselectedLabels: false,
          showSelectedLabels: false,
          currentIndex: _currentIndex,

          onTap: (value) {
            setState(() {
              _currentIndex = value;
            });
          },

          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(
              icon: Icon(Icons.house),
              label: "House Detail",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.payment),
              label: "Payment",
            ),

            BottomNavigationBarItem(
              icon: Icon(Icons.person_2_rounded),
              label: "Profile",
            ),
            BottomNavigationBarItem(icon: Icon(Icons.report), label: "Report"),
          ],
        ),
      ),
    );
  }
}
