import 'dart:async';

import 'package:flutter/material.dart';
import 'package:testapp/views/auth_screen/login.dart';

class SplashScreen2 extends StatefulWidget {
  @override
  _SplashScreenState2 createState() => _SplashScreenState2();
}

class _SplashScreenState2 extends State<SplashScreen2> {
  @override
  void initState() {
    super.initState();

    // Simulate a delay for demonstration purposes
    Timer(Duration(seconds: 2), () {
      // Navigate to the next screen after the splash screen
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const LoginScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Set your preferred background color
      body: Center(
        child: Container(
          width: 200.0,
          height: 200.0,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/logo2.png'), // Replace with your image asset
              fit: BoxFit.contain,
            ),
          ),
        ),
      ),
    );
  }
}

