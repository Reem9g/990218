import 'package:flutter/material.dart';
import 'package:d_details_ui/Screens/pharmacy.dart';
import 'package:d_details_ui/Screens/laboratory.dart';
import 'package:d_details_ui/Screens/center.dart';
import 'package:d_details_ui/Screens/doctor.dart';




class Home extends StatefulWidget {
  @override
  Home_HomeState createState() => Home_HomeState();
}
class Home_HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
         resizeToAvoidBottomInset: false,
         backgroundColor: Color(0xff99dfb2),
        body: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Column(
                  children: <Widget>[
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
                    Container(
                      height: MediaQuery.of(context).size.height-120,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(topRight: Radius.circular(70) ),
                      ) ,
                      child: ListView(
                        children: <Widget>[
                          GestureDetector(
                            child: Container(
                              margin: EdgeInsets.only(top:60,right: 50),
                              padding: EdgeInsets.all(20),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(bottomRight: Radius.circular(70),topRight:  Radius.circular(70)),
                                    gradient: LinearGradient(
                                        colors: [
                                          Color(0xff99dfb2),
                                          Color(0xff99dfb2).withAlpha(150),
                                          Color(0xff9adfef),
                                        ]
                                    ),
                                  ),
                                  child: ListTile(title: Text('المراكز', style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold
                                  ),
                                    textAlign: TextAlign.right,
                                  ),
                                    leading: Image.asset('assets/Image/hospital.png'),
                                  )
                                  ,),

                             onTap: () {
                             Navigator.push(context, MaterialPageRoute(builder: (context) => centerCards()));
                    },
                          ),
                          GestureDetector(
                            child: Container(
                              margin: EdgeInsets.only(top:30,right: 50),
                              padding: EdgeInsets.all(20),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(bottomRight: Radius.circular(70),topRight:  Radius.circular(70)),
                                    gradient: LinearGradient(
                                        colors: [
                                          Color(0xff99dfb2),
                                          Color(0xff99dfb2).withAlpha(150),
                                          Color(0xff9adfef),

                                        ]
                                    ),
                                  ),
                                  child: ListTile(title: Text('الأطباء', style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold
                                  ),
                                    textAlign: TextAlign.right,
                                  ),
                                    leading: Image.asset('assets/Image/doctor.ico'),
                                  )
                                  ,),

                              onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => D_details()));
                    },
                          ),
                          GestureDetector(
                            child:Container(
                              margin: EdgeInsets.only(top:30,right: 50),
                              padding: EdgeInsets.all(20),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(bottomRight: Radius.circular(70),topRight:  Radius.circular(70)),
                                    gradient: LinearGradient(
                                        colors: [
                                          Color(0xff99dfb2),
                                          Color(0xff99dfb2).withAlpha(150),
                                          Color(0xff9adfef),

                                        ]
                                    ),
                                  ),
                                  child: ListTile(title: Text('الصيدليات', style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold
                                  ),
                                    textAlign: TextAlign.right,
                                  ),
                                    leading: Image.asset('assets/Image/pharmacy.ico'),
                                  )
                                  ,),
                             onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => pharmacy()));
                    },
                          ),
                          GestureDetector(
                            child:Container(
                              margin: EdgeInsets.only(top:30,right: 50),
                              padding: EdgeInsets.all(20),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(bottomRight: Radius.circular(70),topRight:  Radius.circular(70)),
                                    gradient: LinearGradient(
                                        colors: [
                                          Color(0xff99dfb2),
                                          Color(0xff99dfb2).withAlpha(150),
                                          Color(0xff9adfef),
                                        ]
                                    ),
                                  ),
                                  child: ListTile(title: Text('المخابر', style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold
                                  ),
                                    textAlign: TextAlign.right,
                                  ),
                                    leading: Image.asset('assets/Image/blood.ico'),
                                  )
                                  ,),
                              onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => laboratory()));
                    },
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
              ],
            ),
          ],
        ),
        );
  }
}
