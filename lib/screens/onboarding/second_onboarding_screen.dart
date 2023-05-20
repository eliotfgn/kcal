import 'package:flutter/material.dart';
import 'package:kcal/screens/onboarding/onboarding_screen.dart';

class SecondOnboardingScreen extends StatelessWidget {
  const SecondOnboardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const OnboardingScreen(
        imagePath: "assets/images/onboarding2-hero.png",
        title: "Healthy recipes",
        text: "Browse thousands of healthy recipes from all over the world.",
        currentStep: 2,
        nextStep: "/third-onboarding");
  }
}
