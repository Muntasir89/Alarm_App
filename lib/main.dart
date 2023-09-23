import 'package:alarm_app/res/colors/app_color.dart';
import 'package:alarm_app/res/fonts/fonts.dart';
import 'package:alarm_app/view/home/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        brightness: Brightness.light,
        scaffoldBackgroundColor: AppColor.whiteColor,
        primaryColor: AppColor.blueColor,
      ),
      darkTheme: ThemeData(
          brightness: Brightness.dark,
          scaffoldBackgroundColor: AppColor.blackColor,
          primaryColor: AppColor.blueColor),
      home: HomePage(),
    );
  }
}
