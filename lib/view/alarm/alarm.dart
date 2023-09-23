import 'dart:math';
import 'dart:ui';

import 'package:alarm_app/res/colors/app_color.dart';
import 'package:alarm_app/view/clock/clock_page.dart';
import 'package:flutter/material.dart';

import '../home/widgets/more_icon_button.dart';

class AlarmPage extends StatefulWidget {
  const AlarmPage({super.key});

  @override
  State<AlarmPage> createState() => _AlarmPageState();
}

class _AlarmPageState extends State<AlarmPage> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: AppColor.greyColor,
      body: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: (width - min(height, width) * 0.8) / 2),
            child: Container(
              height: min(height, width) * 0.8,
              width: min(height, width) * 0.8,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.shade500,
                        offset: Offset(4.0, 4.0),
                        blurRadius: 15.0,
                        spreadRadius: 1.0),
                    BoxShadow(
                        color: Colors.white,
                        offset: Offset(-4.0, -4.0),
                        blurRadius: 15.0,
                        spreadRadius: 1.0),
                  ]),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: MoreIconButton(),
                      ),
                    ],
                  ),
                  ClockPage()
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
