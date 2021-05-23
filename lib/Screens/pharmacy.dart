import 'package:flutter/material.dart';

class pharmacy extends StatefulWidget {
  @override
  pharmacy_pharmacyState createState() => pharmacy_pharmacyState();
}

class pharmacy_pharmacyState extends State<pharmacy> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xff99dfb2),
      body: Stack(
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
                              Stack(
                                children: <Widget>[
                                  Container(
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: <Widget>[
                                        Image.asset('assets/Image/pharmacy.ico') ,
                                      ],
                                    ),
                                    margin: EdgeInsets.only(top:60,right: 30,left: 30),
                                    padding: EdgeInsets.all(5),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      gradient: LinearGradient(
                                          colors: [
                                            Color(0xff99dfb2),
                                            Color(0xff99dfb2),
                                          ]
                                      ),
                                    ),
                                  ),
                                  Container(
                                    child: Row(
                                      children: <Widget>[
                                        Column(
                                          children: <Widget>[
                                            Row(
                                              children: <Widget>[
                                                Text('  From:', style: TextStyle(fontWeight: FontWeight.bold)),
                                                Text('  8:00 AM '),
                                              ],
                                            ),
                                            Row(
                                              children: <Widget>[
                                                Text('  To:', style: TextStyle(fontWeight: FontWeight.bold)),
                                                Text('     11:00 PM '),
                                              ],
                                            ),
                                          ],
                                        ),
                                        Expanded(
                                          child: ListTile(
                                            title: Text('صيدلية الجميلية',textAlign: TextAlign.right,
                                              style: TextStyle(fontWeight: FontWeight.bold),),
                                            subtitle: Text('2273908',textAlign: TextAlign.right,),
                                          ),
                                        ),
                                      ],
                                    ),
                                    margin: EdgeInsets.only(top:60,right: 90,left: 30),
                                    padding: EdgeInsets.all(1),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(3),
                                      gradient: LinearGradient(
                                          colors: [
                                            Color(0xffDEFAE9),
                                            Color(0xffDEFAE9)
                                          ]
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            Stack(
                              children: <Widget>[
                                Container(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: <Widget>[
                                      Image.asset('assets/Image/pharmacy.ico') ,
                                    ],
                                  ),
                                  margin: EdgeInsets.only(top:30,right: 30,left: 30),
                                  padding: EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    gradient: LinearGradient(
                                        colors: [
                                          Color(0xff99dfb2),
                                          Color(0xff99dfb2),
                                        ]
                                    ),
                                  ),
                                ),
                                Container(
                                  child: Row(
                                    children: <Widget>[
                                      Column(
                                        children: <Widget>[
                                          Row(
                                            children: <Widget>[
                                              Text('  From:', style: TextStyle(fontWeight: FontWeight.bold)),
                                              Text('  8:00 AM '),
                                            ],
                                          ),
                                          Row(
                                            children: <Widget>[
                                              Text('  To:', style: TextStyle(fontWeight: FontWeight.bold)),
                                              Text('     11:00 PM '),
                                            ],
                                          ),
                                        ],
                                      ),
                                      Expanded(
                                        child: ListTile(
                                          title: Text('صيدلية حلب الجديدة',textAlign: TextAlign.right,
                                            style: TextStyle(fontWeight: FontWeight.bold),),
                                          subtitle: Text('222847',textAlign: TextAlign.right,),
                                        ),
                                      ),
                                    ],
                                  ),
                                  margin: EdgeInsets.only(top:30,right: 90,left: 30),
                                  padding: EdgeInsets.all(1),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(3),
                                    gradient: LinearGradient(
                                        colors: [
                                          Color(0xffDEFAE9),
                                          Color(0xffDEFAE9)
                                        ]
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Stack(
                              children: <Widget>[
                                Container(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: <Widget>[
                                      Image.asset('assets/Image/pharmacy.ico') ,
                                    ],
                                  ),
                                  margin: EdgeInsets.only(top:30,right: 30,left: 30),
                                  padding: EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    gradient: LinearGradient(
                                        colors: [
                                          Color(0xff99dfb2),
                                          Color(0xff99dfb2),
                                        ]
                                    ),
                                  ),
                                ),
                                Container(
                                  child: Row(
                                    children: <Widget>[
                                      Column(
                                        children: <Widget>[
                                          Row(
                                            children: <Widget>[
                                              Text('  From:', style: TextStyle(fontWeight: FontWeight.bold)),
                                              Text('  8:00 AM '),
                                            ],
                                          ),
                                          Row(
                                            children: <Widget>[
                                              Text('  To:', style: TextStyle(fontWeight: FontWeight.bold)),
                                              Text('     11:00 PM '),
                                            ],
                                          ),
                                        ],
                                      ),
                                      Expanded(
                                        child: ListTile(
                                          title: Text('صيدلية المركز الطبي',textAlign: TextAlign.right,
                                            style: TextStyle(fontWeight: FontWeight.bold),),
                                          subtitle: Text('2257914',textAlign: TextAlign.right,),
                                        ),
                                      ),
                                    ],
                                  ),
                                  margin: EdgeInsets.only(top:30,right: 90,left: 30),
                                  padding: EdgeInsets.all(1),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(3),
                                    gradient: LinearGradient(
                                        colors: [
                                          Color(0xffDEFAE9),
                                          Color(0xffDEFAE9)
                                        ]
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Stack(
                              children: <Widget>[
                                Container(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: <Widget>[
                                      Image.asset('assets/Image/pharmacy.ico') ,
                                    ],
                                  ),
                                  margin: EdgeInsets.only(top:30,right: 30,left: 30),
                                  padding: EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    gradient: LinearGradient(
                                        colors: [
                                          Color(0xff99dfb2),
                                          Color(0xff99dfb2),
                                        ]
                                    ),
                                  ),
                                ),
                                Container(
                                  child: Row(
                                    children: <Widget>[
                                      Column(
                                        children: <Widget>[
                                          Row(
                                            children: <Widget>[
                                              Text('  From:', style: TextStyle(fontWeight: FontWeight.bold)),
                                              Text('  8:00 AM '),
                                            ],
                                          ),
                                          Row(
                                            children: <Widget>[
                                              Text('  To:', style: TextStyle(fontWeight: FontWeight.bold)),
                                              Text('     11:00 PM '),
                                            ],
                                          ),
                                        ],
                                      ),
                                      Expanded(
                                        child: ListTile(
                                          title: Text('صيدلية النيرب',textAlign: TextAlign.right,
                                            style: TextStyle(fontWeight: FontWeight.bold),),
                                          subtitle: Text('9664271511',textAlign: TextAlign.right,),
                                        ),
                                      ),
                                    ],
                                  ),
                                  margin: EdgeInsets.only(top:30,right: 90,left: 30),
                                  padding: EdgeInsets.all(1),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(3),
                                    gradient: LinearGradient(
                                        colors: [
                                          Color(0xffDEFAE9),
                                          Color(0xffDEFAE9)
                                        ]
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Stack(
                              children: <Widget>[
                                Container(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: <Widget>[
                                      Image.asset('assets/Image/pharmacy.ico') ,
                                    ],
                                  ),
                                  margin: EdgeInsets.only(top:30,right: 30,left: 30),
                                  padding: EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    gradient: LinearGradient(
                                        colors: [
                                          Color(0xff99dfb2),
                                          Color(0xff99dfb2),
                                        ]
                                    ),
                                  ),
                                ),
                                Container(
                                  child: Row(
                                    children: <Widget>[
                                      Column(
                                        children: <Widget>[
                                          Row(
                                            children: <Widget>[
                                              Text('  From:', style: TextStyle(fontWeight: FontWeight.bold)),
                                              Text('  8:00 AM '),
                                            ],
                                          ),
                                          Row(
                                            children: <Widget>[
                                              Text('  To:', style: TextStyle(fontWeight: FontWeight.bold)),
                                              Text('     11:00 PM '),
                                            ],
                                          ),
                                        ],
                                      ),
                                      Expanded(
                                        child: ListTile(
                                          title: Text('صيدلية السفيرة',textAlign: TextAlign.right,
                                            style: TextStyle(fontWeight: FontWeight.bold),),
                                          subtitle: Text('933290219',textAlign: TextAlign.right,),
                                        ),
                                      ),
                                    ],
                                  ),
                                  margin: EdgeInsets.only(top:30,right: 90,left: 30),
                                  padding: EdgeInsets.all(1),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(3),
                                    gradient: LinearGradient(
                                        colors: [
                                          Color(0xffDEFAE9),
                                          Color(0xffDEFAE9)
                                        ]
                                    ),
                                  ),
                                ),
                              ],
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
    );
  }
}
