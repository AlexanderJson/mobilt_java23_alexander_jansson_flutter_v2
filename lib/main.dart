import 'package:flutter/material.dart';
import 'package:untitled/HomeScreen.dart';
import 'package:untitled/utils/AppColor.dart';
import 'package:untitled/widgets/ProductScreen/ButtonComponents/OrderBtn.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled/widgets/ProductScreen/UIChunks/HomeContent.dart';
import 'package:untitled/widgets/ProductScreen/UIChunks/ProductScreenBottom.dart';

import 'ProductScreen.dart';

void main() {
  runApp(

      ScreenUtilInit(
        designSize:  Size(360, 740),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context,child){
          return MaterialApp(
            home: ProductScreen(),
          );
        },
      )

  );
  

  
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Honey Webshop',
      theme: ThemeData(


        colorScheme:  const ColorScheme(
          primary: AppColor.yellow,
          onPrimary: AppColor.white,
          secondary: AppColor.white,
          onSecondary: AppColor.white,
          surface: AppColor.white,
          onSurface: AppColor.darkBrown,
          error: Colors.red,
          onError: Colors.white,
          brightness: Brightness.light,
        ),
        useMaterial3:  true
      ),

      home:  HomeScreen(),
    );
  }
}

