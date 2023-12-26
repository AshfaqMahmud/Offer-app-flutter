import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:testapp/views/splash_screen/splash_screen.dart';

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
      home: const SplashScreen(),
    );
    //hideToolbar();
  }
}


