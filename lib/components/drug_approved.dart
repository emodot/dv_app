// import 'dart:ffi';

import 'package:dv_app/components/custom_app_bar.dart';
import 'package:dv_app/components/side_nav_bar.dart';
import 'package:dv_app/constants.dart';
import 'package:dv_app/layouts/main_app.dart';
import 'package:dv_app/screens/home/home_screen.dart';
import 'package:flutter/material.dart';

class DrugApproved extends StatelessWidget {
  const DrugApproved({
    super.key,
    required this.drugId,
    required this.brandName,
    required this.status,
  });

  final String? drugId;
  final String? brandName;
  final String? status;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // drawer: SideNavBar(),
      appBar: CustomAppBar(),
      body: SingleChildScrollView(
        child: Center(
          child: status == "success"
              ? SucessPage(drugId: drugId, brandName: brandName)
              : const FailedPage(),
        ),
      ),
    );
  }
}

class SucessPage extends StatelessWidget {
  const SucessPage({
    super.key,
    required this.drugId,
    required this.brandName,
  });

  final String? drugId;
  final String? brandName;

  @override
  Widget build(BuildContext context) {
    return Column(
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
              fontSize: 24),
        ),
        const SizedBox(
          height: 30,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 45),
          child: Text(
            "This drug is approved by NAFDAC with Nafdac-no $drugId and Brand name of $brandName.",
            textAlign: TextAlign.center,
            style: const TextStyle(
                color: Color(0xFF000000),
                fontWeight: FontWeight.w800,
                fontSize: 14,
                height: 1.5),
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
    );
  }
}

class FailedPage extends StatelessWidget {
  const FailedPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 40,
        ),
        Image.asset("assets/images/declined.png"),
        const SizedBox(
          height: 60,
        ),
        const Text(
          "Drug Not Approved!",
          style: TextStyle(
              color: Color.fromARGB(255, 235, 13, 13),
              fontWeight: FontWeight.w800,
              fontSize: 24),
        ),
        const SizedBox(
          height: 30,
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 45),
          child: Text(
            "This drug is not approved by NAFDAC and we strongly advice you not to make use of this drug. Please visit the NAFDAC website to lay a complaint HERE.",
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Color(0xFF000000),
                fontWeight: FontWeight.w800,
                fontSize: 14,
                height: 1.5),
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
    );
  }
}
