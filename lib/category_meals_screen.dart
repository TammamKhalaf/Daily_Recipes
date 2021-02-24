import 'package:DailyRecipes/dummy_data.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'models/meal.dart';

class CategoryMealsScreen extends StatelessWidget {
  // final String categoryId;
  // final String categoryTitle;
  // CategoryMealsScreen(this.categoryId, this.categoryTitle);

  static const String routeCategoryMeals = '/category-meals';

  @override
  Widget build(BuildContext context) {
    final routeArgs = ModalRoute
        .of(context)
        .settings
        .arguments as Map<String, String>;
    final categoryTitle = routeArgs['title'];
    final categoryId = routeArgs['id'];
    final categoryMeals = DUMMY_MEALS.where((meal) {
      return meal.categories.contains(categoryId);
    }).toList();

    return Scaffold(
      appBar: AppBar(title: Text(categoryTitle),),
      body: ListView.builder(
        itemBuilder: (ctx, index) {
          return Text(categoryMeals[index].title);
        }, itemCount: categoryMeals.length,),
    );
  }
}
