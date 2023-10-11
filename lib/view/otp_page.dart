import 'dart:async';

import 'package:flutter/material.dart';
import 'package:gatishakti/view/Maintenance_2.dart';
import 'package:gatishakti/view/maintenancearealist.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:pinput/pinput.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({Key? key}) : super(key: key);

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  int start = 30;

  @override
  void initState(){
    starTime();
    super.initState();
  }
  Widget build(BuildContext context) {
    var size=MediaQuery.of(context).size;
    var width=size.width;
    var height=size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: height*0.50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.orange.shade200,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(80),
                    ),
                    border: Border.all(
                      width: 1,
                      style: BorderStyle.solid,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: height*0.10,left: width*0.30),
                  child: Image.asset("Assets/images/4b88fa6800b66593715fdae1a288e6c4-removebg-preview.png",height: height*0.20,),
                ),
                Padding(
                  padding: EdgeInsets.only(left: height*0.09,top: height*0.35),
                  child: Text("Enter Verification Code",style: TextStyle(color: Colors.black,fontSize: 22,fontWeight: FontWeight.bold),),
                ),
              ],
            ),
            SizedBox(height: height*0.08),
            Padding(
              padding: EdgeInsets.only(right: width*0.6),
              child: Text("Enter OTP",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),),
            ),
            SizedBox(height: height*0.02),
            SizedBox(
              width: width*0.85,
              height: height*0.06,
              child: Pinput(
                length: 6,
                showCursor: true,
                onChanged: (value){
                },
              ),
            ),
            Padding(
              padding:EdgeInsets.only(top: height*0.03),
              child: Container(
                width: width*0.9,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.orange.shade200,shape: StadiumBorder()),
                    onPressed: (){
                      Get.to(ListScreen());
                    },
                    child: Text("VERIFY",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.black),)
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: width*0.06,top: height*0.10),
              child: Text("The verify code will expire in 00:$start",style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 15,
              ),
              ),
            ),
            TextButton(
              onPressed: (){
              },
              child: Padding(
                padding: EdgeInsets.only(),
                child: Text("Resend Code",style: TextStyle(
                  color: Colors.orange.shade300,fontSize: 15,fontWeight: FontWeight.bold,
                ),
                ),
              ),
            ),
          ],
        ),
      ),

    );
  }

  void starTime() {
    const onsec = Duration(seconds: 1);
    Timer timer = Timer.periodic(onsec, (timer) {
      if (start == 0) {
        setState(() {
          timer.cancel();
        });
      }
      else {
        setState(() {
          start--;
        });
      }
    }
    );
  }
}

