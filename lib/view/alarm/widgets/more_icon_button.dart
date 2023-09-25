import 'package:alarm_app/res/colors/app_color.dart';
import 'package:flutter/material.dart';

class MoreIconButton extends StatelessWidget {
  const MoreIconButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // duration: Duration(milliseconds: 250),
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                AppColor.CardGradientTopLeft,
                AppColor.CardGradientBottomRight,
              ]),
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
                color: AppColor.greyShadowColor500,
                offset: Offset(2, 2),
                blurRadius: 2,
                spreadRadius: 0.1),
            BoxShadow(
                color: AppColor.whiteColor,
                offset: Offset(-2, -2),
                blurRadius: 2,
                spreadRadius: 0.1)
          ]),
      child: Center(
        child: SizedBox(
          height: 40,
          width: 40,
          child: Icon(
            Icons.more_vert,
            size: 25,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
