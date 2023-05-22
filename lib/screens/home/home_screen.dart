import 'package:flutter/material.dart';
import 'package:kcal/constants/color_constant.dart';
import 'package:kcal/constants/text_constant.dart';
import 'package:kcal/widgets/onboarding_stepper.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 45),
              Text(
                "Hello Eliot,",
                style: TextConstant.homeTitle,
              ),
              Text("Find, track and eat healthy food.",
                  style: TextConstant.homeText),
              const SizedBox(height: 16),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 25),
                padding:
                    const EdgeInsets.symmetric(vertical: 25, horizontal: 30),
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [
                      Color(0XFFFFF2F0),
                      Color(0XFFFFF8EB),
                    ],
                  ),
                  borderRadius: BorderRadius.circular(32),
                ),
                child: Row(children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "ARTICLE",
                          style: TextConstant.bannerTitle,
                        ),
                        Text(
                          "The pros and cons of fast food.",
                          style: TextConstant.bannerText,
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            elevation: 0,
                            backgroundColor: ColorConstant.primaryGreen,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            fixedSize: const Size(108, 32),
                            splashFactory: NoSplash.splashFactory,
                          ),
                          child: Row(
                            children: [
                              Text(
                                "Read Now",
                                style: TextConstant.buttonText2,
                              ),
                              const Icon(Icons.arrow_right_rounded),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Expanded(
                      child: Image.asset("assets/images/home-banner-hero.png"))
                ]),
              ),
              const SizedBox(
                height: 10,
              ),
              const OnboardingStepper(currentStep: 1),
              const SizedBox(
                height: 15,
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 25),
                padding:
                    const EdgeInsets.symmetric(vertical: 25, horizontal: 30),
                decoration: BoxDecoration(
                  color: const Color(0XFF9E9BC7),
                  borderRadius: BorderRadius.circular(36),
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Text(
                        "Track Your Weekly Progress",
                        style: TextConstant.bannerTitle
                            .copyWith(fontSize: 18, color: Colors.white),
                      ),
                    ),
                    const SizedBox(
                      width: 35,
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        elevation: 0,
                        backgroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        fixedSize: const Size(108, 32),
                        splashFactory: NoSplash.splashFactory,
                      ),
                      child: Row(
                        children: [
                          Text(
                            "View Now",
                            style: TextConstant.buttonText2
                                .copyWith(color: const Color(0XFF9E9BC7)),
                          ),
                          const Icon(
                            Icons.arrow_right_rounded,
                            color: Color(0XFF9E9BC7),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Choose Your Favorites",
                    style: TextConstant.sectionTitle,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
