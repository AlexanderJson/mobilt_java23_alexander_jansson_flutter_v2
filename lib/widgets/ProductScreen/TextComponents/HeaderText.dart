// denna klass är bra för content som behöver vikt, t.ex priser osv.


import 'package:flutter/material.dart';

class HeaderText extends StatelessWidget {
  final String text;
  final Color;
  const HeaderText({super.key, required this.text, required this.Color});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style:  TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color: Color,
        letterSpacing: 1.5,
      ),
      textAlign: TextAlign.center,
    );
  }
}

