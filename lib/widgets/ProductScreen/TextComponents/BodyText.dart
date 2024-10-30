import 'package:flutter/material.dart';

class BodyText extends StatelessWidget {
  final String text;
  final Color;
  const BodyText({super.key, required this.text, required this.Color});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 10,
        color: Color,
        letterSpacing: 1.5,
      ),
      textAlign: TextAlign.center,
    );
  }
}

