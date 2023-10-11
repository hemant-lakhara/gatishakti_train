
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gatishakti/view/photoData.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:lottie/lottie.dart';

import 'dashbord.dart';

class Photoes extends StatefulWidget {
  const Photoes({Key? key}) : super(key: key);

  @override
  State<Photoes> createState() => _PhotoesState();
}

class _PhotoesState extends State<Photoes> {
  List<Map<String, dynamic>> _post=[
    {
      "date":"1 Jan- 10 Jan"
    },
    {
      "date":"11 Jan- 20 Jan"
    },
    {
      "date":"21 Jan- 31 Jan"
    },
    {
      "date":"1 Feb- 10 Feb"
    },
    {
      "date":"11 Mar-20 Mar"
    },
    {
      "date":"21 Mar- 30 Mar"
    },
    {
      "date":"1 April- 10 April"
    },
    {
      "date":"11 April- 20 April"
    },
  ];

  @override
  Widget build(BuildContext context) {
    var size=MediaQuery.of(context).size;
    var width=size.width;
    var height=size.height;

    return Scaffold(
      // drawer: Drawer(
      //   child: Column(
      //     children: [
      //       DrawerHeader(
      //         decoration: BoxDecoration(
      //             color: Colors.orange.shade200
      //         ),
      //         child:Row(
      //           children: [
      //             CircleAvatar(
      //               radius: 40,
      //               backgroundColor: Colors.white,
      //               child: IconButton(
      //                 onPressed: (){},
      //                 icon: Icon(Icons.person,size: 30,color: Colors.orange,),
      //               ),
      //             ),
      //             Padding(
      //               padding:EdgeInsets.only(left:width*0.02),
      //               child: Text("Maintenance Officer",style: TextStyle(fontSize: 15),),
      //             ),
      //           ],
      //         ),
      //       ),
      //       InkWell(
      //         onTap: (){
      //           Get.to(Dashbord());
      //         },
      //         child: Card(
      //           elevation: 4,
      //           child: ListTile(
      //             leading: Icon(Icons.dashboard,color: Colors.orange,),
      //             title: Text("Dashboard"),
      //           ),
      //         ),
      //       ),
      //       InkWell(
      //         onTap: (){},
      //         child: Card(
      //           elevation: 4,
      //           child: ListTile(
      //             leading: Icon(Icons.list_alt,color: Colors.orange,),
      //             title: Text("Privacy Policy"),
      //           ),
      //         ),
      //       ),
      //       InkWell(
      //         onTap: (){},
      //         child: Card(
      //           elevation: 4,
      //           child: ListTile(
      //             leading: Icon(Icons.logout,color: Colors.orange,),
      //             title: Text("Log Out"),
      //           ),
      //         ),
      //       ),
      //     ],
      //   ),
      // ),
      appBar: AppBar(
        leading: IconButton(
          onPressed: (){
            Get.back();
          },
          icon: Icon(Icons.arrow_back),
        ),
        actions: [
           PopupMenuButton(
            icon: Icon(Icons.filter_alt_outlined),
            itemBuilder: (context)=>[
              PopupMenuItem(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextButton(
                      onPressed: (){},
                      child: Text("Today",style: TextStyle(color: Colors.black),),
                    ),
                    TextButton(onPressed: (){},
                      child: Text("Previous Day",style: TextStyle(color: Colors.black)),
                    ),
                    TextButton(onPressed: (){},
                      child: Text("Last Week",style: TextStyle(color: Colors.black)),
                    ),
                    TextButton(onPressed: (){},
                      child: Text("Last Month",style: TextStyle(color: Colors.black)),
                    ),
                    TextButton(onPressed: (){},
                      child: Text("Previous Year",style: TextStyle(color: Colors.black)),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
        automaticallyImplyLeading: false,
        backgroundColor: Colors.black,
        title: Text(" AUDIO/ VISUAL DATA",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),),
        centerTitle: true,
      ),
      body:
        ListView.builder(
          itemCount:_post.length ,
            itemBuilder:(context, index) {
              return Column(
                children: [
                  Center(
                      child: Padding(
                        padding:EdgeInsets.only(right: width*0.6,top: height*0.01),
                        child: Text("${_post[index]["date"].toString()}",style: TextStyle(fontWeight: FontWeight.bold),),
                      )),
                  Padding(
                    padding:EdgeInsets.only(top: height*0.01,right: width*0.65),
                    child: Text("Recent Data",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12,color: Colors.black),),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: width*0.2,
                          height: height*0.1,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(color: Colors.orange),
                          ),
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(12),
                              child: Image.asset("Assets/images/train-indian-railways.gif",fit: BoxFit.fill,)),
                        ),
                        SizedBox(width: 7,),
                        Container(
                          width: width*0.2,
                          height: height*0.1,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(color: Colors.orange),
                          ),
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(12),
                              child: Image.asset("Assets/images/e4cec83d5ea3b028baa76a70a156093b.jpg",fit: BoxFit.fill,)),
                        ),
                        SizedBox(width: 7,),
                        Container(
                          width: width*0.2,
                          height: height*0.1,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(color: Colors.orange),
                          ),
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(12),
                              child: Image.asset("Assets/images/train-indian-railways.gif",fit: BoxFit.fill,)),
                        ),
                        SizedBox(width: 7,),
                       InkWell(
                         onTap: (){
                           Get.to(PhotoData());
                         },
                         child: Container(
                           width: width*0.2,
                           height: height*0.074,
                           child: Column(
                             mainAxisAlignment: MainAxisAlignment.center,
                             children: [
                               CircleAvatar(
                                 backgroundColor: Colors.orange.shade200,
                                 child: Icon(Icons.more_horiz,color: Colors.black,),
                               ),
                               SizedBox(height: 2,),
                               Text("More",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12,color: Colors.black),),
                             ],
                           ),
                         ),
                       )
                      ],
                    ),
                  ),
                  Divider(
                    color: Colors.black,
                  ),
                ],
              );
            },
        ),
    );
  }
}
