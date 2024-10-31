import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:untitled/utils/AppColor.dart';
import 'package:untitled/widgets/ProductScreen/BottomNavBar.dart';
import 'package:untitled/widgets/ProductScreen/ButtonComponents/OrderBtn.dart';
import 'package:untitled/widgets/ProductScreen/ImageComponents/GridViewBuilder.dart';
import 'package:untitled/widgets/ProductScreen/TextComponents/BodyText.dart';
import 'package:untitled/widgets/ProductScreen/TextComponents/HeaderText.dart';
import 'package:untitled/widgets/ProductScreen/UIChunks/HomeContent.dart';
import 'package:untitled/widgets/ProductScreen/UIChunks/ProductScreenBottom.dart';
import 'package:untitled/widgets/ProductScreen/UIChunks/ProductScreenMiddle.dart';
import 'package:untitled/widgets/ProductScreen/UIChunks/ProductScreenUpper.dart';
import 'package:untitled/widgets/ProductScreen/ImageComponents/ProductImage.dart';

import 'ProductScreen.dart';

// stateful då skärmen måste vara dynamisk
class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}



class _HomeScreenState extends State<HomeScreen> {


  @override
  Widget build(BuildContext context) {
    //behållare för hela skärmen - returnerar allt inuti när screen instans kallas
    return Scaffold(
      // längst upp på sidan, lite som header, kan sätta meny,logo osv här
        appBar: AppBar(
          title: const Text('Honey Eating & Co'),
        ),
        body:  HomeContent(),
      bottomNavigationBar: BottomNavBar(
        selectedItem: 0,
        onItemTapped: (index) {
          if (index == 0) {
            context.go('/');
          } else if (index == 1) {
            context.go('/product');
          }
        }),

    );
  }
}