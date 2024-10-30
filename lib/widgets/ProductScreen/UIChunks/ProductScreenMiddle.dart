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
    return Container(
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.only(top: 20, bottom: 20,left: 100),
              child:  const CursiveText(text: 'CHOCOLATE, SOFT FLAVOR, LIQOURICE', Color: Colors.black,),
          ),
          Container(
            alignment: Alignment.centerLeft,
            padding: const EdgeInsets.only(top: 20, bottom: 20,left: 100),
            child:   const HeaderText(text: 'New Zeeland, Marlborough', Color: Colors.black, fontSize: 20,),

          ),
          Container(
            alignment: Alignment.centerLeft,
            padding: const EdgeInsets.only(top: 20, bottom: 20,left: 100),
            child:  const CursiveText(text: '250ml - Round Bottle', Color: Colors.black,),
          ),
          Container(
            alignment: Alignment.centerLeft,
            padding: const EdgeInsets.only(top: 20, bottom: 20,left: 100,right: 400),
            child:   const CustomExpansionTile(title: 'Ingredients: ', content: 'Chocolate, honey, liqourice, bees'),
          ),
          Container(
            alignment: Alignment.centerLeft,
            padding: const EdgeInsets.only(top: 20, bottom: 20,left: 100, right: 400),
            child:   const CustomExpansionTile(title: 'Attributes: ',
                content: 'A new type of honey with wonderful combinations of'
                    'chocolate, honey, liqourice and berries. '),
          ),
        Container(
            alignment: Alignment.centerRight,
            padding: const EdgeInsets.only(top: 20, bottom: 20,left: 100, right: 400),
            child: const Column(
              children: [
                OrderBtn(height: 50.0 , width: 200.0,text: 'Order'),
              ],)
          ),
        ],
      )
    );
  }
}
