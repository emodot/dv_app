import 'package:dv_app/layouts/main_app.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../constants.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  TextEditingController nameController = TextEditingController();
  @override
  void dispose() {
    nameController.dispose();
    super.dispose();
  }

  final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
  Future<void> _submit() async {
    final SharedPreferences prefs = await _prefs;

    setState(() {
      prefs.setString('username', nameController.text);
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScopeNode currentFocus = FocusScope.of(context);
        if (!currentFocus.hasPrimaryFocus) {
          currentFocus.unfocus();
        }
      },
      child: Scaffold(
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
                        controller: nameController,
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
                                builder: (context) => MainApp(userName: nameController.text,),
                              ),
                            );
                          },
                          style: TextButton.styleFrom(
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
      ),
    );
  }
}
