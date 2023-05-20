import 'package:flutter/material.dart';
import 'package:kcal/screens/onboarding/onboarding_screen.dart';

class ThirdOnboardingScreen extends StatelessWidget {
  const ThirdOnboardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const OnboardingScreen(
        imagePath: "assets/images/onboarding3-hero.png",
        title: "Track Your Health",
        text: "With amazing inbuilt tools you can track your progress.",
        currentStep: 3,
        nextStep: "/home");
  }
}
