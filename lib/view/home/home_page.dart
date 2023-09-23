import 'package:alarm_app/res/colors/app_color.dart';
import 'package:alarm_app/res/fonts/fonts.dart';
import 'package:alarm_app/view/alarm/alarm.dart';
import 'package:alarm_app/view/home/widgets/alarm_tabbar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
              backgroundColor: AppColor.greyColor,
              elevation: 0,
              centerTitle: true,
              title: const AlarmTabBar()),
          body: TabBarView(children: [
            AlarmPage(),
          ]),
        ));
  }
}
