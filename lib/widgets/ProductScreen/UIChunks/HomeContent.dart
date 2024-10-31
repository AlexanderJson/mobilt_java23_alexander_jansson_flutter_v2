import 'package:flutter/material.dart';
import 'package:untitled/widgets/ProductScreen/TextComponents/CursiveText.dart';

import '../ImageComponents/GridViewBuilder.dart';
import '../TextComponents/HeaderText.dart';

class HomeContent extends StatelessWidget {

  final List<String> urls = [
    'assets/images/honeyman3.png',
    'assets/images/couple-eating-honey.png',
    'assets/images/couple-eating-honey2.png',
    'assets/images/honeyman5.png',
  ];

  @override
  Widget build(BuildContext context){
    return Column(

      children: [
            Padding(
            padding: const EdgeInsets.all(20),
            child: HeaderText(text: 'Honey Eating & Company', Color: Theme.of(context).colorScheme.primary, fontSize: 50),
        ),
  
        CursiveText(text: 'We are totally real!', Color:Theme.of(context).colorScheme.primary),
        const SizedBox(height: 10,),
        
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

    );
}}
