import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:lottie/lottie.dart';

import 'login_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3),(){
      Get.off(LoginPage());

    });
  }
  @override
  Widget build(BuildContext context) {
    var size=MediaQuery.of(context).size;
    var width=size.width;
    var height=size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child:
          Padding(
            padding:EdgeInsets.only(top: height*0.35),
            child: Image.asset("Assets/images/6b6002e85a67559b0af16cfca7494b6a-removebg-preview.png",height: 100,),
          )),
          Padding(
            padding:EdgeInsets.only(top: height*0.03),
            child: Container(
              width: width*0.4,

                child: Lottie.asset("Assets/images/23692-progress-bar-in-dodger-blue.json")
            ),
          ),
          Padding(
            padding:EdgeInsets.only(top: height*0.35),
            child: Text("INDIAN RAILWAY",style: TextStyle(fontSize: 25,fontFamily: "Righteous-Regular",fontWeight:FontWeight.bold,color: Colors.grey.shade600),),
          )
        ],
      ),
    );
  }
}
