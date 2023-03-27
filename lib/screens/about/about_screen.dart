import 'package:dv_app/constants.dart';
import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            children: [
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
                  style: TextStyle(color: kTextColor, height: 2),
                  children: [
                    TextSpan(
                      text: 'There is a popular saying that "Health is Wealth" \n',
                    ),
                    TextSpan(
                      text: "Our society right now is faced with the challenge of dealing with fake drugs which have taken over our markets and even going to the extent of claiming innocent lives. We saw this as a problem to our society and decided to rise to the challenges to limit its destruction to lives. \n",
                    ),
                    TextSpan(
                      text:
                          'We decided to provide a solution to this challenge which is in line with the United Nations Sustainable Development Goal (SDG) No. 3: Good Health and Well-being i.e. Ensuring healthy lives and promoting well-being for all and at all ages which is essential to sustainable development. We arrived at a solution by developing this App and named it "DV App" (Drug Verification app). \n',
                    ),
                    TextSpan(
                      text:
                          'We designed and built this app for everyone in Nigeria to be able to verify their drugs upon purchase from any drug store or pharmacy, if the drugs they are about to consume is void of harm and if it is fully endorsed by the National Agency of Foods and Drugs Administration Company (NAFDAC) which is concerned with the regularization of consumables.',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      // bottomNavigationBar: const BottomNavBar(),
    );
  }
}
