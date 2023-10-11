import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:lottie/lottie.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class FieldOfficer extends StatefulWidget {
  const FieldOfficer({Key? key}) : super(key: key);

  @override
  State<FieldOfficer> createState() => _FieldOfficerState();
}

class _FieldOfficerState extends State<FieldOfficer> {

  List<Map<String, dynamic>> _pData=[
    {
      "year":"1 January",
      "image":"Assets/images/mcms.jpg"
    },
    {
      "year":"2 January",
      "image":"Assets/images/train-indian-railways.gif"
    },
    {
      "year":"5 January",
      "image":"Assets/images/mcms.jpg"
    },
    {
      "year":"7 January",
      "image":"Assets/images/train-indian-railways.gif"
    },
    {
      "year":"8 January",
      "image":"Assets/images/mcms.jpg"
    },
    {
      "year":"9 January",
      "image":"Assets/images/train-indian-railways.gif"
    },
    {
      "year":"10 January",
      "image":"Assets/images/mcms.jpg"
    },
  ];
  List<bool> isTappedList = List.generate(7, (index) => false);


  @override
  Widget build(BuildContext context) {
    var size=MediaQuery.of(context).size;
    var width=size.width;
    var height=size.height;

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: (){
            Get.back();
          },
          icon: Icon(Icons.arrow_back),
        ),
        automaticallyImplyLeading: false,
        centerTitle: true,
        backgroundColor: Colors.black,
        title: Text("AUDIO & VISUAL DATA",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
      ),
      body:ListView.builder(
          itemCount: 7,
          itemBuilder: (context, index){
            return Column(
              children: [
                Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding:EdgeInsets.only(right: width*0.6,top: height*0.02),
                      child: Text("${_pData[index]["year"].toString()}",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                    )
                ),
                Padding(
                  padding:EdgeInsets.only(top: height*0.01),
                  child: Container(
                    width: width*0.85,
                    height: height*0.2,
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Image.asset("${_pData[index]["image"]}",fit: BoxFit.fill,)
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      icon: Icon(Icons.thumb_up_alt_outlined,color: isTappedList[index] ? Colors.orange.shade300 : Colors.grey,),
                      onPressed: (){
                        setState(() {
                          isTappedList[index] = !isTappedList[index];
                        });
                      },
                    ),
                    IconButton(
                      onPressed: (){
                        Get.dialog(
                            AlertDialog(
                              title: Text("Description"),
                              content: TextField(
                                maxLines: 5,
                                decoration: InputDecoration(
                                  border:InputBorder.none,
                                  hintText:"Write your thought...",
                                ),

                              ),
                              actions: [
                                Align(
                                  alignment: Alignment.center,
                                  child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.orange.shade300,
                                      ),
                                      onPressed: (){
                                        Get.back();
                                      },
                                      child: Text("Submit")
                                  ),
                                ),
                              ],
                            )
                        );
                      },
                      icon: Icon(Icons.comment,color: Colors.orange.shade300,),
                    ),
                    Padding(
                      padding:EdgeInsets.only(right: width*0.2),
                      child: IconButton(onPressed: (){
                        Get.dialog(
                            adBox(),
                        );
                      },
                          icon: Icon(Icons.add_a_photo,color: Colors.orange.shade300,)
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        LinearPercentIndicator(
                          width: Get.width*0.25,
                          alignment:MainAxisAlignment.end,
                          animation: true,
                          animationDuration: 1000,
                          lineHeight: 15,
                          barRadius: Radius.circular(12),
                          percent: 0.8,
                          progressColor: Colors.orange.shade300,
                          center:Text("80%",style: TextStyle(color: Colors.white,fontSize: 10,fontWeight: FontWeight.bold),),
                          backgroundColor: Colors.black,
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            );
          }
      ),
    );
  }
}
adBox(){
  return AlertDialog(
    title: Text("Import from"),
    content: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: Get.width*0.2,
          height: Get.height*0.08,
          child: Column(
            children: [
            Icon(Icons.image_outlined,size: 40,color: Colors.orange.shade300,),
              Text("Gallary",style: TextStyle(color: Colors.orange.shade300),),
            ],
          ),
        ),

        Padding(
          padding:EdgeInsets.only(bottom:Get.height*0.025),
          child: Text("OR",style: TextStyle(fontSize: 12),),
        ),
        Container(
          width: Get.width*0.2,
          height: Get.height*0.08,
          child: Column(
            children: [
              Icon(Icons.camera_alt_outlined,size: 40,color: Colors.orange.shade300,),
              Text("Camera",style: TextStyle(color: Colors.orange.shade300),),
            ],
          ),
        )
      ],
    ),
  );
}