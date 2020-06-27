import 'package:flutter/material.dart';
import 'package:meals/widgets/customer_clipper.dart';
import '../widgets/drawer.dart';

import 'categories_screen.dart';
import 'favourites_screen.dart';

class TabsScreen extends StatefulWidget {
  @override
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {

  final List<Map<String, Object>> _pages = [
     { 
       'page': CategoriesScreens(),
       'title': 'Pizza Zone'
      },
    {
      'page': FavouritesScreen(),
      'title': 'favourites'
    }

  ];

  int _selectedPageIndex = 0;

  void _selectPage(int index){
    setState(() {
      _selectedPageIndex = index;
    });

  }
    
  @override
  Widget build(BuildContext context) {
    return 
    // DefaultTabController(
    //   length: 2,
    //   //initialIndex: 1,
    //   child: 
      Scaffold(
        appBar: AppBar(
          elevation: 0,
          
          title: Text(_pages[_selectedPageIndex]['title']),

          actions: <Widget>[
            IconButton(icon: Icon(
              Icons.shopping_cart,
              color: Colors.white
            ), onPressed: null)
          ],

          // bottom: TabBar(tabs: <Widget>[
            
          //   Tab(
          //     icon: Icon(Icons.category),
          //      text: 'Categories',
          //       ),
          //   Tab(
          //     icon: Icon(Icons.star),
          //     text: 'Favourite',
          //   ),
          // ],),
        ),
         
        drawer: MainDrawer(),
        



        body:  _pages[_selectedPageIndex]['page'],
            bottomNavigationBar:BottomNavigationBar(
            backgroundColor: Theme.of(context).primaryColor,
            onTap: _selectPage,
            unselectedItemColor: Colors.white,
            selectedItemColor: Theme.of(context).accentColor,
            currentIndex: _selectedPageIndex,
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.category),
                title: Text('Category')
                ),
               BottomNavigationBarItem(
                icon: Icon(Icons.star),
                title: Text('Favourites')
                ),
              
            ],
          ),

            

        );
        
        //bottomNavigationBar: 
        // TabBarView(children: <Widget>[
        //   CategoriesScreens(),
        //   FavouritesScreen()
        // ],),
    //   ),
  }
}


// class TopContainer extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
    // return ClipPath(
    //             clipper: CustomeCliper(),
    //               child: Container(
    //               height: 220,
    //               width: double.infinity,
    //               padding: EdgeInsets.all(20),
    //               alignment: Alignment.centerLeft,
    //               color: Theme.of(context).primaryColor,
    //               child: Center(
    //                   child: Text(
    //                   'Recipe', 
    //                   style: TextStyle(
    //                     fontWeight: FontWeight.w700,
    //                     fontSize: 15,
    //                     color: Colors.white
    //                   ),
    //                   ),
    //               ),
    //             ),
    //           );


//   }
