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
      padding: const EdgeInsets.symmetric(horizontal: 45, vertical: 32),
      child: Column(
        children: [
          Image.asset(imagePath),
          const SizedBox(height: 12),
          Text(
            title,
            style: TextConstant.nunitoBold,
          ),
        ],
      ),
    );
  }
}
