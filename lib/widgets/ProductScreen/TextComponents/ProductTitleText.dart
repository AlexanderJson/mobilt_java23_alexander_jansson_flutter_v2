// ruta som visar enskild produkt
import 'package:flutter/material.dart';

class ProductTitleText extends StatelessWidget{

  final String text;
  const ProductTitleText({super.key, required this.text});
  @override
  Widget build(BuildContext context) {

    return Text(
      text,
      style: const TextStyle(
        fontSize: 28,
        fontWeight: FontWeight.bold,
        color: Colors.white,
        letterSpacing: 1.5,
      ),
      textAlign: TextAlign.center,
    );

    throw UnimplementedError();
  }
}

