import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../constants.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  late PageController _pageController;

  @override
  void initState() {
    _pageController = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        // Add box decoration
        decoration: const BoxDecoration(
          // Box decoration takes a gradient
          gradient: LinearGradient(
            // Where the linear gradient begins and ends
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            // Add one stop for each color. Stops should increase from 0 to 1
            stops: [0.1, 0.9],
            colors: [
              // Colors are easy thanks to Flutter's Colors class.
              kPrimaryColor2,
              kPrimaryColor,
            ],
          ),
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Row(
                  children: [
                    const Spacer(),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.transparent.withOpacity(0.1),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Text("Skip"),
                          const SizedBox(
                            width: 5,
                          ),
                          SvgPicture.asset("assets/icons/ArrowRight.svg",
                              color: Colors.white, width: 20.0),
                        ],
                      ),
                    ),
                  ],
                ),
                Expanded(
                  child: PageView.builder(
                    itemCount: demo_data.length,
                    controller: _pageController,
                    itemBuilder: (context, index) => OnboardContent(
                      image: demo_data[index].image,
                      title: demo_data[index].title,
                    ),
                  ),
                ),
                Row(
                  children: [
                    const Spacer(),
                    SizedBox(
                      height: 60,
                      width: 60,
                      child: ElevatedButton(
                        onPressed: () {
                          _pageController.nextPage(
                            duration: const Duration(milliseconds: 300),
                            curve: Curves.ease,
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          shape: const CircleBorder(),
                        ),
                        child: SvgPicture.asset(
                          "assets/icons/ArrowRight.svg",
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class OnBoard {
  final String image, title;

  OnBoard({
    required this.image,
    required this.title,
  });
}

final List<OnBoard> demo_data = [
  OnBoard(
    image: "assets/images/onboarding-1.png",
    title: "Lorem ipsum dolor sit amet, consectetur",
  ),
  OnBoard(
    image: "assets/images/onboarding-2.png",
    title: "Lorem ipsum dolor sit amet, consectetur",
  ),
  OnBoard(
    image: "assets/images/onboarding-3.png",
    title: "Lorem ipsum dolor sit amet, consectetur",
  ),
];

class OnboardContent extends StatelessWidget {
  const OnboardContent({
    super.key,
    required this.image,
    required this.title,
  });

  final String image, title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Spacer(),
        Image.asset(
          image,
          width: 350,
          // height: 350,
        ),
        const SizedBox(
          height: 30,
        ),
        Text(
          title,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontWeight: FontWeight.w800,
            fontSize: 22,
            color: Colors.white,
          ),
        ),
        const Spacer(),
      ],
    );
  }
}
