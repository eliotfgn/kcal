import 'package:flutter/material.dart';
import 'package:kcal/constants/color_constant.dart';
import 'package:kcal/constants/text_constant.dart';
import 'package:kcal/widgets/custom_button.dart';

class ScanResult extends StatefulWidget {
  const ScanResult({Key? key}) : super(key: key);

  @override
  State<ScanResult> createState() => _ScanResultState();
}

class _ScanResultState extends State<ScanResult> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * 0.90,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(32),
            topRight: Radius.circular(32),
          ),
        ),
        child: Column(
          children: [
            const SizedBox(height: 24),
            Align(
              alignment: Alignment.centerLeft,
              child: IconButton(
                  icon: const Icon(
                    Icons.close_rounded,
                    size: 32,
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  }),
            ),
            const SizedBox(height: 12),
            Image.asset("assets/images/burger.png"),
            const SizedBox(height: 12),
            Container(
              height: 110,
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.symmetric(horizontal: 40),
              color: ColorConstant.secondary,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Protein",
                        style: TextConstant.text
                            .copyWith(color: ColorConstant.primary),
                      ),
                      Text(
                        "450g",
                        style: TextConstant.homeTitle,
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Calories",
                        style: TextConstant.text
                            .copyWith(color: ColorConstant.primary),
                      ),
                      Text(
                        "220g",
                        style: TextConstant.homeTitle,
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Fat",
                        style: TextConstant.text
                            .copyWith(color: ColorConstant.primary),
                      ),
                      Text(
                        "100g",
                        style: TextConstant.homeTitle,
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Carbs",
                        style: TextConstant.text
                            .copyWith(color: ColorConstant.primary),
                      ),
                      Text(
                        "49g",
                        style: TextConstant.homeTitle,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Details",
                  style: TextConstant.sectionTitle,
                ),
              ),
            ),
            const SizedBox(height: 12),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40.0),
              child: RichText(
                text: TextSpan(
                  text:
                      "A hamburger (also burger for short) is a sandwich consisting of one or more cooked patties of ground meat, usually beef, placed inside a sliced bread",
                  style: TextConstant.text.copyWith(color: ColorConstant.text),
                  children: [
                    TextSpan(
                      text: "  Read More...",
                      style: TextConstant.text
                          .copyWith(color: ColorConstant.primary),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 24),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Ingredients",
                  style: TextConstant.sectionTitle,
                ),
              ),
            ),
            const SizedBox(height: 12),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 64,
                    width: 64,
                    decoration: BoxDecoration(
                      color: ColorConstant.secondary,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Center(
                      child: Image.asset("assets/images/bread.png"),
                    ),
                  ),
                  Container(
                    height: 64,
                    width: 64,
                    decoration: BoxDecoration(
                      color: ColorConstant.secondary,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Center(
                      child: Image.asset("assets/images/tomato.png"),
                    ),
                  ),
                  Container(
                    height: 64,
                    width: 64,
                    decoration: BoxDecoration(
                      color: ColorConstant.secondary,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Center(
                      child: Image.asset("assets/images/salad.png"),
                    ),
                  ),
                  Container(
                    height: 64,
                    width: 64,
                    padding: EdgeInsets.symmetric(horizontal: 8),
                    decoration: BoxDecoration(
                      color: ColorConstant.secondary,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Center(
                      child: Text(
                        "View All",
                        style: TextConstant.bannerText
                            .copyWith(color: ColorConstant.primary),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Spacer(),
            CustomButton(text: "Add to favorites", onPressed: () {}),
            const SizedBox(height: 24),
          ],
        ),
      ),
    );
  }
}
