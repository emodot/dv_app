import 'package:dv_app/components/custom_app_bar.dart';
import 'package:dv_app/components/side_nav_bar.dart';
import 'package:dv_app/screens/about/about_screen.dart';
import 'package:dv_app/screens/home/home_screen.dart';
import 'package:dv_app/screens/team/team_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MainApp extends StatefulWidget {
   const MainApp({
    super.key,
    required this.userName,
    this.index = 1,
  });

  final String userName;
  final int index;

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  // final String userName;
  late int currentIndex = widget.index;
  late final screens = [
    const AboutScreen(),
    HomeScreen(name: widget.userName),
    const TeamScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    // SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark);
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.dark,
      child: GestureDetector(
        onTap: () {
          FocusScopeNode currentFocus = FocusScope.of(context);
          if (!currentFocus.hasPrimaryFocus) {
            currentFocus.unfocus();
          }
        },
        child: Scaffold(
          drawer: SideNavBar(userName: widget.userName),
          appBar: CustomAppBar(),
          // body: screens[currentIndex],
          body: IndexedStack(
            index: currentIndex,
            children: screens,
          ),
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
