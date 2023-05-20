import 'package:flutter/material.dart';
import 'package:kcal/constants/color_constant.dart';
import 'package:kcal/constants/text_constant.dart';
import 'package:kcal/widgets/custom_button.dart';
import 'package:kcal/widgets/onboarding_stepper.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({
    Key? key,
    required this.imagePath,
    required this.title,
    required this.text,
    required this.currentStep,
    required this.nextStep,
  }) : super(key: key);

  final String imagePath;
  final String title;
  final String text;
  final int currentStep;
  final String nextStep;

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
            Image.asset(imagePath),
            const Spacer(),
            Text(
              title,
              style: TextConstant.onboardingTitle,
            ),
            SizedBox(
              width: 275,
              child: Text(
                text,
                style: TextConstant.onboardingText,
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 12),
            OnboardingStepper(
              currentStep: currentStep,
            ),
            const Spacer(),
            CustomButton(
              text: "Getting started",
              onPressed: () {
                Navigator.pushNamed(context, nextStep);
              },
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
