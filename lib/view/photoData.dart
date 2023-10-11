import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'Field_Officer.dart';

class PhotoData extends StatefulWidget {
  const PhotoData({Key? key}) : super(key: key);

  @override
  State<PhotoData> createState() => _PhotoDataState();
}

class _PhotoDataState extends State<PhotoData> {


  List<Map<String, dynamic>> _pData=[
    {
      "year":"1 January",
      "image":"Assets/images/e4cec83d5ea3b028baa76a70a156093b.jpg"
    },
    {
      "year":"2 January",
      "image":"Assets/images/train-indian-railways.gif"
    },
    {
      "year":"5 January",
      "image":"Assets/images/e4cec83d5ea3b028baa76a70a156093b.jpg"
    },
    {
      "year":"7 January",
      "image":"Assets/images/train-indian-railways.gif"
    },
    {
      "year":"8 January",
      "image":"Assets/images/e4cec83d5ea3b028baa76a70a156093b.jpg"
    },
    {
      "year":"9 January",
      "image":"Assets/images/train-indian-railways.gif"
    },
    {
      "year":"10 January",
      "image":"Assets/images/e4cec83d5ea3b028baa76a70a156093b.jpg"
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
        actions: [
          IconButton(onPressed: (){
            Get.to(FieldOfficer());
          }, icon: Icon(Icons.arrow_right_alt_outlined))
        ],
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
                    Padding(
                      padding:EdgeInsets.only(right: width*0.6),
                      child: IconButton(
                          onPressed: (){
                            Get.dialog(
                              AlertDialog(
                                title: Row(
                                  children: [
                                    Text("Description"),
                                Padding(
                                  padding:EdgeInsets.only(left: width*0.07),
                                  child: RatingBar.builder(
                                    itemSize: 18,
                                    initialRating: 1,
                                    minRating: 1,
                                    direction: Axis.horizontal,
                                    allowHalfRating: true,
                                    itemCount: 5,
                                    itemPadding: EdgeInsets.symmetric(horizontal: 1.0),
                                    itemBuilder: (context, _) => Icon(
                                      Icons.star,
                                      color: Colors.amber,
                                    ),
                                    onRatingUpdate: (rating) {
                                      print(rating);
                                    },
                                  ),
                                ),
                                  ],
                                ),
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
