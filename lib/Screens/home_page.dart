import 'package:flutter/material.dart';
import 'dart:math';
/*import 'package:d_details_ui/Screens/pharmacy.dart';
import 'package:d_details_ui/Screens/laboratory.dart';
import 'package:d_details_ui/Screens/center.dart';
import 'package:d_details_ui/Screens/doctor.dart';
 */




class Home extends StatefulWidget {
  @override
  Home_HomeState createState() => Home_HomeState();
}

var cardAspectRatio = 12.0 / 16.0;
var widgetAspectRatio = cardAspectRatio * 1.2;
List<String> images = [
  "assets/Image/labaratory.jpg",
  "assets/Image/pharmacy.jpg",
  "assets/Image/doctor.jpg",
  "assets/Image/center.jpg",
];

List<String> title = [
  "المخابر",
  "الصيدليات",
  "الأطباء",
  "المراكز",
];
class Home_HomeState extends State<Home> {

  var currentPage = images.length - 1.0;

  @override
  Widget build(BuildContext context) {

    PageController controller = PageController(initialPage: images.length - 1);
    controller.addListener(() {
      setState(() {
        currentPage = controller.page;
      });
    });

    return Scaffold(
         resizeToAvoidBottomInset: false,
         backgroundColor: Color(0xff4d36ad),
        body: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Container(
                       color: Colors.white,
                      child: Container(
                        height: 100,
                        decoration: BoxDecoration(
                          color: Color(0xff453097),
                          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(60),bottomRight: Radius.circular(60) ),
                        ) ,
                      ),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height-100-65,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        //borderRadius: BorderRadius.only(topRight: Radius.circular(70) ),
                      ) ,
                      child: ListView(
                        primary: false,
                        children: <Widget>[

                          SingleChildScrollView(
                            child: Column(
                              children: <Widget>[
                                Stack(
                                  children: <Widget>[
                                    Padding(
                                      padding: const EdgeInsets.only(top:60),
                                      child: CardScrollWidget(currentPage),
                                    ),
                                    Positioned.fill(
                                      child: PageView.builder(
                                        itemCount: images.length,
                                        controller: controller,
                                        reverse: true,
                                        itemBuilder: (context, index) {
                                          return Container();
                                        },
                                      ),
                                    )
                                  ],
                                ),
                                //child: Image.asset("assets/image_02.jpg",
                              ],
                            ),
                          ),

                        ],
                      ),
                    ),
                  ],
                ),
                Positioned(
                  top: 70.0,
                  left: 0.0,
                  right: 0.0,
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 40.0,),
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
                                  enabledBorder: OutlineInputBorder(borderSide: BorderSide(color:Color(0xff453097)),borderRadius: BorderRadius.circular(50)),
                                  focusedBorder: OutlineInputBorder(borderSide: BorderSide(color:Color(0xff453097)),borderRadius: BorderRadius.circular(50)),
                                  prefixIcon: Icon(Icons.search,color:Color(0xff453097)),
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
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xff453097),
        iconSize: 30,
        items: <BottomNavigationBarItem>[
          new BottomNavigationBarItem(
              icon: const Icon(Icons.location_pin,color: Colors.white,),
              title: new Text("Map",style: TextStyle(color: Colors.white,),)
          ),
          new BottomNavigationBarItem(
              icon: const Icon(Icons.home_outlined,color: Colors.white,),
              title: new Text("Home",style: TextStyle(color: Colors.white,))
          ),
          new BottomNavigationBarItem(
              icon: const Icon(Icons.login_outlined,color: Colors.white,),
              title: new Text("Log_out",style: TextStyle(color: Colors.white,))
          )
        ],
      ),
        );
  }
}


class CardScrollWidget extends StatelessWidget {
  var currentPage;
  var padding = 20.0;
  var verticalInset = 20.0;

  CardScrollWidget(this.currentPage);

  @override
  Widget build(BuildContext context) {
    return new AspectRatio(
      aspectRatio: widgetAspectRatio,
      child: LayoutBuilder(builder: (context, contraints) {
        var width = contraints.maxWidth;
        var height = contraints.maxHeight;

        var safeWidth = width - 2 * padding;
        var safeHeight = height - 2 * padding;

        var heightOfPrimaryCard = safeHeight;
        var widthOfPrimaryCard = heightOfPrimaryCard * cardAspectRatio;

        var primaryCardLeft = safeWidth - widthOfPrimaryCard;
        var horizontalInset = primaryCardLeft / 2;

        List<Widget> cardList = new List();

        for (var i = 0; i < images.length; i++) {
          var delta = i - currentPage;
          bool isOnRight = delta > 0;

          var start = padding +
              max(primaryCardLeft - horizontalInset * -delta * (isOnRight ? 15 : 1), 0.0);

          var cardItem = Positioned.directional(
            top: padding + verticalInset * max(-delta, 0.0),
            bottom: padding + verticalInset * max(-delta, 0.0),
            start: start,
            textDirection: TextDirection.rtl,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16.0),
              child: Container(
                child: AspectRatio(
                  aspectRatio: cardAspectRatio,
                  child: Stack(
                    fit: StackFit.expand,
                    children: <Widget>[
                      Image.asset(images[i], fit: BoxFit.cover),
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 16.0, vertical: 8.0),
                              child: Text(title[i],
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 25.0,
                                      fontFamily: "SF-Pro-Text-Regular")),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          );
          cardList.add(cardItem);
        }
        return Stack(
          children: cardList,
        );
      }),
    );
  }
}