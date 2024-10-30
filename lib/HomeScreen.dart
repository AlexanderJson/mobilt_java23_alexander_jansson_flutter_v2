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
        title: const Text('Test'),
      ),

        // huvuddelen av sidan,
        body:

            //stack layout
        Stack(
        children: [

          // gul del
          Container(
            color: const Color(0xFFD5B942),
            height: 200,
            width: double.infinity,//bredd på hela sidan
            // innehåll inuti gul del


            child:  const Row(
              // allt inuti denna layout är till vänster
                children: [
                  Expanded(child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'WSSNFE',
                        style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold,color: Colors.white,),

                      ),
                      // avstånd mellan text 1 och 2
                      SizedBox(height: 5,),

                      Text(
                        'A beautifully balanced blend of finesse and vineyard passion',
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.normal,
                          color: Colors.white,
                        ),
                      ),

                      Text(
                        '240 SEK',
                        style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
          ),
],
            ),
          ),


          Positioned(
            top: 50,
            left: 1030,
            child: Container(
              height: MediaQuery.of(context).size.height - 180,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(30),
                      topLeft: Radius.circular(30)
                  )
              ),

            ),
          ),


          Align(
            //vit del
            alignment: Alignment.topRight,
            child: Container(
              // const här då det sätter en statisk plats i minnet (mindre räknande för cpu)
                child: SizedBox(
                  width: MediaQuery.of(context).size.width * 0.20,
                  height: 400,
                  child: Image.asset(
                    'assets/images/demoProduct.png',
                    fit: BoxFit.cover,
                  ),
                )
            ),
          ),
        ],
      ),



    );

  }

}

