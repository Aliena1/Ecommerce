import 'dart:async';

import 'package:ecommerce/screens/auth-ui/sign-in-screen.dart';
import 'package:ecommerce/screens/auth-ui/welcome_screen.dart';
import 'package:ecommerce/utils/app-constant.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/utils.dart';
import 'package:lottie/lottie.dart';

import '../user-panel/main-screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState(){
    super.initState();
    Timer(Duration(seconds: 5),()
    {
      Get.offAll(() => SignInScreen());
    });
    }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Lottie.asset(
          height: Get.height,
      'assets/images/splash-icon.json'),
    );
  }
}
