import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:testapp/views/main_views/homepage.dart';
import 'package:testapp/views/splash_screen/splash_screen.dart';
import 'package:testapp/views/splash_screen/splash_screen2.dart';

/// {@macro flutter.widgets.SelectionOverlay.hideToolbar}
void hideToolbar() => hideToolbar();
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {


    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Offer',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.transparent,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.transparent
        )

      ),
      home: SplashScreen2(),
    );
    //hideToolbar();
  }
}


