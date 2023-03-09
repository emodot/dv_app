import 'package:dv_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:dv_app/components/custom_app_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: const Drawer(),
      appBar: CustomAppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // const TopBar(),
              const SizedBox(
                height: 50,
              ),
              RichText(
                text: TextSpan(
                  children: [
                    const TextSpan(
                      text: "Hi John,\n",
                      style: TextStyle(
                        color: kPrimaryColor,
                        fontWeight: FontWeight.w800,
                        fontSize: 18,
                      ),
                    ),
                    TextSpan(
                      text: "How are you feeling today?",
                      style: TextStyle(
                        color: kTextColor.withOpacity(0.8),
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        height: 2,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Expanded(
                    child: RichText(
                      text: const TextSpan(
                        style: TextStyle(
                          color: kTextColor,
                          fontWeight: FontWeight.w800,
                          fontSize: 22,
                          height: 1.5,
                        ),
                        children: [
                          TextSpan(
                            text: "Let’s help you ",
                          ),
                          TextSpan(
                            text: "verify ",
                            style: TextStyle(
                              color: kPrimaryColor2,
                            ),
                          ),
                          TextSpan(
                            text: "your drugs before ",
                          ),
                          TextSpan(
                            text: "usage.",
                            style: TextStyle(
                              color: kPrimaryColorMid,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Image.asset("assets/images/doctor.png"),
                  ),
                ],
              ),
              const SizedBox(
                height: 50,
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: "Enter NAFDAC -No",
                  hintStyle: TextStyle(
                    fontSize: 14,
                    color: kTextColor.withOpacity(0.3),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 1,
                      color: kTextColor.withOpacity(0.1),
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 1,
                      color: kTextColor.withOpacity(0.1),
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Center(
                child: Container(
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      colors: [
                        kPrimaryColor,
                        kPrimaryColor2,
                      ],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const HomeScreen(),
                        ),
                      );
                    },
                    style: TextButton.styleFrom(
                      // backgroundColor: kPrimaryColor,
                      foregroundColor: Colors.white,
                      fixedSize: const Size(180, 45),
                    ),
                    child: const Text("Submit"),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: SizedBox(
        height: 95,
        child: BottomNavigationBar(
          showSelectedLabels: false,
          showUnselectedLabels: false,
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

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Colors.transparent,
      automaticallyImplyLeading: false,
      elevation: 0,
      titleSpacing: 30,
      centerTitle: false,
      title: Image.asset(
        "assets/images/Logo-colored.png",
        width: 120,
        height: 120,
        fit: BoxFit.contain,
      ),
      actions: [
        GestureDetector(
          onTap: () {
            // Scaffold.of(context).openDrawer();
          },
          child: Padding(
            padding: const EdgeInsets.only(right: 30),
            child: SvgPicture.asset("assets/icons/menu_toggle.svg"),
          ),
        )
      ],
      // leadingWidth: 100,
    );
  }
}

