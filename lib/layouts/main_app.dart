import 'package:dv_app/screens/about/about_screen.dart';
import 'package:dv_app/screens/home/home_screen.dart';
import 'package:dv_app/screens/team/team_screen.dart';
import 'package:flutter/material.dart';

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  int currentIndex = 1;
  final screens = [
    const AboutScreen(),
    const HomeScreen(),
    const TeamScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: SizedBox(
        height: 95,
        child: BottomNavigationBar(
          showSelectedLabels: true,
          showUnselectedLabels: false,
          currentIndex: currentIndex,
          onTap: (index) => setState(() => currentIndex = index),
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
      ),
    );
  }
}

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 95,
      child: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        // currentIndex: currentIndex,
        // onTap: (index) => currentIndex = index,
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
