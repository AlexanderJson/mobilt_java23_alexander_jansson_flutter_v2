import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/utils/AppColor.dart';

class OrderBtn extends StatelessWidget{
  const OrderBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: (){},
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColor.darkBrown
        ),
      child: const Text('Order', style: TextStyle(color: AppColor.white),),
    );
    throw UnimplementedError();
  }
}