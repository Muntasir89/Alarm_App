import 'package:alarm_app/res/colors/app_color.dart';
import 'package:alarm_app/res/fonts/fonts.dart';
import 'package:flutter/material.dart';

class AlarmTabBar extends StatelessWidget {
  const AlarmTabBar({super.key});

  @override
  Widget build(BuildContext context) {
    return TabBar(
      isScrollable: true,
      labelColor: AppColor.blackColor,
      unselectedLabelColor: AppColor.blackColor,
      indicatorColor: AppColor.greyShadowColor,
      tabs: [
        tabItem('Alarm'),
        tabItem('Clock'),
        tabItem('Stopwatch'),
        tabItem('Timer')
      ],
    );
  }

  Widget tabItem(String tabName) {
    return Tab(
      icon: Text(
        tabName,
        style: TextStyle(
          fontFamily: AppFontFamily.Roboto_Medium,
          fontSize: 15,
          fontWeight: FontWeight.bold,
          color: AppColor.greyShadowColor,
          shadows: [
            Shadow(offset: Offset(3, 3), color: Colors.black38, blurRadius: 10),
            Shadow(
                offset: Offset(-3, -3),
                color: Colors.white.withOpacity(0.85),
                blurRadius: 10)
          ],
        ),
      ),
    );
  }
}
