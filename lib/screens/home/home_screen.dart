import 'package:dv_app/components/bottom_nav_bar.dart';
import 'package:dv_app/components/drug_approved.dart';
import 'package:dv_app/components/side_nav_bar.dart';
import 'package:dv_app/constants.dart';
import 'package:dv_app/model/verification_model.dart';
import 'package:dv_app/services/verification_client.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:dv_app/components/custom_app_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    super.key,
    required this.name,
  });
  final String name;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

bool loading = false;
late String drugId;
late DrugVerification drugDetails;
// DrugVerification drugVerification = DrugVerification(
//   status: '',
//   brand: '',
//   regNo: '',
//   response: '',
// );

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController drugIdController = TextEditingController();
  @override
  void dispose() {
    drugIdController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                    TextSpan(
                      text: "Hi ${widget.name},\n",
                      style: const TextStyle(
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
              TextFormField(
                controller: drugIdController,
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
                    onPressed: () async {
                      setState(() {
                        loading = true;
                        drugId = drugIdController.text;
                      });
                      // print(drugId);
                      try {
                        drugDetails =
                            await VerificationClient().getDrug(drugId);
                        setState(() {
                          loading = false;
                        });
                            // showModalBottomSheet(
                            //     context: context,
                            //     builder: (context) {
                            //       return Container();
                            //     })
                            // : '';
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => DrugApproved(
                                    brandName: drugDetails.brand,
                                    drugId: drugDetails.regNo,
                                    status: drugDetails.status,
                                  ),
                                ),
                              );
                        print(drugDetails.status);
                      } catch (err) {
                        setState(() {
                          loading = false;
                        });
                        rethrow;
                      }
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(
                      //     builder: (context) => const DrugApproved(),
                      //   ),
                      // );
                    },
                    style: TextButton.styleFrom(
                      // backgroundColor: kPrimaryColor,
                      foregroundColor: Colors.white,
                      fixedSize: const Size(180, 45),
                    ),
                    child: loading
                        ? const SizedBox(
                            height: 20,
                            width: 20,
                            child: CircularProgressIndicator(
                              color: Colors.white,
                            ),
                          )
                        : const Text("Submit"),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
      // bottomNavigationBar: const BottomNavBar(),
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
