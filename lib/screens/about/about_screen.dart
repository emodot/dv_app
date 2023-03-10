import 'package:dv_app/components/bottom_nav_bar.dart';
import 'package:dv_app/components/custom_app_bar.dart';
import 'package:dv_app/components/side_nav_bar.dart';
import 'package:dv_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const SideNavBar(),
      appBar: CustomAppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            children: [
              Row(
                children: [
                  TextButton(
                    onPressed: () {},
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SvgPicture.asset(
                          "assets/icons/CaretLeft.svg",
                          color: kTextColor.withOpacity(0.7),
                          width: 14,
                        ),
                        Text(
                          "Back",
                          style: TextStyle(
                            color: kTextColor.withOpacity(0.7),
                            fontSize: 12,
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              const Text(
                "About DV App",
                style: TextStyle(
                    fontWeight: FontWeight.w800,
                    fontSize: 24,
                    color: kPrimaryColor),
              ),
              const SizedBox(
                height: 20,
              ),
              RichText(
                textAlign: TextAlign.center,
                text: const TextSpan(
                  style: TextStyle(
                    color: kTextColor,
                    height: 2
                  ),
                  children: [
                    TextSpan(
                      text:
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla mollis neque vel urna accumsan pretium. Vestibulum sed massa et justo hendrerit cursus.Nullam vel felis in ante accumsan consectetur adipiscing elit. Nulla mollis neque vel urna accumsan pretium. Vestibulum sed massa et justo hendrerit cursus.Nullam vel felis in ante accumsan",
                    ),
                    TextSpan(
                      text:
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla mollis neque vel urna accumsan pretium. Vestibulum sed massa et justo hendrerit cursus.Nullam vel felis in ante accumsan consectetur adipiscing elit. Nulla mollis neque vel urna accumsan pretium. Vestibulum sed massa et justo hendrerit cursus.Nullam vel felis in ante accumsan",
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const BottomNavBar(),
    );
  }
}
