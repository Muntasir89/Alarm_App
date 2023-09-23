import 'package:flutter/material.dart';

class MoreIconButton extends StatelessWidget {
  const MoreIconButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // duration: Duration(milliseconds: 250),
      decoration: BoxDecoration(
          color: Colors.grey[300],
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
                color: Colors.grey.shade600,
                offset: Offset(2, 2),
                blurRadius: 2,
                spreadRadius: 0.1),
            BoxShadow(
                color: Colors.white,
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
