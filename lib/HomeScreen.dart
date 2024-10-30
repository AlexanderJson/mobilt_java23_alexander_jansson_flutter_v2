import 'package:flutter/material.dart';

// stateful då skärmen måste vara dynamisk
class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context){
    //behållare för hela skärmen - returnerar allt inuti när screen instans kallas
    return Scaffold(

      // längst upp på sidan, lite som header, kan sätta meny,logo osv här
      appBar: AppBar(
        title: const Text('Honey Eating & Co'),
      ),

        // huvuddelen av sidan,
        body:

            //stack layout så man kan positonera element ovanpå bättre
        Stack(
        


        )

    );

  }

}

class YellowBackroundContainer extends StatelessWidget{
  const YellowBackroundContainer({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}

class ProductImage extends StatelessWidget{
  const ProductImage({super.key});

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


class AppColor {

  //product background colors:
  static const Color yellow = Color(0xFFD5B942);
  static const Color beige = Color(0xFFD0C6A8);
  static const Color lavender = Color(0xFFAEB8D0);
  static const Color lightBlue = Color(0xFFC6D2DB);
  static const Color darkBrown = Color(0xFF653737);
  static const Color softPink = Color(0xFFD0A8A8);
  static const Color mintGreen = Color(0xFFC7DBC6);

  // component colors:
  static const Color lightLavender = Color(0xFFBDA8D0);
  static const Color white = Color(0xFFFFFFFF);


}

class ProductDetails extends StatelessWidget{
  const ProductDetails({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}