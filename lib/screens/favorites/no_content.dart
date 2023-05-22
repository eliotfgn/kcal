import 'package:flutter/material.dart';
import 'package:kcal/constants/text_constant.dart';

class NoContent extends StatelessWidget {
  const NoContent({
    Key? key,
    required this.contentType,
  }) : super(key: key);

  final String contentType;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset("assets/images/diet.png"),
        const SizedBox(height: 24),
        Text(
          "No $contentType Found",
          style: TextConstant.sectionTitle.copyWith(
            color: const Color(0XFF696969),
          ),
        ),
        const SizedBox(height: 8),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0),
          child: Text(
            "You don’t save any $contentType. Go ahead, search and save your favorite $contentType .",
            style: TextConstant.homeText.copyWith(
              color: const Color(0XFFA9A9A9),
            ),
            textAlign: TextAlign.center,
          ),
        )
      ],
    );
  }
}
