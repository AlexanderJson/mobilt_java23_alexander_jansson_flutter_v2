import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled/widgets/ProductScreen/Containers/ProductPreviewCard.dart';
import 'package:untitled/widgets/ProductScreen/ListComponents/CustomExpansionTile.dart';
import 'package:untitled/widgets/ProductScreen/TextComponents/ProductTitleText.dart';
import 'package:untitled/widgets/ProductScreen/TextComponents/HeaderText.dart';
import 'package:untitled/widgets/ProductScreen/TextComponents/BodyText.dart';
import 'package:untitled/widgets/ProductScreen/TextComponents/CursiveText.dart';
import 'package:auto_size_text/auto_size_text.dart';

import '../ButtonComponents/OrderBtn.dart';

class ProductScreenMiddle extends StatelessWidget {
  const ProductScreenMiddle({super.key});

  @override
  Widget build(BuildContext context) {

    final paddingHorizontal = 0.18.sw;
    final paddingVertical =  0.08.sh;

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: paddingHorizontal, vertical: paddingVertical),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

           Container(
            child: const Align(

              alignment: Alignment.centerLeft,
              child: CursiveText(
                text: 'CHOCOLATE, SOFT FLAVOR, LIQUORICE',
                Color: Colors.black,
              ),
            ),
          ),

          const Align(
              alignment: Alignment.centerLeft,
              child: HeaderText(
                text: 'New Zealand, Marlborough',
                Color: Colors.black,
              ),
            ),

          const Align(
              alignment: Alignment.centerLeft,
              child: CursiveText(
                text: '250ml - Round Bottle',
                Color: Colors.black,
              ),
            ),

           const Align(
              alignment: Alignment.centerLeft,
              child: CustomExpansionTile(
                title: 'Ingredients:',
                content: 'Chocolate, honey, liquorice, bees',
              ),
            ),


          const Align(
            alignment: Alignment.centerLeft,
            child: CustomExpansionTile(
              title: 'Attributes:',
              content: 'Sweet, hint of beer',
            ),
          ),

           Align(
            alignment: Alignment.centerRight,
            child: OrderBtn(
              height: 0.05.sh,
              width: 0.25.sw,
              text: 'Order',
            ),

          ),
        ],
      ),
    );
  }
}