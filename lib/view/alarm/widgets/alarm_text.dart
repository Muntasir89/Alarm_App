import 'package:flutter/material.dart';

import '../../../res/colors/app_color.dart';
import '../../../res/fonts/fonts.dart';

class AlarmText extends StatelessWidget {
  const AlarmText({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "- 12:05 hours",
          style: TextStyle(
            fontFamily: AppFontFamily.Roboto_Medium,
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: AppColor.greyShadowColor600,
            shadows: [
              Shadow(
                  offset: Offset(2, 2), color: Colors.black38, blurRadius: 10),
              Shadow(
                  offset: Offset(-2, -2),
                  color: Colors.white.withOpacity(0.85),
                  blurRadius: 10)
            ],
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          "Achor Salat",
          style: TextStyle(
            fontFamily: AppFontFamily.Roboto_Medium,
            fontSize: 15,
            fontWeight: FontWeight.bold,
            color: AppColor.primaryTextColor,
            shadows: [
              Shadow(
                  offset: Offset(2, 2), color: Colors.black38, blurRadius: 10),
              Shadow(
                  offset: Offset(-2, -2),
                  color: Colors.white.withOpacity(0.85),
                  blurRadius: 10)
            ],
          ),
        ),
      ],
    );
  }
}
