import 'package:flutter/material.dart';
import 'package:kcal/constants/text_constant.dart';
import 'package:kcal/screens/favorites/no_content.dart';
import 'package:kcal/widgets/custom_button.dart';

import '../../constants/color_constant.dart';

class FavoritesScreen extends StatefulWidget {
  const FavoritesScreen({Key? key}) : super(key: key);

  @override
  State<FavoritesScreen> createState() => _FavoritesScreenState();
}

class _FavoritesScreenState extends State<FavoritesScreen> {
  String section = "Food";

  void change

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Favorites", style: TextConstant.appBar),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: null,
      ),
      body: Column(
        children: [
          Container(
            height: 50,
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: ColorConstant.primary,
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(16),
                        bottomLeft: Radius.circular(16),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        "Food",
                        style: TextConstant.text.copyWith(color: Colors.white),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: ColorConstant.secondary,
                      borderRadius: const BorderRadius.only(
                        topRight: Radius.circular(16),
                        bottomRight: Radius.circular(16),
                      ),
                    ),
                    child: Center(
                        child: Text(
                          "Recipe",
                          style: TextConstant.text
                              .copyWith(color: ColorConstant.primary),
                        )),
                  ),
                ),
              ],
            ),
          ),
          const Spacer(),
          const NoContent(contentType: "Food"),
          const Spacer(),
          CustomButton(text: "Search Food", onPressed: () {}),
          const SizedBox(height: 50),
        ],
      ),
    );
  }
}
