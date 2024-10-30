import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/widgets/ProductScreen/Containers/ProductPreviewCard.dart';
import 'package:untitled/widgets/ProductScreen/ListComponents/CustomExpansionTile.dart';
import 'package:untitled/widgets/ProductScreen/TextComponents/ProductTitleText.dart';
import 'package:untitled/widgets/ProductScreen/TextComponents/HeaderText.dart';
import 'package:untitled/widgets/ProductScreen/TextComponents/BodyText.dart';
import 'package:untitled/widgets/ProductScreen/TextComponents/CursiveText.dart';

import '../ButtonComponents/OrderBtn.dart';

class ProductScreenMiddle extends StatelessWidget {
  const ProductScreenMiddle({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    final paddingHorizontal = screenWidth * 0.2;
    final paddingVertical = screenHeight * 0.05;

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: paddingHorizontal, vertical: paddingVertical),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Align(
              alignment: Alignment.centerLeft,
                child:  const CursiveText(text: 'CHOCOLATE, SOFT FLAVOR, LIQOURICE', Color: Colors.black,),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child:   const HeaderText(text: 'New Zeeland, Marlborough', Color: Colors.black, fontSize: 20,),

          ),
          Align(
            alignment: Alignment.centerLeft,
            child:  const CursiveText(text: '250ml - Round Bottle', Color: Colors.black,),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child:   const CustomExpansionTile(title: 'Ingredients: ', content: 'Chocolate, honey, liqourice, bees'),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child:   const CustomExpansionTile(title: 'Attributes: ',
                content: 'A new type of honey with wonderful combinations of'
                    'chocolate, honey, liqourice and berries. '),
          ),
        Align(
            alignment: Alignment.centerRight,
            child: Column(
              children: [
                OrderBtn(height: screenHeight * 0.07 , width: screenWidth * 0.12,text: 'Order'),
              ],)
          ),
        ],
      )
    );
  }
}
