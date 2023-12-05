import 'dart:async';

import 'package:ecommerce/utils/app-constant.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/utils.dart';
import 'package:lottie/lottie.dart';

import '../user-panel/main-screen.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppConstant.appMainColor,
        title: Text("Welcome",
        style: TextStyle(color: AppConstant.appTextColor),),
        elevation: 0,
        centerTitle: true,
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              color: Colors.red[100],
              width:Get.width,
              height: 300,
              child: Icon(Icons.shopping_cart_outlined,size: 80,color: Colors.white,),
            ),
            Container(
              margin: EdgeInsets.only(top: 20.0),
                child: Text("Happy Shopping",style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.bold),)),
            SizedBox(height: Get.height/12,),
            Material(
              child: Container(
                width: Get.width/1.2,
                height: Get.height/12,
                decoration: BoxDecoration(
                  color: AppConstant.appSecondaryColor,
                  borderRadius: BorderRadius.circular(20.0)
                ),
                child: TextButton.icon(
                  onPressed: (){},
                  icon: Icon(Icons.g_mobiledata,color: Colors.green,size: 40,),
                  label: Text("Sign in with Google",style: TextStyle(color: AppConstant.appTextColor),),
                ),
              ),

            ),
            SizedBox(height: Get.height/40,),
            Material(
              child: Container(
                width: Get.width/1.2,
                height: Get.height/12,
                decoration: BoxDecoration(
                    color: AppConstant.appSecondaryColor,
                    borderRadius: BorderRadius.circular(20.0)
                ),
                child: TextButton.icon(
                  onPressed: (){},
                  icon: Icon(Icons.email,color: Colors.white,size: 40,),
                  label: Text("Sign in with Google",style: TextStyle(color: AppConstant.appTextColor),),
                ),
              ),

            )
          ],
        ),
      )
    );
  }
}
