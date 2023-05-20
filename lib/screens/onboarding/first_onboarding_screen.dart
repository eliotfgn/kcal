import 'package:flutter/material.dart';
import 'package:kcal/screens/onboarding/onboarding_screen.dart';

class FirstOnboardingScreen extends StatelessWidget {
  const FirstOnboardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const OnboardingScreen(
      imagePath: "assets/images/onboarding1-hero.png",
      title: "Eat healthy",
      text:
          "Maintaining good health should be the primary focus of everyone.hashCode",
      currentStep: 1,
      nextStep: "/second-onboarding",
    );
  }
}
