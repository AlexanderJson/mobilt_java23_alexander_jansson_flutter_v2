import 'package:flutter/material.dart';

class BodyText extends StatelessWidget {
  final String text;
  final Color;
  final fontSize;
  const BodyText({super.key, required this.text, required this.Color, required this.fontSize});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: fontSize,
        color: Color,
        letterSpacing: 1.5,
      ),
      textAlign: TextAlign.center,
    );
  }
}

