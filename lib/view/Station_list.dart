import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gatishakti/view/photoes.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:lottie/lottie.dart';

class StationList extends StatefulWidget {
  const StationList({Key? key}) : super(key: key);

  @override
  State<StationList> createState() => _StationListState();
}

class _StationListState extends State<StationList> {
  List<Map<String, dynamic>> _jnList=[
    {
      "Jn":"Jodhpur Jn",
    },
    {
      "Jn":"Raika Bagh",
    },
    {
      "Jn":"Luni Jn",
    },
    {
      "Jn":"Bhagat ki kothi",
    },
    {
      "Jn":"Pipar Road Jn",
    },
    {
      "Jn":"Mandore",
    },
    {
      "Jn":"Basni",
    },
    {
      "Jn":"Osia",
    },
  ];
  @override
  Widget build(BuildContext context) {
    var size=MediaQuery.of(context).size;
    var width=size.width;
    var height=size.height;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        automaticallyImplyLeading: false,
        title: Text("Railway Stations List",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: _jnList.length,
          itemBuilder: (context, index){
            return Padding(
                  padding:EdgeInsets.all(13.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: width*0.5,
                        height: height*0.05,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(backgroundColor: Colors.blue.shade300,),
                          onPressed:(){
                          Get.to(Photoes());
                          } ,
                          child: Text("${_jnList[index]["Jn"].toString()}",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),
                        ),
                      ),
                      Padding(
                        padding:EdgeInsets.only(left: width*0.07),
                        child:  Container(
                            width: width*.25,
                            height: height*0.07,
                            child: Image.asset("Assets/images/9c4c297ebef9dd552807476574c04c0f-removebg-preview.png",height: 30,)),
                      ),
                    ],
                  ),
            );
        }
      ),
    );
  }
}
