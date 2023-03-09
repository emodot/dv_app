import 'package:flutter/material.dart';

import '../../constants.dart';
import '../home/home_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
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
                Image.asset(
                  "assets/images/welcome.png",
                ),
                const SizedBox(
                  height: 50,
                ),
                Column(
                  children: [
                    const Text(
                      "Can i know your name?",
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextField(
                      // onChanged: () {},
                      decoration: InputDecoration(
                        hintText: "Name (Optional)",
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
                    Container(
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
                    const SizedBox(
                      height: 40,
                    ),
                    const Align(
                      // alignment: Alignment.bottomCenter,
                      child: Text(
                        "*Note, we are not storing your name in any database",
                        style: TextStyle(
                          fontSize: 10,
                        ),
                      ),
                    ),
                    // const Spacer(),
                    const SizedBox(
                      height: 20,
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
