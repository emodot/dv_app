import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(
            left: 25.0,
            right: 25.0,
          ),
          child: Column(
            children: [
              Row(
                children: [
                  Image.asset(
                    "assets/images/Logo-colored.png",
                    height: 120,
                    width: 120,
                  ),
                ],
              ),
              Row(
                children: const [
                  Text(
                    "Hi there,",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ],
              ),
              Image.asset("assets/images/welcome.png")
            ],
          ),
        ),
      ),
    );
  }
}
