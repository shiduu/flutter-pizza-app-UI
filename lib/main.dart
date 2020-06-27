import 'package:flutter/material.dart';
import 'package:meals/screens/filters_screen.dart';
import './screens/categories_meal_screen.dart';

//import './screens/categories_screen.dart';
import 'screens/meal_detail_screen.dart';
import 'screens/tabs_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Delimeals',
      theme: ThemeData(
          primarySwatch: Colors.teal,
          accentColor: Colors.deepPurple,
          canvasColor: Color.fromRGBO(255, 254, 229, 1),
          fontFamily: 'Raleway',
          
          textTheme: ThemeData.light().textTheme.copyWith(
              body1: TextStyle(
                color: Color.fromRGBO(20, 51, 51, 1)
                ),
               body2: TextStyle(
                color: Color.fromRGBO(20, 51, 51, 1)
                ),
                title: TextStyle(
                  fontSize: 20,
                  fontFamily: 'RobotoCondensed',
                  fontWeight: FontWeight.bold,
                  color: Colors.white

                  )
                )
                ),
     
      //initialRoute: '/',
      routes: {
        '/': (ctx) => TabsScreen(),
        CategoriesMealsScreen.routeName: (ctx) => CategoriesMealsScreen(),
        MealDetailScreen.routeName: (ctx) => MealDetailScreen(),
        FilterScreen.routeName: (ctx) => FilterScreen(),
      },
      onUnknownRoute: (setting){
        return MaterialPageRoute(
          builder: (ctx) => CategoriesMealsScreen() 
        );
      },
    );
  }
}
