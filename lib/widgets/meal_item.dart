import 'package:flutter/material.dart';
import '../screens/meal_detail_screen.dart';
import '../models/meals.dart';

class MealItem extends StatelessWidget {
  final String id;
  final String title;
  final String imageUrl;
  final int duration;
  final Complexity complexity;
  final Affordability affordability;

  MealItem({
    @required this.id,
    @required this.title,
    @required this.imageUrl,
    @required this.duration,
    @required this.complexity,
    @required this.affordability
  });

  String get complexityText{
    switch(complexity){
      case Complexity.Simple:
        return 'Simple';
        break;
      case Complexity.Difficult:
        return 'difficult';
        break;
      case Complexity.Complex:
        return 'complex';
        break;
      default:
        return 'unknown';
        break;
    }
  }

  String get affordabilityText{
    switch(affordability){
      case Affordability.Affordable:
        return 'affordable';
        break;
      case Affordability.Luxurious:
        return 'luxirious';
        break;
      case Affordability.Pricy:
        return 'pricy';
        break;
      default:
        return 'unknown';
        break;
    }

  }


  void selectMeal(BuildContext ctx){
    Navigator.of(ctx).pushNamed(
      MealDetailScreen.routeName,
      arguments: id
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectMeal(context),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15)
           ),
           elevation: 4,
           margin: EdgeInsets.all(10),
           child: Column(
             children: <Widget>[
               Stack(children: <Widget>[
                 ClipRRect(
                   borderRadius: BorderRadius.only(
                     topLeft: Radius.circular(15),
                     topRight: Radius.circular(15)
                   ),
                   child: Image.network(
                      imageUrl,
                      height: 250,
                      width: double.infinity,
                      fit: BoxFit.cover,),
                 ),
                 Positioned(
                   bottom: 20,
                   right: 10,
                     child: Container(
                       width: 300,
                       color: Colors.black54,
                       child: Text(
                       title,
                       style: TextStyle(
                         fontSize: 20,
                         color: Colors.white,
                         fontWeight: FontWeight.w700
                       ),
                       softWrap: true,
                       overflow: TextOverflow.fade,
                   ),
                     ),
                 )
               ],
               ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[ 
                   Row(children: <Widget>[
                     Icon(Icons.schedule),
                    SizedBox(width: 6),
                    Text('$duration min')

                  ],),
                    Row(children: <Widget>[
                    Icon(Icons.work),
                    SizedBox(width: 6),
                    Text(complexityText)
                  ],),
                  Row(children: <Widget>[
                    Icon(Icons.attach_money),
                    SizedBox(width: 6),
                    Text(affordabilityText)
                  ],),
                  
                ],
                ),
                
              ),
              
             ],
           ),
      ),
      
    );
  }
}