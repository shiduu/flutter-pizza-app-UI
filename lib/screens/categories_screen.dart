import 'package:flutter/material.dart';
import 'package:meals/screens/bottompart_cat.dart';
import 'package:meals/screens/toppart_cat.dart';


const dropDownMenuItemStyle = TextStyle(color: Colors.black, fontSize: 16);

class CategoriesScreens extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: Stack(
         children: <Widget>[
           TopPart(), 
           BottomPart()
         ],
       )
       
      // SingleChildScrollView(
      //   child: Column(
      //     children: <Widget>[
      //       //TopPart(),
      //       BottomPart()
      //     ],
      //   ),
      // ),
    );
  }
}
