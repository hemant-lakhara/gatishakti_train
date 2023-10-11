import 'package:flutter/material.dart';
import 'package:gatishakti/view/photoes.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class ListScreentwo extends StatefulWidget {
  const ListScreentwo({Key? key}) : super(key: key);

  @override
  State<ListScreentwo> createState() => _ListScreentwoState();
}

class _ListScreentwoState extends State<ListScreentwo> {

  bool starttAnimation = false;
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
        starttAnimation = true;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    var size=MediaQuery.of(context).size;
    var width=size.width;
    var height=size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("LIST OF RAILWAY STATIONS"),
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
                itemCount: _jn.length,
                itemBuilder: (context, index) {
                  return InkWell(
                      onTap: (){
                      Get.to(Photoes());
                      },
                      child: item(index));
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
          Expanded(
            child: Padding(
              padding:EdgeInsets.only(left: Get.width*0.15),
              child: Column(
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
                    progressColor: Colors.black,
                    center:Text("80%",style: TextStyle(color: Colors.white,fontSize: 10,fontWeight: FontWeight.bold),),
                    backgroundColor: Colors.white,
                  ),
                ],
              ),
            ),
          ),
          // Container(
          //     width: Get.width*.2,
          //     height: Get.height*0.07,
          //     child: Image.asset("Assets/images/images-removebg-preview.png",height: 30,)),
        ],
      ),
    );
  }

}
