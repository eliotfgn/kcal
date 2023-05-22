import 'package:flutter/material.dart';
import 'package:kcal/constants/text_constant.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard(
      {Key? key,
      required this.imagePath,
      required this.title,
      required this.color})
      : super(key: key);

  final String imagePath;
  final String title;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 135,
      height: 145,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(32),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(imagePath),
          const SizedBox(height: 12),
          Text(
            title,
            style: TextConstant.homeText.copyWith(color: Colors.black),
          ),
        ],
      ),
    );
  }
}
