// ruta som visar enskild produkt
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled/utils/AppColor.dart';
import 'package:untitled/widgets/ProductScreen/Containers/ProductPreviewCard.dart';
import 'package:untitled/widgets/ProductScreen/ScreenService.dart';
import 'package:untitled/widgets/ProductScreen/TextComponents/ProductTitleText.dart';
import 'package:untitled/widgets/ProductScreen/TextComponents/HeaderText.dart';
import 'package:untitled/widgets/ProductScreen/TextComponents/BodyText.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProductScreenUpper extends StatelessWidget{
  const ProductScreenUpper({super.key});

  @override
  Widget build(BuildContext context) {
    final paddingHorizontal = 0.15.sw;

    // returnerar gul container
  return ProductPreviewCard(
        child: Padding(
        padding: EdgeInsets.symmetric(horizontal: paddingHorizontal),

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
             Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ProductTitleText(text: "HONEKEY", fontSize: ScreenService.editTitle()),
                  BodyText(text: 'Autumn is here!', Color: Colors.white, fontSize:  10.sp),
                ],
              ),


              ],
            )));
            }
}