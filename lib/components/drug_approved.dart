import 'package:dv_app/components/custom_app_bar.dart';
import 'package:dv_app/components/side_nav_bar.dart';
import 'package:dv_app/constants.dart';
import 'package:dv_app/layouts/main_app.dart';
import 'package:dv_app/screens/home/home_screen.dart';
import 'package:flutter/material.dart';

class DrugApproved extends StatelessWidget {
  const DrugApproved({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // drawer: SideNavBar(),
      appBar: CustomAppBar(),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 40,
              ),
              Image.asset("assets/images/approved.png"),
              const SizedBox(
                height: 60,
              ),
              const Text(
                "Drug Approved",
                style: TextStyle(
                  color: Color(0xFF2AAC0A),
                  fontWeight: FontWeight.w800,
                  fontSize: 24
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 45),
                child: Text(
                  "This drug is approved by NAFDAC with Nafdac-no 04-0633 and Brand name of M & B.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF000000),
                    fontWeight: FontWeight.w800,
                    fontSize: 14,
                    height: 1.5
                  ),
                ),
              ),
              const SizedBox(
                height: 40,
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
                      Navigator.of(context).pop();
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(
                      //     builder: (context) => MainApp(name: ),
                      //   ),
                      // );
                    },
                    style: TextButton.styleFrom(
                      // backgroundColor: kPrimaryColor,
                      foregroundColor: Colors.white,
                      fixedSize: const Size(180, 45),
                    ),
                    child: const Text("OK"),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
