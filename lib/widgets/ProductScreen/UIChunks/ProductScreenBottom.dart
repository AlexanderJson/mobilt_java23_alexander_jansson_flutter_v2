import 'package:flutter/cupertino.dart';

import '../ButtonComponents/OrderBtn.dart';

class ProductScreenBottom extends StatelessWidget {
  const ProductScreenBottom({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        child: const Column(
          children: [
            OrderBtn(),
          ]
        ),
    );
  }
}
