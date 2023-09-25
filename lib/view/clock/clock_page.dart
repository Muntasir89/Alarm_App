import 'dart:async';
import 'dart:math';

import 'package:alarm_app/res/colors/app_color.dart';
import 'package:flutter/material.dart';

class ClockPage extends StatefulWidget {
  const ClockPage({super.key});
  @override
  State<ClockPage> createState() => _ClockPageState();
}

class _ClockPageState extends State<ClockPage> {
  @override
  void initState() {
    super.initState();
    Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    final radius = min(height, width) * 0.40;
    return Container(
      height: radius,
      width: radius,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      AppColor.CardGradientTopLeft,
                      AppColor.CardGradientBottomRight,
                    ]),
                boxShadow: [
                  BoxShadow(
                      color: AppColor.greyShadowColor600,
                      offset: Offset(4, 4),
                      blurRadius: 2,
                      spreadRadius: 0.1),
                  BoxShadow(
                      color: Colors.white,
                      offset: Offset(-4, -4),
                      blurRadius: 2,
                      spreadRadius: 0.1)
                ]),
          ),
          Container(
            width: radius - 70,
            height: radius - 70,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      AppColor.CardGradientTopLeft,
                      AppColor.CardGradientBottomRight,
                    ]),
                boxShadow: [
                  BoxShadow(
                      color: AppColor.greyShadowColor600,
                      offset: Offset(4, 4),
                      blurRadius: 2,
                      spreadRadius: 0.1),
                  BoxShadow(
                      color: Colors.white,
                      offset: Offset(-4, -4),
                      blurRadius: 2,
                      spreadRadius: 0.1)
                ]),
          ),
          Transform.rotate(
            angle: pi / 2,
            child: Container(
              constraints: BoxConstraints.expand(),
              child: CustomPaint(
                painter: ClockPainter(),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class ClockPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    double centerX = size.width / 2;
    double centerY = size.height / 2;
    double radius = min(centerX, centerY);
    Offset center = Offset(centerX, centerY);
    double outerRadius = radius - 10;
    double innerRadius = radius - 20;

    Paint secDashPaint = Paint()
      ..color = Colors.black
      ..strokeWidth = 1
      ..strokeCap = StrokeCap.round;

    for (int i = 0; i < 360; i += 6) {
      double x1 =
          centerX - outerRadius * (i % 30 == 0 ? 1 : 0.95) * cos(i * pi / 180);
      double y1 =
          centerY - outerRadius * (i % 30 == 0 ? 1 : 0.95) * sin(i * pi / 180);

      double x2 = centerX - innerRadius * cos(i * pi / 180);
      double y2 = centerY - innerRadius * sin(i * pi / 180);

      canvas.drawLine(Offset(x1, y1), Offset(x2, y2), secDashPaint);
    }

    DateTime dateTime = DateTime.now();

    Paint secLinePaint = Paint()
      ..color = Colors.red
      ..strokeWidth = 3
      ..strokeCap = StrokeCap.round;

    Offset secStartOffset = Offset(
      centerX + 10 * cos(dateTime.second * 6 * pi / 180),
      centerY + 10 * sin(dateTime.second * 6 * pi / 180),
    );

    Offset secEndOffset = Offset(
      centerX - outerRadius * cos(dateTime.second * 6 * pi / 180),
      centerY - outerRadius * sin(dateTime.second * 6 * pi / 180),
    );

    Paint minLinePaint = Paint()
      ..color = Colors.blue
      ..strokeWidth = 4
      ..strokeCap = StrokeCap.round;

    Offset minStartOffset = Offset(
      centerX +
          10 * cos((dateTime.minute + dateTime.second / 60) * 6 * pi / 180),
      centerY +
          10 * sin((dateTime.minute + dateTime.second / 60) * 6 * pi / 180),
    );

    Offset minEndOffset = Offset(
      centerX -
          outerRadius *
              0.7 *
              cos((dateTime.minute + dateTime.second / 60) * 6 * pi / 180),
      centerY -
          outerRadius *
              0.7 *
              sin((dateTime.minute + dateTime.second / 60) * 6 * pi / 180),
    );

    Paint hourLinePaint = Paint()
      ..color = Colors.grey
      ..strokeWidth = 5
      ..strokeCap = StrokeCap.round;

    Offset hourStartOffset = Offset(
      centerX +
          10 * cos((dateTime.hour + dateTime.minute / 60) * 30 * pi / 180),
      centerY +
          10 * sin((dateTime.hour + dateTime.minute / 60) * 30 * pi / 180),
    );

    Offset hourEndOffset = Offset(
      centerX -
          outerRadius *
              0.5 *
              cos((dateTime.hour + dateTime.minute / 60) * 30 * pi / 180),
      centerY -
          outerRadius *
              0.5 *
              sin((dateTime.hour + dateTime.minute / 60) * 30 * pi / 180),
    );

    Paint centerCirclePaint = Paint()..color = Color(0xFFE81466);

    canvas.drawLine(hourStartOffset, hourEndOffset, hourLinePaint);
    canvas.drawLine(minStartOffset, minEndOffset, minLinePaint);
    canvas.drawLine(secStartOffset, secEndOffset, secLinePaint);
    canvas.drawCircle(center, 5, centerCirclePaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
