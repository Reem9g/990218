import 'package:flutter/material.dart';

class TaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Second `const` is optional in assignments.
      body:
      //Image.asset('assets/Image/photo_2021-04-19_12-30-53 - Copy.jpg'),
      Container(
        decoration: BoxDecoration(
          image: new DecorationImage(
            image: new ExactAssetImage('assets/Image/ddoctor.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/Image/ddoctor.jpg'),
                      fit: BoxFit.cover,
                    )),
                padding:
                EdgeInsets.only(top: 60.0, left: 30, right: 30, bottom: 30),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(Icons.chevron_left,
                            color: Color(0xff6CECB3)),
                        IconButton(
                            icon: Image.asset('assets/Image/menu.png',
                                color: Color(0xff6CECB3))),
                      ],
                    ),

                    //   Image.asset('assets/Image/photo_2021-04-19_12-30-53 - Copy.jpg' , ),
                  ],
                )),
            Expanded(
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white, //Color(0xFFEFEFEF),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30.0),
                          topRight: Radius.circular(30.0))),
                  child: ListView(
                    //  padding:    EdgeInsets.only(left: 30 , top: 40 , right: 40, bottom: 40),

                    children: [
                      ListTile(
                        leading: CircleAvatar(
                          backgroundImage:
                          ExactAssetImage('assets/Image/fdoctor.jpg'),
                          radius: 50,
                        ),
                        title: Align(
                            alignment: Alignment.centerRight,
                            child: new Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                ListTile(
                                  title: new Text(
                                    'د.محمد ضعيف',
                                    style: TextStyle(
                                        fontSize: 22, decorationThickness: 5),
                                    textAlign: TextAlign.right,
                                  ),
                                  subtitle: new Text(
                                    'المرديان _ 3 كم ',
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                        fontSize: 14, decorationThickness: 5),
                                  ),
                                ),
                                new Row(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                 mainAxisAlignment: MainAxisAlignment.end,

                                  children: [
                                    Icon(
                                      Icons.phone,
                                      color: Color(0xff6CECB3),
                                    ),
                                    new Row(
                                      children: [
                                        Text('           ')
                                      ],
                                    ),
                                    Icon(
                                      Icons.message,
                                      color: Color(0xff6CECB3),
                                    ),
                                    new Row(
                                      children: [
                                        Text('           ')
                                      ],
                                    ),
                                    Icon(
                                      Icons.phone_iphone,
                                      color: Color(0xff6CECB3),
                                    ),
                                  ],
                                )
                              ],
                            )),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                      ),
                      ListTile(
                        title: new Text(
                          'حول الطبيب',
                          textAlign: TextAlign.right,
                          style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                      ),
                      ListTile(
                          title: Text(
                                     'هذا النص عبارة عن شرح مبسط عن الطبيب كتخصصه و أين درس ..الخ' , //' من المفروض أكتب نص و لكن رح أتذمر فقط :) علي كسر 6 حلقات رن و أنمي هايكو و علي كومة شغل للجامعة',
                            textAlign: TextAlign.right,
                          )),
                      SizedBox(
                        height: 10,
                      ),
                      ListTile(
                        title: new Text('مواعيد الدوام الحالية',
                            textAlign: TextAlign.right,
                            style: TextStyle(fontWeight: FontWeight.bold)),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        color: Color(0xff99DFB2),
                        child: new Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            ListTile(
                              title: new Text('موعد المعاينة',
                                  textAlign: TextAlign.right,
                                  style: TextStyle(fontWeight: FontWeight.bold)),
                              subtitle: new Text(
                                '  الأحد 9ص -3 م ',
                                textAlign: TextAlign.right,
                              ),
                              //  leading: ,
                            ),
                          ],
                        ),
                      ),
                      Card(
                        color: Color(0xffe9fdf2),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        child: new Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            ListTile(
                              title: new Text('موعد المعاينة',
                                  textAlign: TextAlign.right,
                                  style: TextStyle(fontWeight: FontWeight.bold)),
                              subtitle: new Text(
                                '  الاثنين 9ص -3 م ',
                                textAlign: TextAlign.right,
                              ),
                              //  leading: ,
                            ),
                          ],
                        ),
                      ),
                      Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        color: const Color(0xff99DFB2),
                        child: new Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            ListTile(
                              title: new Text('موعد المعاينة',
                                  textAlign: TextAlign.right,
                                  style: TextStyle(fontWeight: FontWeight.bold)),
                              subtitle: new Text(
                                '  الثلاثاء 9ص -3 م ',
                                textAlign: TextAlign.right,
                              ),
                              //  leading: ,
                            ),
                          ],
                        ),
                      ),
                      Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        color: Color(0xffe9fdf2),
                        child: new Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            ListTile(
                              title: new Text('موعد المعاينة',
                                  textAlign: TextAlign.right,
                                  style: TextStyle(fontWeight: FontWeight.bold)),
                              subtitle: new Text(
                                '  الأربعاء 9ص -3 م ',
                                textAlign: TextAlign.right,
                              ),
                              //  leading: ,
                            ),
                          ],
                        ),
                      ),
                      Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        color: const Color(0xff99DFB2),
                        child: new Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            ListTile(
                              title: new Text('موعد المعاينة',
                                  textAlign: TextAlign.right,
                                  style: TextStyle(fontWeight: FontWeight.bold)),
                              subtitle: new Text(
                                '  الخميس 9ص -3 م ',
                                textAlign: TextAlign.right,
                              ),
                              //  leading: ,
                            ),
                          ],
                        ),
                      ),
                      Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        color: Color(0xffe9fdf2),
                        child: new Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            ListTile(
                              title: new Text('موعد المعاينة',
                                  textAlign: TextAlign.right,
                                  style: TextStyle(fontWeight: FontWeight.bold)),
                              subtitle: new Text(
                                '  السبت 9ص -3 م ',
                                textAlign: TextAlign.right,
                              ),
                              //  leading: ,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
