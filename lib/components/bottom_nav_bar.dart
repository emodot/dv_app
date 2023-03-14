import 'package:dv_app/screens/about/about_screen.dart';
import 'package:dv_app/screens/home/home_screen.dart';
import 'package:dv_app/screens/team/team_screen.dart';
import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({
    super.key,
  });

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int currentIndex = 0;
  final screens = [
    const HomeScreen(),
    const AboutScreen(),
    const TeamScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 95,
      child: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        currentIndex: currentIndex,
        onTap: (index) => currentIndex = index,
        items: [
          BottomNavigationBarItem(
            label: "",
            icon: Image.asset(
              "assets/icons/team.png",
              width: 30,
              height: 30,
            ),
          ),
          BottomNavigationBarItem(
            label: "",
            icon: Image.asset(
              "assets/icons/home.png",
              width: 30,
              height: 30,
            ),
          ),
          BottomNavigationBarItem(
            label: "",
            icon: Image.asset(
              "assets/icons/about.png",
              width: 30,
              height: 30,
            ),
          ),
        ],
      ),
    );
  }
}