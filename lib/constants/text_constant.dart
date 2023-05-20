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
}