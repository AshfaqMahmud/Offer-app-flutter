import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:testapp/consts/consts.dart';
import 'package:testapp/views/auth_screen/login.dart';
import 'package:testapp/widgets_common/app_logo_wid.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  changeScreen(){
    Future.delayed(const Duration(seconds: 3),() {
      Get.to(()=> const LoginScreen());
    });
  }

  @override
  void initState() {
    changeScreen();
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pinkAccent,
      body: Center(
        child: Column(
          children: [
            applogowidget(),
          ],
          // children: [
          //   applogowidget(),
          // ],
        ),
      ),
    );
  }
}
