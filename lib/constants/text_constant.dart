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

  static TextStyle homeTitle = GoogleFonts.signika(
    fontSize: 25,
    fontWeight: FontWeight.w600,
    color: ColorConstant.primaryGreen,
  );

  static TextStyle homeText = GoogleFonts.signika(
    fontSize: 18,
    fontWeight: FontWeight.w400,
    color: Colors.black45,
    height: 1.4,
  );

  static TextStyle bannerTitle = GoogleFonts.signika(
    fontSize: 10,
    fontWeight: FontWeight.w600,
    color: ColorConstant.primaryGreen,
    letterSpacing: 1.5,
  );

  static TextStyle bannerText = GoogleFonts.signika(
    fontSize: 17,
    fontWeight: FontWeight.w600,
  );

  static TextStyle buttonText2 = GoogleFonts.signika(
    fontSize: 12,
    fontWeight: FontWeight.w600,
    color: Colors.white,
  );

  static TextStyle sectionTitle = GoogleFonts.signika(
    fontSize: 22,
    fontWeight: FontWeight.w600,
  );
}
