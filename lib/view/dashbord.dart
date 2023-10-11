import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Dashbord extends StatefulWidget {
  const Dashbord({Key? key}) : super(key: key);

  @override
  State<Dashbord> createState() => _DashbordState();
}

class _DashbordState extends State<Dashbord> {
  @override
  Widget build(BuildContext context) {
    var size=MediaQuery.of(context).size;
    var width=size.width;
    var height=size.height;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("DASHBOARD",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),),
        centerTitle: true,
      ),
      body: Column(
        children: [
          // Padding(
          //   padding:EdgeInsets.only(top:height*0.02,left: width*0.03 ),
          //   child: Card(
          //     elevation: 4,
          //     color: Colors.orange.shade200,
          //       child: Container(
          //         width: width*0.9,
          //           height: height*0.04,
          //           child: Center(child: Text("PROGRESSION GRAPH STATUS",style: TextStyle(color: Colors.grey.shade700,fontSize: 20,fontWeight: FontWeight.bold),)))),
          // ),
          Container(
              width: width,
              height: height*0.4,
              child: Lottie.asset("Assets/images/98941-pie-chart.json",fit: BoxFit.fill)),
          Padding(
            padding:EdgeInsets.only(left: width*0.03 ),
            child: Card(
              color: Colors.orange.shade200,
                child: Container(
                  width: width*0.6,
                    height: height*0.03,
                    child: Center(child: Text("Railway Stations Status",style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold),)))),
          ),
          Container(
            width: width,
              height: height*0.35,
              child: Lottie.asset("Assets/images/ME2LE96p9W.json",fit: BoxFit.fill)),
          Padding(
            padding:EdgeInsets.only(left: width*0.03 ),
            child: Card(
                color: Colors.orange.shade200,
                child: Container(
                    width: width*0.6,
                    height: height*0.03,
                    child: Center(child: Text("Maintenance Areas Status",style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold),)))),
          ),
        ],
      ),
    );
  }
}
