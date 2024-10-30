import 'package:flutter/material.dart';
import 'package:untitled/utils/AppColor.dart';
import 'package:untitled/widgets/ProductScreen/ButtonComponents/OrderBtn.dart';
import 'package:untitled/widgets/ProductScreen/ImageComponents/GridViewBuilder.dart';
import 'package:untitled/widgets/ProductScreen/TextComponents/BodyText.dart';
import 'package:untitled/widgets/ProductScreen/TextComponents/HeaderText.dart';
import 'package:untitled/widgets/ProductScreen/UIChunks/ProductScreenBottom.dart';
import 'package:untitled/widgets/ProductScreen/UIChunks/ProductScreenMiddle.dart';
import 'package:untitled/widgets/ProductScreen/UIChunks/ProductScreenUpper.dart';
import 'package:untitled/widgets/ProductScreen/ImageComponents/ProductImage.dart';

// stateful då skärmen måste vara dynamisk
class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  final List<String> urls = [
    'assets/images/home1.png',
    'assets/images/home2.png',
    'assets/images/home3.png',
    'assets/images/home4.png',
  ];

  @override
  Widget build(BuildContext context) {
    //behållare för hela skärmen - returnerar allt inuti när screen instans kallas
    return Scaffold(

      // längst upp på sidan, lite som header, kan sätta meny,logo osv här
        appBar: AppBar(
          title: const Text('Honey Eating & Co'),
        ),

        // huvuddelen av sidan,
        body:
        //stack layout så man kan positonera element ovanpå bättre

        //spara mer minne att importera alla statiska element, då vi lättare kan sätta const  på dem
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: HeaderText(text: 'New Products', Color: Colors.black, fontSize: 50)
              ),

            Expanded(child: GridViewBuilder(
                itemCount: urls.length,
                spacing: 10.0,
                crossAxisCount: 4,
                url: urls,
                itemBuilder: (context, index){
                  return Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(

                          image: AssetImage(urls[index]),
                          fit: BoxFit.cover,
                        ),
                      borderRadius: BorderRadius.circular(8.0),

                    ),
                  );
              },

            )
            )
          ],
        )
    );
  }
}