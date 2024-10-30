// ruta som visar enskild produkt
import 'package:flutter/material.dart';

class ProductTitleText extends StatelessWidget{

  final String text;
  const ProductTitleText({super.key, required this.text});
  @override
  Widget build(BuildContext context) {

    return Text(
      text,
      style:  TextStyle(
        fontSize: MediaQuery.of(context).size.height * 0.1,
        fontWeight: FontWeight.bold,
        color: Colors.white,
        letterSpacing: 1.5,
      ),
      textAlign: TextAlign.center,
    );

    throw UnimplementedError();
  }
}

