import 'package:flutter/material.dart';
import 'package:kcal/constants/color_constant.dart';
import 'package:kcal/constants/text_constant.dart';
import 'package:kcal/widgets/custom_button.dart';
import 'package:kcal/widgets/onboarding_stepper.dart';

class FirstOnboardingScreen extends StatelessWidget {
  const FirstOnboardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Spacer(),
            Center(
              child: Image.asset("assets/images/kcal-logo-green.png"),
            ),
            const Spacer(),
            Image.asset("assets/images/onboarding1-hero.png"),
            const Spacer(),
            Text(
              "Eat healthy",
              style: TextConstant.onboardingTitle,
            ),
            SizedBox(
              width: 275,
              child: Text(
                "Maintaining good health should be the primary focus of everyone.",
                style: TextConstant.onboardingText,
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 12),
            const OnboardingStepper(
              currentStep: 1,
            ),
            const Spacer(),
            const CustomButton(
              text: "Getting started",
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Already Have An Account?",
                  style: TextConstant.onboardingText,
                ),
                const SizedBox(width: 5),
                Text(
                  'Log in',
                  style: TextConstant.onboardingText
                      .copyWith(color: ColorConstant.primaryGreen),
                ),
              ],
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
