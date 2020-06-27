
import 'package:flutter/material.dart';
import 'package:meals/widgets/drawer.dart';

class FilterScreen extends StatelessWidget {
  static const routeName = '/filter';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
      ),
      drawer: MainDrawer(),
          body: Center(
        child: Text('Filter'),
      ),
    );
  }
}