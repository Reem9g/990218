import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Spc_Doctors extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff99dfb2),
      // Second `const` is optional in assignments.
      body:
      //Image.asset('assets/Image/photo_2021-04-19_12-30-53 - Copy.jpg'),
      Container(
        color: Color(0xffe3fdfd),
        child:
        Column(
          children: [ //Stack(
            //child:

            Container(

                color:  Color(0xffe3fdfd),
                padding: EdgeInsets.only(top: 60.0 , left: 30 , right: 30 , bottom: 30),
                child:

                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [

                        Icon(Icons.chevron_left ,color:  Color(0xff6CECB3) ),
                        IconButton(
                            icon: Image.asset('assets/Image/menu.png',color:  Color(0xff6CECB3))
                        ),



                      ],
                    ),
                    Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10.0, top: 5),
                          child: Container(
                            // margin: EdgeInsets.symmetric(vertical: 10),
                            padding: EdgeInsets.symmetric(
                                vertical: 5, horizontal: 20),
                            // width: size.width * 0.8,
                            //  height: 50,
                            width: 250,
                            height: 50,
                            decoration: BoxDecoration(
                              borderRadius:
                              BorderRadius.all(Radius.circular(55.0)),
                              color: Color(0xff6CECB3).withAlpha(50),
                            ),
                            child: TextField(
                              cursorColor: Color(0xff6CECB3),
                              decoration: InputDecoration(
                                //  icon: Icon(Icons.search, color: Color(0xff6CECB3)),
                                hintText: 'بحث',
                                hintStyle: TextStyle(
                                  color: Color(0xff99DFB2),
                                  // fontWeight: FontWeight.bold,
                                ),
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 230, top: 5),
                          child: Container(
                              width: 60,
                              height: 50,
                              decoration: BoxDecoration(
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(30)),
                                  color: Color(0xff6CECB3)),
                              child: FlatButton(
                                  onPressed: null,
                                  child: Icon(
                                    Icons.search,
                                    color: Color(0xffffffff),
                                  ))),
                        ),
                      ],
                    ),
                  ],
                )


            ),


            Expanded(
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,            //Color(0xFFEFEFEF),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30.0) ,
                          topRight: Radius.circular(30.0))
                  ),
                  child: ListView(
                    //  padding:    EdgeInsets.only(left: 30 , top: 40 , right: 40, bottom: 40),
                    children: [
                      Container(
                        height: 100,
                        padding: EdgeInsets.all(5),
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          color: Color(0xffcbf1f5),
                          child: new Column(

                            children: [
                              ListTile(
                                leading: CircleAvatar (
                                  backgroundImage:
                                  ExactAssetImage('assets/Image/fdoctor.jpg'),radius: 50,

                                ) ,                              title: new Text('ريم شهيد' ,
                                  textAlign: TextAlign.right,
                                  style: TextStyle(fontWeight: FontWeight.bold) ),
                                subtitle: Text('أخصائية في جراحة القلب' , textAlign: TextAlign.end,),
                                //  leading: ,

                              ) ,


                            ],

                          ),

                        ),
                      ),
                      Container(
                        height: 100,
                        padding: EdgeInsets.all(5),
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          color: Color(0xffffe2e2),
                          child: new Column(

                            children: [
                              ListTile(
                                leading: CircleAvatar (
                                  backgroundImage:
                                  ExactAssetImage('assets/Image/fdoctor.jpg'),radius: 50,

                                ) ,                              title: new Text('ريم شهيد' ,
                                  textAlign: TextAlign.right,
                                  style: TextStyle(fontWeight: FontWeight.bold) ),
                                subtitle: Text('أخصائية في جراحة القلب' , textAlign: TextAlign.end,),
                                //  leading: ,

                              ) ,


                            ],

                          ),

                        ),
                      ),
                      Container(
                        height: 100,
                        padding: EdgeInsets.all(5),
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          color: Color(0xfffefdca),
                          child: new Column(

                            children: [
                              ListTile(
                                leading: CircleAvatar (
                                  backgroundImage:
                                  ExactAssetImage('assets/Image/fdoctor.jpg'),radius: 50,

                                ) ,                              title: new Text('ريم شهيد' ,
                                  textAlign: TextAlign.right,
                                  style: TextStyle(fontWeight: FontWeight.bold) ),
                                subtitle: Text('أخصائية في جراحة القلب' , textAlign: TextAlign.end,),
                                //  leading: ,

                              ) ,


                            ],

                          ),

                        ),
                      ),
                      Container(
                        height: 100,
                        padding: EdgeInsets.all(5),
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          color: Color(0xfff3d7ca),
                          child: new Column(

                            children: [
                              ListTile(
                                leading: CircleAvatar (
                                  backgroundImage:
                                  ExactAssetImage('assets/Image/fdoctor.jpg'),radius: 50,

                                ) ,                              title: new Text('ريم شهيد' ,
                                  textAlign: TextAlign.right,
                                  style: TextStyle(fontWeight: FontWeight.bold) ),
                                subtitle: Text('أخصائية في جراحة القلب' , textAlign: TextAlign.end,),
                                //  leading: ,

                              ) ,


                            ],

                          ),

                        ),
                      ),
                      Container(
                        height: 100,
                        padding: EdgeInsets.all(5),
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          color: Color(0xffd7fbe8),
                          child: new Column(

                            children: [
                              ListTile(
                                leading: CircleAvatar (
                                  backgroundImage:
                                  ExactAssetImage('assets/Image/fdoctor.jpg'),radius: 50,

                                ) ,                              title: new Text('ريم شهيد' ,
                                  textAlign: TextAlign.right,
                                  style: TextStyle(fontWeight: FontWeight.bold) ),
                                subtitle: Text('أخصائية في جراحة القلب' , textAlign: TextAlign.end,),
                                //  leading: ,

                              ) ,


                            ],

                          ),

                        ),
                      ),
                      Container(
                        height: 100,
                        padding: EdgeInsets.all(5),
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          color: Color(0xff9df3c4),
                          child: new Column(

                            children: [
                              ListTile(
                                leading: CircleAvatar (
                                  backgroundImage:
                                  ExactAssetImage('assets/Image/fdoctor.jpg'),radius: 50,

                                ) ,                              title: new Text('ريم شهيد' ,
                                  textAlign: TextAlign.right,
                                  style: TextStyle(fontWeight: FontWeight.bold) ),
                                subtitle: Text('أخصائية في جراحة القلب' , textAlign: TextAlign.end,),
                                //  leading: ,

                              ) ,


                            ],

                          ),

                        ),
                      ),





                    ],

                  ),


                )
            )
            //),
          ],
        ),








      ),

    );
  }

}
