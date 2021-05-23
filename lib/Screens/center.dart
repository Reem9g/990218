import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class centerCards extends StatelessWidget {
  @override
  List<StaggeredTile> _cardTile = const <StaggeredTile>[
    const StaggeredTile.count(5, 2.5),
    StaggeredTile.count(2, 4),
    StaggeredTile.count(2, 3),
    StaggeredTile.count(2, 3),
    StaggeredTile.count(2, 3),
    StaggeredTile.count(2, 2),
    StaggeredTile.count(2, 3),
    // StaggeredTile.count(2, 2),
    // StaggeredTile.count(2, 3),
    // StaggeredTile.count(2, 2),
  ];

//List of Cards with color and icon

  List<Widget> _listTile = const <Widget>[
    const _BackGroundTile(
        gridImage: 'assets/Image/center1.jpg',
        text: 'مركز                                           الفرقان'),
    const _BackGroundTile(
        gridImage: 'assets/Image/center2.jpg',
        text: 'مركز             بستان القصر'),
    const _BackGroundTile(
        gridImage: 'assets/Image/center3.jpg',
        text: 'مركز           المرديان'),
    const _BackGroundTile(
        gridImage: 'assets/Image/center4.jpg',
        text: 'مركز                    حلب الجديدة'),
    const _BackGroundTile(
        gridImage:
        'assets/Image/center5.jpg',
        text: 'مركز ...'),
    const _BackGroundTile(
        gridImage: 'assets/Image/center6.jpg', text: 'مركز ...'),
    // const _BackGroundTile(backgroundColor: Colors.indigo, gridImage: imageOne),
    //  const _BackGroundTile(backgroundColor: Colors.cyan, gridImage: imageOne),
    //  const _BackGroundTile(backgroundColor: Colors.yellowAccent, gridImage: imageOne),
    // const _BackGroundTile(backgroundColor: Colors.deepOrange, gridImage: imageOne),
  ];

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff99dfb2),
      body: Column(
        children: <Widget>[
          Stack(
            children: [
              Container(
                color: Colors.white,
                child: Container(
                  height: 120,
                  decoration: BoxDecoration(
                    color: Color(0xff99dfb2),
                    borderRadius:
                    BorderRadius.only(bottomLeft: Radius.circular(70)),
                  ),
                ),
              ),
              Positioned(
                top: 70.0,
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
          Container(
            height: MediaQuery.of(context).size.height - 120,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(topRight: Radius.circular(40)),
            ),
            child: Container(
              margin: EdgeInsets.only(left: 10, top: 2, right: 10, bottom: 0),
              padding: EdgeInsets.all(10),
              // Staggered Grid View starts here
              child: StaggeredGridView.count(
                  crossAxisCount: 4,
                  staggeredTiles: _cardTile,
                  children: _listTile,
                  mainAxisSpacing: 4.0,
                  crossAxisSpacing: 4.0),
            ),
          ),
        ],
      ),
    );
  }
}

class _BackGroundTile extends StatelessWidget {
  const _BackGroundTile({this.backgroundColor, this.gridImage, this.text});

  final Color backgroundColor;
  final gridImage;
  final text;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      semanticContainer: true,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      //margin: EdgeInsets.only(left: 10, top: 2, right: 10 , bottom: 0),
      child: Stack(fit: StackFit.expand, children: <Widget>[
        Image.asset(
          gridImage,
          fit: BoxFit.cover,
        ),
        Container(
          padding: EdgeInsets.only(right: 10, top: 10),
          child: Text(
            text,
            textAlign: TextAlign.end,
            style: TextStyle(
              fontSize: 20,
            ),
          ),
        )
      ]),

      //new Image.asset(gridImage , fit: BoxFit.cover, ),
      //   Text(' ')
    );
  }
}
