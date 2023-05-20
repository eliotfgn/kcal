import 'package:flutter/material.dart';
import 'package:kcal/constants/color_constant.dart';

import '../../constants/text_constant.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: ColorConstant.primaryGreen,
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            const Spacer(),
            Image.asset("assets/images/kcal-logo.png"),
            const Spacer(),
            Text("ZUAMICA", style: TextConstant.nunitoBold),
            const SizedBox(height: 95),
          ],
        )
      ),
    );
  }
}
