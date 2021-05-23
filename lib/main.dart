import 'package:d_details_ui/Screens/logIn.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
     return MaterialApp(
       debugShowCheckedModeBanner: false,
       home: LoginScreen()
     );
  }

}
//const imageOne = 'images/img1.jpg';
//List of Cards with size

