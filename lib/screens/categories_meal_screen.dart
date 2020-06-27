import 'package:flutter/material.dart';
import '../widgets/meal_item.dart';
import '../dummy_data.dart';

class CategoriesMealsScreen extends StatelessWidget {
  static const routeName = '/category-meals';
  // final String categoriId;
  // final String categoryTitle;

  // CategoriesMealsScreen(this.categoriId, this.categoryTitle);
  @override
  Widget build(BuildContext context) {
    final routeargs = ModalRoute.of(context).settings.arguments as Map<String, String>;
    final categoryTitle = routeargs['title'];
    final categoryId = routeargs['id'];
    
    final categoriesMeal =Dummy_Meals.where((meal){
      return meal.categories.contains(categoryId);
    }).toList();


    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle)
      ),
      body: ListView.builder(
        shrinkWrap: true,
        itemBuilder: (ctx, index){
         return MealItem(
           id: categoriesMeal[index].id,
           title: categoriesMeal[index].title,
           imageUrl: categoriesMeal[index].imageUrl,
           duration: categoriesMeal[index].duration,
           affordability: categoriesMeal[index].affordability,
           complexity: categoriesMeal[index].complexity,
           );
      },

      itemCount: categoriesMeal.length,
      ),
      
    );
  }
}