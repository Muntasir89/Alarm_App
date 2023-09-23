import 'package:flutter/material.dart';

class ClockPage extends StatefulWidget {
  const ClockPage({super.key});

  @override
  State<ClockPage> createState() => _ClockPageState();
}

class _ClockPageState extends State<ClockPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 150,
      padding: EdgeInsets.all(10.0),
      color: Colors.amber,
    );
  }
}
