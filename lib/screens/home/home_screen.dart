import 'package:dv_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    "assets/images/Logo-colored.png",
                    height: 120,
                    width: 120,
                  ),
                  SvgPicture.asset("assets/icons/menu_toggle.svg"),
                ],
              ),
              const SizedBox(
                height: 50,
              ),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "Hi John,\n",
                      style:
                          Theme.of(context).textTheme.headlineMedium?.copyWith(
                                color: kPrimaryColor,
                                fontWeight: FontWeight.w800,
                                fontSize: 18,
                              ),
                    ),
                    TextSpan(
                      text: "How are you feeling today?",
                      style:
                          Theme.of(context).textTheme.headlineSmall?.copyWith(
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
                    flex: 5,
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "Let’s help you ",
                            style: Theme.of(context)
                                .textTheme
                                .headlineSmall
                                ?.copyWith(
                                  color: kTextColor,
                                  fontWeight: FontWeight.w800,
                                  fontSize: 22,
                                  height: 1.5,
                                ),
                          ),
                          TextSpan(
                            text: "verify ",
                            style: Theme.of(context)
                                .textTheme
                                .headlineSmall
                                ?.copyWith(
                                  color: kPrimaryColor2,
                                  fontWeight: FontWeight.w800,
                                  fontSize: 22,
                                  height: 1.5,
                                ),
                          ),
                          TextSpan(
                            text: "your drugs before ",
                            style: Theme.of(context)
                                .textTheme
                                .headlineSmall
                                ?.copyWith(
                                  color: kTextColor,
                                  fontWeight: FontWeight.w800,
                                  fontSize: 22,
                                  height: 1.5,
                                ),
                          ),
                          TextSpan(
                            text: "usage.",
                            style: Theme.of(context)
                                .textTheme
                                .headlineSmall
                                ?.copyWith(
                                  color: kPrimaryColorMid,
                                  fontWeight: FontWeight.w800,
                                  fontSize: 22,
                                  height: 1.5,
                                ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 5,
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
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            label: "",
            icon: Image.asset(
              "assets/icons/team.png",
            ),
          ),
          BottomNavigationBarItem(
            label: "",
            icon: Image.asset(
              "assets/icons/home.png",
            ),
          ),
          BottomNavigationBarItem(
            label: "",
            icon: Image.asset(
              "assets/icons/about.png",
            ),
          ),
        ],
      ),
    );
  }
}
