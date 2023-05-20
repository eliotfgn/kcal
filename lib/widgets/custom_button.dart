import 'package:flutter/material.dart';
import 'package:kcal/constants/color_constant.dart';
import 'package:kcal/constants/text_constant.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({Key? key, required this.text}) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        elevation: 0,
        backgroundColor: ColorConstant.primaryGreen,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        padding: const EdgeInsets.symmetric(vertical: 20),
        fixedSize: const Size(290, 72),
        splashFactory: NoSplash.splashFactory,
      ),
      child: Text(
        text,
        style: TextConstant.buttonText,
      ),
    );
  }
}
