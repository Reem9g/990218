import 'package:flutter/material.dart';
import 'package:d_details_ui/Screens/detailDoctor.dart';


class D_details extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return stateD_details();
  }
}

class stateD_details extends State<D_details> {
  List tags = [
    'قلبية',
    'صدرية',
    'أسنان',
    'عينية',
    'أطفال',
    'جلدية',
    'نسائية',
    'أذنية'
  ];
  List Images = [
    'assets/Image/hearing.ico',
    'assets/Image/torso.ico',
    'assets/Image/tooth.ico',
    'assets/Image/ophthalmology.ico',
    'assets/Image/children.ico',
    'assets/Image/skin.ico',
    'assets/Image/pregnant.ico',
    'assets/Image/hearing.ico '
  ];
  List Names = [
    'د.روان حاج يحيى',
    'د.آية مشلح',
    'د.ريم شيخ شهيد',
    'د.سماحة حاج يحيى',
    'د.زهرة مشلح',
    'د.حلا شيخ شهيد',
    'د.ريان حاج يحيى',
    'د.نور حاج يحيى'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     backgroundColor: Color(0xff99dfb2),
      body: Column(
        children: [
          Stack(
            children:[ Column(
              children: [
          Container(
          color: Colors.white,
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Image.asset('assets/Image/menu.png'),
                ],
              ),
              height: 120,
              decoration: BoxDecoration(
                color: Color(0xff99dfb2),
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(70) ),
              ) ,
            ),
          ),
                Container(  height: MediaQuery.of(context).size.height-120,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(topRight: Radius.circular(70) ),
                  ) ,
                  child: ListView(
                    padding: EdgeInsets.all(10),
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(top: 27 , left: 8,right: 8, bottom: 8),
                        child: Text(
                          'الاختصاصات',
                          textAlign: TextAlign.right,
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff99DFB2),
                          ),
                        ),
                      ),
                      Container(
                        height: 85,
                        child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: Images.length,
                            itemBuilder: (BuildContext context, int index) {
                              return Stack(
                                // alignment: AlignmentDirectional.topStart,
                                // fit: StackFit.loose,
                                //  overflow: Overflow.clip,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 5.0),
                                    child: Container(
                                      width: 70,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(15),
                                          border: Border.all(
                                            color: Color(0xff99DFB2),
                                          )),
                                      // margin: EdgeInsets.only(right: 13),
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            top: 50.0, bottom: 5, right: 10, left: 10),
                                        child: Text(
                                          tags[index],
                                          style: TextStyle(
                                            color: Color(0xff99DFB2),
                                            fontWeight: FontWeight.bold,
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      left: 18,
                                    ),
                                    child: Container(
                                        margin: EdgeInsets.only(right: 10),
                                        width: 60,
                                        height: 50,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                            BorderRadius.all(Radius.circular(15)),
                                            color: Color(0xff6CECB3)),
                                        // Color(0xff6CECB3)),
                                        child: Image.asset(
                                          Images[index],
                                          scale: 3,
                                        )),
                                  ),
                                ],
                              );
                            }),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'أبرز الأطباء',
                          textAlign: TextAlign.right,
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff99DFB2),
                          ),
                        ),
                      ),
                      Container(
                        height: 700,
                        child: ListView.builder(
                            scrollDirection: Axis.vertical,
                            itemCount: Images.length,
                            itemBuilder: (BuildContext context, int index) {
                              return Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius:
                                    BorderRadius.all(Radius.circular(15)),
                                    // color:Color(0xff6CECB3),
                                    gradient: LinearGradient(
                                      colors: [Color(0xff6CECB3),Color(0xffB9E9DB), Color(0xffA9E1FA)],
                                      begin: Alignment.bottomRight,
                                      end: Alignment.centerLeft,
                                    ),
                                  ),
                                  /* shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(25.0),
                                ),*/
                                  //  color: Color(0xff6CECB3).withAlpha(150),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      ListTile(
                                        title: new Text(
                                          Names[index],
                                          textAlign: TextAlign.right,
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Color(0xffffffff),
                                          ),
                                        ),
                                        subtitle: new Text(
                                          tags[index],
                                          textAlign: TextAlign.right,
                                          style: TextStyle(
                                            color: Color(0xffffffff),
                                          ),
                                        ),
                                        //  leading: ,
                                        onTap:() {
                                          Navigator.push(context, MaterialPageRoute(builder: (context) => TaskScreen()));
                                        } ,
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            }),
                      ),
                    ],
                  ),
                ),
              ],
            ),
              Positioned(
                top: 90.0,
                left: 0.0,
                right: 0.0,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 40.0),
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.white),
                    child: Row(
                      children: [
                        Expanded(
                          child: TextField(
                            textAlign: TextAlign.right,
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(borderSide: BorderSide(color:Color(0xff99dfb2)),borderRadius: BorderRadius.circular(50)),
                              focusedBorder: OutlineInputBorder(borderSide: BorderSide(color:Color(0xff99dfb2)),borderRadius: BorderRadius.circular(50)),
                              prefixIcon: Icon(Icons.search,color:Color(0xff99dfb2)),
                              border: InputBorder.none,
                              hintText: "بحث ",
                            ),
                          ),

                        ),
                      ],
                    ),
                  ),
                ),
              )
  ],  ),
        ],
      ),
    );
  }
}
