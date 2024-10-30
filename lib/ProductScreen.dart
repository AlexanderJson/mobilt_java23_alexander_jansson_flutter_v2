import 'package:flutter/material.dart';


class ProductScreen extends StatefulWidget {
  @override
  _ProductScreen createState() => _ProductScreen();
}

class _ProductScreen extends State<ProductScreen> {

  @override
  Widget build(BuildContext context){
    return Scaffold(
        appBar: AppBar(
          title: Text('Product name header'),
        ),
          body: Center(
            child: Text('Body text')
          )
    );

  }

}

