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
  return const ProductPreviewCard(child: Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      ProductTitleText(text: "WSSNFE"), // här kan vi lägga in data i child elementet
      BodyText(text: "With hints of chocolate and honey", Color: Colors.white,),
      HeaderText(text: "240 SEK", Color: Colors.white,)

    ],
  ));
  }
}