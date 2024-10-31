import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:untitled/utils/AppColor.dart';
import 'package:untitled/widgets/ProductScreen/BottomNavBar.dart';
import 'package:untitled/widgets/ProductScreen/ButtonComponents/OrderBtn.dart';
import 'package:untitled/widgets/ProductScreen/ScreenService.dart';
import 'package:untitled/widgets/ProductScreen/UIChunks/ProductScreenBottom.dart';
import 'package:untitled/widgets/ProductScreen/UIChunks/ProductScreenMiddle.dart';
import 'package:untitled/widgets/ProductScreen/UIChunks/ProductScreenUpper.dart';
import 'package:untitled/widgets/ProductScreen/ImageComponents/ProductImage.dart';
import 'package:auto_size_text/auto_size_text.dart';


// stateful då skärmen måste vara dynamisk
class ProductScreen extends StatefulWidget {
  @override
  _ProductScreen createState() => _ProductScreen();
}

class _ProductScreen extends State<ProductScreen> {

  @override
  Widget build(BuildContext context){
    //behållare för hela skärmen - returnerar allt inuti när screen instans kallas
    return  Scaffold(


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
                const Flexible(flex: 5, child:

                ProductScreenUpper(),
                ),
                SizedBox(height: 0.5.sh,
                    child:
                    const Flexible(
                      flex: 4,
                      child: ProductScreenMiddle(),
                    )
                ),

              ]
            // Bilden av produkt
          ),


          Positioned(

            top: 0.sh,
            bottom: 0.4.sh,
            left: ScreenService.ImageDimensions(),
            right: 0.sw,
              child: const ProductImage(url: 'assets/images/honeyandbees.png',
                fit: BoxFit.scaleDown,),
          )
        ],
      ),      bottomNavigationBar: BottomNavBar(
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


