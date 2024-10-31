import 'package:flutter/material.dart';
import 'package:untitled/utils/AppColor.dart';
import 'package:untitled/widgets/ProductScreen/ButtonComponents/OrderBtn.dart';
import 'package:untitled/widgets/ProductScreen/UIChunks/ProductScreenBottom.dart';
import 'package:untitled/widgets/ProductScreen/UIChunks/ProductScreenMiddle.dart';
import 'package:untitled/widgets/ProductScreen/UIChunks/ProductScreenUpper.dart';
import 'package:untitled/widgets/ProductScreen/ImageComponents/ProductImage.dart';

// stateful då skärmen måste vara dynamisk
class ProductScreen extends StatefulWidget {
  @override
  _ProductScreen createState() => _ProductScreen();
}

class _ProductScreen extends State<ProductScreen> {

  @override
  Widget build(BuildContext context){
    //behållare för hela skärmen - returnerar allt inuti när screen instans kallas
    return Scaffold(


      // huvuddelen av sidan,
      body:
      //stack layout så man kan positonera element ovanpå bättre

      //spara mer minne att importera alla statiska element, då vi lättare kan sätta const  på dem
      Stack(
        clipBehavior: Clip.none,

        children: [

          Column(
            // stretchar ut bakgrunden på hela skärmen
              crossAxisAlignment: CrossAxisAlignment.stretch,

              children:[
                Flexible(flex: 6, child: ProductScreenUpper(),
                ),
                Flexible(flex: 5, child: ProductScreenMiddle(),
                ),
              ]
            // Bilden av produkt
          ), Positioned(
            top: MediaQuery.of(context).size.height * 0,
            left: MediaQuery.of(context).size.height * 0.3,
            right: 0,
            child:  Center(
              child: ProductImage(url: 'assets/images/honeyandbees.png',
                width: MediaQuery.of(context).size.width * 0.4,
                height: MediaQuery.of(context).size.height * 0.5,
                fit: BoxFit.scaleDown,),
            ),

          )
        ],
      ),

    );

  }

}
/*
*  Positioned(child: ProductImage(
              url:'assets/images/honey1.png',
              width: 200.0,
              height: 200.0,
              fit: BoxFit.cover,
            ))
* */
class YellowBackroundContainer extends StatelessWidget{
  const YellowBackroundContainer({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}



class ProductHeaderContent extends StatelessWidget{
  const ProductHeaderContent({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}

class ProductHeaderDetails extends StatelessWidget{
  const ProductHeaderDetails({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}



class ProductDetails extends StatelessWidget{
  const ProductDetails({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}