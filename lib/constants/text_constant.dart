import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kcal/constants/color_constant.dart';

class TextConstant {
  static TextStyle nunitoBold = TextStyle(
    fontFamily: GoogleFonts.nunito().fontFamily,
    fontSize: 25,
    fontWeight: FontWeight.bold,
    color: ColorConstant.splashScreenGreyText,
    decoration: TextDecoration.none,
  );

  static TextStyle onboardingTitle = GoogleFonts.signika(
    fontSize: 25,
    fontWeight: FontWeight.w600,
  );

  static TextStyle onboardingText = GoogleFonts.signika(
    fontSize: 17,
    fontWeight: FontWeight.w400,
    color: Colors.black45,
    height: 1.4,
  );

  static TextStyle buttonText = GoogleFonts.signika(
    fontSize: 25,
    fontWeight: FontWeight.w600,
    color: Colors.white,
  );
}
