import 'package:flutter/material.dart';
import 'package:meals/screens/categories_screen.dart';
import 'package:meals/widgets/customer_clipper.dart';

class TopPart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Stack(
          children: <Widget>[
            ClipPath(
              clipper: CustomeCliper(),
              child: Container(
                height: 220,
                width: double.infinity,
                padding: EdgeInsets.all(20),
                alignment: Alignment.centerLeft,
                color: Theme.of(context).primaryColor,
                child: Center(
                  child: Column(
                    children: <Widget>[
                      Text(
                        'Which pizza do \n you want to find?',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w700),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 32),
                        child: Material(
                          elevation: 5,
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                          child: TextField(
                            controller: TextEditingController(text: 'Search'),
                            style: dropDownMenuItemStyle,
                            cursorColor: Color(0xFFF3791A),
                            decoration: InputDecoration(
                              //hintText: 'Search',
                              border: InputBorder.none,
                              contentPadding: EdgeInsets.symmetric(
                                  horizontal: 32, vertical: 14),
                              suffixIcon: Material(
                                elevation: 2,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(30)),
                                child: InkWell(
                                  onTap: () {
                                    //Navigator.push(context, MaterialPageRoute(builder: (context)=> FlightListScreen()));
                                  },
                                  child:
                                      Icon(Icons.search, color: Colors.black),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
        // SizedBox(height: 2),
        Padding(
          padding: const EdgeInsets.all(2.0),
          child: Text(
            'PIZZA CATEGORIES',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
              decoration: TextDecoration.underline
              ),
          ),
        ),
      ],
    );
  }
}
