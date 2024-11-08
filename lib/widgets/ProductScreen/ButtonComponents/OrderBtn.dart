import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/utils/AppColor.dart';

class OrderBtn extends StatelessWidget{
  final double height;
  final double width;
  final String text;
  final VoidCallback onPressed;
  // konstruktor
  const OrderBtn({super.key, required this.height, required this.width, required this.text, required this.onPressed});


  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: height,
        width: width,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColor.darkBrown,
        ),
        child: Text(
          text,
          style: const TextStyle(color: Colors.white),
        ),
      )
    );
    throw UnimplementedError();
  }
}