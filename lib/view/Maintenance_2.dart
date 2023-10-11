import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gatishakti/view/photoes.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class Maintenance extends StatefulWidget {
  const Maintenance({Key? key}) : super(key: key);

  @override
  State<Maintenance> createState() => _MaintenanceState();
}

class _MaintenanceState extends State<Maintenance>with TickerProviderStateMixin{
  bool startAnimation = false;
  bool starttAnimation = false;
  List<Map<String,dynamic>> _area=[
    {
      "name":"Lighting",
      "icon":Icons.light,
    },
    {
      "name":"Lift Acceleration",
      "icon":Icons.line_weight_outlined,
    },
    {
      "name":"Platforms",
      "icon":Icons.ev_station_sharp,
    },
    {
      "name":"Signages",
      "icon":Icons.notification_add,
    },
    {
      "name":"Ramp",
      "icon":Icons.train,
    },
    {
      "name":"Water Supply",
      "icon":Icons.water,
    },
    {
      "name":"Foot-Over-Bridge",
      "icon":Icons.accessibility_new_rounded,
    },
    {
      "name":"Station Name Boards",
      "icon":Icons.traffic,
    },
    {
      "name":"Pictogram",
      "icon":Icons.account_tree_outlined,
    },
    {
      "name":"Digital Watch",
      "icon":Icons.watch_later_outlined,
    },
    {
      "name":"Mice-Alarm",
      "icon":Icons.alarm_add_outlined,
    },

  ];
  List<Map<String,dynamic>> _jn=[
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
      "Jn": "Pipar Road Jn",
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
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      setState(() {
        startAnimation = true;
        starttAnimation = true;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    var size=MediaQuery.of(context).size;
    var width=size.width;
    var height=size.height;
    TabController tabController=TabController(length: 2, vsync: this);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: TabBar(
          indicatorColor: Colors.transparent,
          controller:tabController ,
          tabs: [
            Tab(
              child: Text("Maintenance Area",style: TextStyle(fontSize: 16,color: Colors.white),),
            ),
            Tab(
              child: Text("Railway Stations",style: TextStyle(fontSize: 16,color: Colors.white),),
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: tabController,
        children: [
          ListView.builder(
            primary: false,
            shrinkWrap: true,
            itemCount: _area.length,
            itemBuilder: (context, index) {
              return Padding(
                padding:EdgeInsets.only(top: height*0.02,left: width*0.03,right: width*0.03),
                child: InkWell(
                    onTap: (){
                      Get.to(Photoes());
                    },
                    child: item(index)
                ),
              );
            },
          ),
          ListView.builder(
            primary: false,
            shrinkWrap: true,
            itemCount: _jn.length,
            itemBuilder: (context, index) {
              return Padding(
                padding:EdgeInsets.only(top: height*0.02,left: width*0.03,right: width*0.03),
                child: InkWell(
                    onTap: (){
                      Get.to(Photoes());
                    },
                    child: item2(index)),
              );
            },
          ),
        ],
      ),
    );
  }
  Widget item(int index) {
    return AnimatedContainer(
      height: 55,
      width: Get.width,
      curve: Curves.easeInOut,
      duration: Duration(milliseconds: 300 + (index * 200)),
      transform: Matrix4.translationValues(startAnimation ? 0 : Get.width, 0, 0),
      margin: const EdgeInsets.only(
        bottom: 12,
      ),
      padding: EdgeInsets.symmetric(
        horizontal: Get.height / 20,
      ),
      decoration: BoxDecoration(
        color: Colors.orange.shade200,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("${index + 1}. ${_area[index]["name"].toString()}",style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold,),
          ),
          Icon(_area[index]["icon"]),
        ],
      ),
    );
  }
  Widget item2(int index) {
    return AnimatedContainer(
      height: 55,
      width: Get.width,
      curve: Curves.easeInOut,
      duration: Duration(milliseconds: 300 + (index * 200)),
      transform: Matrix4.translationValues(starttAnimation ? 0 : Get.width, 0, 0),
      margin: const EdgeInsets.only(
        bottom: 12,
      ),
      padding: EdgeInsets.symmetric(
        horizontal: Get.width / 20,
      ),
      decoration: BoxDecoration(
        color: Colors.orange.shade200,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("${index + 1} ${_jn[index]["Jn"].toString()}", style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold,),
          ),
          Container(
              width: Get.width*.15,
              height: Get.height*0.07,
              child: Image.asset("Assets/images/1dabd736cd8f1822f69b296152e43880-removebg-preview.png")),
        ],
      ),
    );
  }
}
