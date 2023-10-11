import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gatishakti/view/maintenancearealist.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:lottie/lottie.dart';
import 'otp_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
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
                  child: Text("Enter your Mobile Number",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
                ),
              ],
            ),
            SizedBox(height: height*0.08),
            Padding(
              padding: EdgeInsets.only(right: width*0.5),
              child: Text("Mobile Number",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),),
            ),
            SizedBox(height: height*0.02),
            SizedBox(
              width: width*0.90,
              child: TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintText: "Enter Mobile Number",
                  hintStyle: TextStyle(fontSize: 15,color: Colors.black),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(width: 2)
                  ),
                ),
              ),
            ),
            Padding(
              padding:EdgeInsets.only(top: height*0.03),
              child: Container(
                width: width*0.9,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.orange.shade200,shape: StadiumBorder()),
                    onPressed: (){
                      Get.to(OtpScreen());
                    },
                    child: Text("LOGIN",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black),)
                ),
              ),
            ),
          ],
        ),
      ),

    );
  }
}
