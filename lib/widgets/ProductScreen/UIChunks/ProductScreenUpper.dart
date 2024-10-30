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
    // returnerar gul container
  return ProductPreviewCard(
      // column layout inuti
      child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [

      Container(
        alignment: Alignment.centerLeft,
        margin: const EdgeInsets.only(left: 100),
        child:const ProductTitleText(text: "WSSNFE") ,
      ),

      Container(
        alignment: Alignment.centerLeft,
        margin: const EdgeInsets.only(left: 100),
        padding: const EdgeInsets.only(bottom: 50.0),
        child:   const BodyText(text: "With hints of chocolate and honey", Color: Colors.white,),
      ),

      Container(
        alignment: Alignment.centerLeft,
        margin: const EdgeInsets.only(left: 100),
        padding: const EdgeInsets.only(bottom: 0),
        child:    HeaderText(text: "240 SEK", Color: Colors.white, fontSize: MediaQuery.of(context).size.height * 0.06,
    ),
      ),
       // här kan vi lägga in data i child elementet

    ],
  ));
  }
}