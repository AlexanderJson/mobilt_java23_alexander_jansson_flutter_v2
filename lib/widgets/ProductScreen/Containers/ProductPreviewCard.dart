// ruta som visar enskild produkt
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled/utils/AppColor.dart';

class ProductPreviewCard extends StatelessWidget{
  const ProductPreviewCard({super.key, required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(

      color: AppColor.yellow,
      padding:  EdgeInsets.all(16.w),
      child: child,
    );
    throw UnimplementedError();
  }
}