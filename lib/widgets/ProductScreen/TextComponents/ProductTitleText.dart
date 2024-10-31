// ruta som visar enskild produkt
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductTitleText extends StatelessWidget{

  final String text;
  final fontSize;
  const ProductTitleText({super.key, required this.text, required this.fontSize});
  @override
  Widget build(BuildContext context) {

    return AutoSizeText(
      text,
      style:  TextStyle(
        fontSize: fontSize,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
      textAlign: TextAlign.center,
      maxLines: 1,
      minFontSize: 8.sp,
      stepGranularity: 1.sp,
      overflow: TextOverflow.ellipsis,
    );

    throw UnimplementedError();
  }
}

