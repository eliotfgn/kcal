import 'package:flutter/material.dart';
import 'package:kcal/constants/color_constant.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorConstant.primaryGreen,
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          const Spacer(),
          Image.asset("assets/images/kcal-logo.png"),
          const Spacer(),
          Text("ZUAMICA"),
          const SizedBox(height: 95),
        ],
      )
    );
  }
}
