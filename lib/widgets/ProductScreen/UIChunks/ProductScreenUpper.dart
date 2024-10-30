// ruta som visar enskild produkt
import 'package:untitled/utils/AppColor.dart';
import 'package:untitled/widgets/ProductScreen/Containers/ProductPreviewCard.dart';
import 'package:untitled/widgets/ProductScreen/TextComponents/ProductTitleText.dart';
import 'package:untitled/widgets/ProductScreen/TextComponents/HeaderText.dart';
import 'package:untitled/widgets/ProductScreen/TextComponents/BodyText.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProductScreenUpper extends StatelessWidget{
  const ProductScreenUpper({super.key});

  @override
  Widget build(BuildContext context) {
    final paddingHorizontal = MediaQuery.of(context).size.width * 0.2;

    // returnerar gul container
  return ProductPreviewCard(
        child: Padding(
        padding: EdgeInsets.symmetric(horizontal: paddingHorizontal),

    // column layout inuti
      child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [

         ProductTitleText(text: "WSSNFE", fontSize: paddingHorizontal * 0.4,) ,
         BodyText(text: 'lkdsjcdsocdsojdsjso', Color: Colors.white, fontSize:  paddingHorizontal * 0.1),
         HeaderText(text: "240 :- ", Color: Colors.white, fontSize: paddingHorizontal * 0.1,),
       // här kan vi lägga in data i child elementet

    ],
  )));
  }
}