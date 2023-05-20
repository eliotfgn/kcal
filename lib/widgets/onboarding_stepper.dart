import 'package:flutter/material.dart';
import 'package:kcal/constants/color_constant.dart';

class OnboardingStepper extends StatefulWidget {
  const OnboardingStepper({Key? key, required this.currentStep})
      : super(key: key);

  final int currentStep;

  @override
  State<OnboardingStepper> createState() => _OnboardingStepperState();
}

class _OnboardingStepperState extends State<OnboardingStepper> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: List<int>.generate(3, (index) => index + 1)
          .map(
            (index) => Container(
              margin: const EdgeInsets.symmetric(horizontal: 2),
              height: widget.currentStep == index ? 10 : 8,
              width: widget.currentStep == index ? 20 : 12,
              decoration: BoxDecoration(
                color: widget.currentStep == index
                    ? ColorConstant.primaryGreen
                    : ColorConstant.disableStepper,
                borderRadius: BorderRadius.circular(16),
              ),
            ),
          )
          .toList(),
    );
  }
}
