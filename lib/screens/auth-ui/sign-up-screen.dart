import 'dart:async';

import 'package:ecommerce/screens/auth-ui/sign-in-screen.dart';
import 'package:ecommerce/utils/app-constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:get/get.dart';
import 'package:get/utils.dart';
import 'package:lottie/lottie.dart';

import '../user-panel/main-screen.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignUpScreen> {

  @override
  Widget build(BuildContext context) {
    return KeyboardVisibilityBuilder(
      builder: (context, isKeyboardVisible)
      {
        return Scaffold(
            appBar: AppBar(
              backgroundColor: AppConstant.appSecondaryColor,
              title: Text("Sign In",
                style: TextStyle(color: AppConstant.appTextColor),),
              elevation: 1,
              centerTitle: true,
            ),
            body: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                        alignment: Alignment.center,
                        child: Text("Welcome to my app",
                        style: TextStyle(
                          color: AppConstant.appSecondaryColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 16
                        ),)),

                    SizedBox(height: Get.height/20,),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 5.0),
                      width: Get.width,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                          cursorColor: AppConstant.appSecondaryColor,
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            hintText: "Email",
                            prefixIcon: Icon(Icons.email),
                            contentPadding: EdgeInsets.only(top: 2.0,left: 8.0),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            )
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 5.0),
                      width: Get.width,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                          cursorColor: AppConstant.appSecondaryColor,
                          keyboardType: TextInputType.name,
                          decoration: InputDecoration(
                            hintText: "UserName",
                            prefixIcon: Icon(Icons.person),
                            contentPadding: EdgeInsets.only(top: 2.0,left: 8.0),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            )
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 5.0),
                      width: Get.width,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                          cursorColor: AppConstant.appSecondaryColor,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            hintText: "Phone",
                            prefixIcon: Icon(Icons.phone),
                            contentPadding: EdgeInsets.only(top: 2.0,left: 8.0),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            )
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 5.0),
                      width: Get.width,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                          cursorColor: AppConstant.appSecondaryColor,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                              hintText: "Phone",
                              prefixIcon: Icon(Icons.phone),
                              contentPadding: EdgeInsets.only(top: 2.0,left: 8.0),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              )
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 5.0),
                      width: Get.width,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                          cursorColor: AppConstant.appSecondaryColor,
                          keyboardType: TextInputType.streetAddress,
                          decoration: InputDecoration(
                              hintText: "City",
                              prefixIcon: Icon(Icons.location_on_outlined),
                              contentPadding: EdgeInsets.only(top: 2.0,left: 8.0),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              )
                          ),
                        ),
                      ),
                    ),

                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 5.0,vertical: 10.0),
                      width: Get.width,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                          cursorColor: AppConstant.appSecondaryColor,
                          keyboardType: TextInputType.visiblePassword,
                          decoration: InputDecoration(
                            hintText: "Password",
                            prefixIcon: Icon(Icons.password),
                            suffixIcon: Icon(Icons.visibility_off),
                            contentPadding: EdgeInsets.only(top: 2.0,left: 8.0),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            )
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: Get.height/20,),

                    Material(
                      child: Container(
                        width: Get.width/2,
                        height: Get.height/18,
                        decoration: BoxDecoration(
                            color: AppConstant.appSecondaryColor,
                            borderRadius: BorderRadius.circular(20.0)
                        ),
                        child: TextButton(
                          onPressed: (){},
                          child: Text(
                            "SIGN UP",
                          style: TextStyle(
                            color: AppConstant.appTextColor
                          ),),
                        ),
                      ),
                    ),
                    SizedBox(height: Get.height/20,),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Already have an account?",
                        style: TextStyle(
                          color: AppConstant.appSecondaryColor
                        ),),
                        GestureDetector(
                          onTap: ()=> Get.offAll(SignInScreen()),
                          child: Text("Sign In",
                            style: TextStyle(
                                color: AppConstant.appSecondaryColor,
                              fontWeight: FontWeight.bold
                            ),),
                        ),

                      ],
                    )


                  ],
                ),
              ),
            )
        );
      }

    );
  }
}
