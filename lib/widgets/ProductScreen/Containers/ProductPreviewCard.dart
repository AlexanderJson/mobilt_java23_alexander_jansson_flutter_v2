// ruta som visar enskild produkt
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/utils/AppColor.dart';

class ProductPreviewCard extends StatelessWidget{
  const ProductPreviewCard({super.key, required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(

      color: AppColor.yellow,
      padding: const EdgeInsets.all(16.0),
      child: child,
    );
    throw UnimplementedError();
  }
}