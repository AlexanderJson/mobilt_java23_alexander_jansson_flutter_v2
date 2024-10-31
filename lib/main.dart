import 'package:flutter/material.dart';
import 'package:untitled/HomeScreen.dart';
import 'package:untitled/utils/AppColor.dart';
import 'package:untitled/widgets/ProductScreen/ButtonComponents/OrderBtn.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled/widgets/ProductScreen/UIChunks/HomeContent.dart';
import 'package:untitled/widgets/ProductScreen/UIChunks/ProductScreenBottom.dart';
import 'package:go_router/go_router.dart';

import 'ProductScreen.dart';

void main() {
  runApp(

      ScreenUtilInit(
        designSize:  Size(360, 740),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context,child){
          return MaterialApp.router(
            routerConfig: _router,
            title: 'Honey Shop',
            theme: ThemeData(
              primarySwatch: Colors.amber,
              useMaterial3: true,
              colorScheme: const ColorScheme(
                primary: Colors.amber,
                onPrimary: Colors.white,
                secondary: Colors.white,
                onSecondary: Colors.white,
                surface: Colors.white,
                onSurface: Colors.brown,
                error: Colors.red,
                onError: Colors.white,
                brightness: Brightness.light,
              ),
            ),
          );
        },
      ),
  );
}

final GoRouter _router = GoRouter(
  initialLocation: '/',
  routes: [

    GoRoute(

      path: '/',
      name: 'home',
      builder: (context, state) => HomeScreen(),
    ),
    GoRoute(

        path: '/product',
    name: 'product',
    builder: (context,state) => ProductScreen()
    ),
  ],
);


