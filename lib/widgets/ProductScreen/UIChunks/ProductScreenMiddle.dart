import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/widgets/ProductScreen/Containers/ProductPreviewCard.dart';
import 'package:untitled/widgets/ProductScreen/ListComponents/CustomExpansionTile.dart';
import 'package:untitled/widgets/ProductScreen/TextComponents/ProductTitleText.dart';
import 'package:untitled/widgets/ProductScreen/TextComponents/HeaderText.dart';
import 'package:untitled/widgets/ProductScreen/TextComponents/BodyText.dart';
import 'package:untitled/widgets/ProductScreen/TextComponents/CursiveText.dart';

class ProductScreenMiddle extends StatelessWidget {
  const ProductScreenMiddle({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CursiveText(text: 'CHOCOLATE, SOFT FLAVOR, LIQOURICE', Color: Colors.black,),
          HeaderText(text: 'New Zeeland, Marlborough', Color: Colors.black,),
          CursiveText(text: '250ml - Round Bottle', Color: Colors.black,),
          CustomExpansionTile(title: 'Ingredients: ', content: 'Chocolate'),
          CustomExpansionTile(title: 'Attributes: ',
              content: 'A new type of honey with wonderful combinations of'
                  'chocolate, honey, liqourice and berries. '),
        ],
      )
    );
  }
}
