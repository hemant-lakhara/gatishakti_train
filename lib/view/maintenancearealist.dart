import 'package:flutter/material.dart';
import 'package:gatishakti/view/photoes.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'dashbord.dart';
import 'listofrailwaystations.dart';

class ListScreen extends StatefulWidget {
  const ListScreen({Key? key}) : super(key: key);

  @override
  State<ListScreen> createState() => _ListScreenState();
}

class _ListScreenState extends State<ListScreen> {
  bool startAnimation = false;
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

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      setState(() {
        startAnimation = true;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    var size=MediaQuery.of(context).size;
    var height=size.height;
    var width=size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Center(child: Text("LIST OF MAINTENANCE AREA")),
      ),
      drawer: Drawer(

        child: Column(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.orange.shade200
              ),
                child:Row(
                  children: [
                    CircleAvatar(
                      radius: 40,
                      backgroundColor: Colors.white,
                      child: IconButton(
                        onPressed: (){},
                        icon: Icon(Icons.person,size: 30,color: Colors.orange,),
                      ),
                    ),
                    Padding(
                      padding:EdgeInsets.only(left:width*0.02),
                      child: Text("Maintenance Officer",style: TextStyle(fontSize: 15),),
                    ),
                  ],
                ),
            ),
         InkWell(
           onTap: (){
             Get.to(Dashbord());
           },
           child: Card(
             elevation: 4,
             child: ListTile(
               leading: Icon(Icons.dashboard,color: Colors.orange,),
               title: Text("Dashboard"),
             ),
           ),
         ),
            InkWell(
              onTap: (){},
              child: Card(
                elevation: 4,
                child: ListTile(
                  leading: Icon(Icons.list_alt,color: Colors.orange,),
                  title: Text("Privacy Policy"),
                ),
              ),
            ),
            InkWell(
              onTap: (){},
              child: Card(
                elevation: 4,
                child: ListTile(
                  leading: Icon(Icons.logout,color: Colors.orange,),
                  title: Text("Log Out"),
                ),
              ),
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          padding: EdgeInsets.symmetric(
            horizontal: width / 20,
          ),
          child: Column(
            children: [
              const SizedBox(height: 10,),

              ListView.builder(
                primary: false,
                shrinkWrap: true,
                itemCount: _area.length,
                itemBuilder: (context, index) {
                  return InkWell(
                      onTap: (){
                       Get.to(ListScreentwo());
                      },
                      child: item(index)
                  );
                },
              ),
              const SizedBox(height: 50,),
            ],
          ),
        ),
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

}
