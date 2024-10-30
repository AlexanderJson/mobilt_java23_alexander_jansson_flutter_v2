import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../ButtonComponents/OrderBtn.dart';

class ProductScreenBottom extends StatelessWidget {
  const ProductScreenBottom({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.black,
        child: const Column(
          children: [
            OrderBtn(),
          ]
        ),
    );
  }
}
