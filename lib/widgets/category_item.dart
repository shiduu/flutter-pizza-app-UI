import 'package:flutter/material.dart';

import '../screens/categories_meal_screen.dart';

class CategoryItem extends StatelessWidget {
  final String id;
  final String title;
  final Color color;

  CategoryItem(this.id, this.title, this.color);

  void selectItem(BuildContext ctx) {
    Navigator.of(ctx).pushNamed(
      CategoriesMealsScreen.routeName,
      arguments:{ 'id': id, 'title': title}
      );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectItem(context),
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(20),

      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20)
          
        ),
        elevation: 9,
          child: Container(
          padding: const EdgeInsets.all(20),
          child: Center(
            child: Text(
              title,
              style: Theme.of(context).textTheme.title,
            ),
          ),
          decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  color.withOpacity(0.7),
                  color,
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              borderRadius: BorderRadius.circular(20)),
        ),
      ),
    );
  }
}
