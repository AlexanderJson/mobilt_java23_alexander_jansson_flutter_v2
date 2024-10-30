// ruta som visar enskild produkt
import 'package:flutter/material.dart';

class ProductTitleText extends StatelessWidget{

  final String text;
  final fontSize;
  const ProductTitleText({super.key, required this.text, required this.fontSize});
  @override
  Widget build(BuildContext context) {

    return Text(
      text,
      style:  TextStyle(
        fontSize: fontSize,
        fontWeight: FontWeight.bold,
        color: Colors.white,
        letterSpacing: 1.5,
      ),
      textAlign: TextAlign.center,
    );

    throw UnimplementedError();
  }
}

