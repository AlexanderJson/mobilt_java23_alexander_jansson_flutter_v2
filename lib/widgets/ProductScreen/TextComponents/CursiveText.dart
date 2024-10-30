import 'package:flutter/material.dart';

class CursiveText extends StatelessWidget {
  final String text;
  final Color;
  const CursiveText({super.key, required this.text, required this.Color});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 10,
        fontStyle: FontStyle.italic,
        color: Color,
        letterSpacing: 1.5,
      ),
      textAlign: TextAlign.center,
    );
  }
}

