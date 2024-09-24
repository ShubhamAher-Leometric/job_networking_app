import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:job_networking_app/constants/color_constants.dart';
import 'package:job_networking_app/menu_screen/home_screen.dart';
import 'package:job_networking_app/menu_screen/job_screen.dart';
import 'package:job_networking_app/menu_screen/messages_screen.dart';
import 'package:job_networking_app/menu_screen/profile_screen.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen({super.key});

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    JobScreen(),
    MessagesScreen(),
    ProfileScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/icons/home.png', // Path to your image
              width: 24,
              height: 24,
            ),
            activeIcon: Image.asset(
              'assets/icons/home_filled.png', // Active icon
              width: 24,
              height: 24,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/icons/jobs_unfilled.png', // Path to your image
              width: 24,
              height: 24,
            ),
            activeIcon: Image.asset(
              'assets/icons/jobs_filled.png', // Active icon
              width: 24,
              height: 24,
            ),
            label: 'Jobs',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/icons/message_unfilled.png', // Path to your image
              width: 24,
              height: 24,
            ),
            activeIcon: Image.asset(
              'assets/icons/message_filled.png', // Active icon
              width: 24,
              height: 24,
            ),
            label: 'Messages',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/icons/profile_infilled.png', // Path to your image
              width: 24,
              height: 24,
            ),
            activeIcon: Image.asset(
              'assets/icons/profile_filled.png', // Active icon
              width: 24,
              height: 24,
            ),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: appsecondaryColor,  // Color for active icon and text
        unselectedItemColor: appTextColor2,  // Color for inactive icon and text
        onTap: _onItemTapped,
        type: BottomNavigationBarType.fixed, // Ensures text is always shown
        selectedLabelStyle: TextStyle(color: appsecondaryColor),  // Active text style
        unselectedLabelStyle: TextStyle(color: appTextColor2),  // Inactive text style
      ),

    );
  }
}