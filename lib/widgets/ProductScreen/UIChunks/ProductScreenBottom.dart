import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../ButtonComponents/OrderBtn.dart';

class ProductScreenBottom extends StatelessWidget {
  const ProductScreenBottom({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.black,
        child:  Column(
          children: [
            OrderBtn(
              height: 0.05.sh,
              width: 0.25.sw,
              text: 'Order',
              onPressed:(){

              } ,
            ),
          ]
        ),
    );
  }
}
