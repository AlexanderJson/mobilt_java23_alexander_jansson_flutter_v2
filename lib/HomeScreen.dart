import 'package:flutter/material.dart';
import 'package:untitled/utils/AppColor.dart';
import 'package:untitled/widgets/ProductScreen/ButtonComponents/OrderBtn.dart';


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
        children: [
          Text("Hello!",
          style: Theme.of(context).textTheme.headlineLarge,),

          const SizedBox(height: 20,),
          const OrderBtn(),

        ],
        ),


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



class ProductDetails extends StatelessWidget{
  const ProductDetails({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}