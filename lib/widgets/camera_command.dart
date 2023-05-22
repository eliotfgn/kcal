import 'package:flutter/material.dart';

import '../constants/color_constant.dart';

class CameraCommand extends StatelessWidget {
  const CameraCommand({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 175,
      padding: const EdgeInsets.symmetric(horizontal: 40),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(32),
          topRight: Radius.circular(32),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset("assets/images/last-pic.png"),
          const CircleAvatar(
            backgroundColor: Color(0XFFFFC0B8),
            radius: 36,
            child: CircleAvatar(
              backgroundColor: Color(0XFFFF8473),
              radius: 20,
            ),
          ),
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              color: ColorConstant.secondary,
              borderRadius: BorderRadius.circular(8),
            ),
            child: const Icon(
              Icons.cached_rounded,
              color: Color(0XFFFF8473),
              size: 28,
            ),
          ),
        ],
      ),
    );
  }
}
