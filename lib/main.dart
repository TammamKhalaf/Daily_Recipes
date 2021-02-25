import 'dart:ui';

import 'package:DailyRecipes/screens/meal_detail_screen.dart';
import 'package:flutter/material.dart';

import 'file:///C:/Users/TAMMAM/DailyRecipes/lib/screens/category_meals_screen.dart';

import 'screens/categories_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Daily Recipes',
      theme: ThemeData(
          primarySwatch: Colors.pink,
          accentColor: Colors.amber,
          canvasColor: Color.fromRGBO(255, 254, 229, 1),
          fontFamily: 'Raleway',
          textTheme: ThemeData.light().textTheme.copyWith(
                body1: TextStyle(color: Color.fromRGBO(20, 51, 51, 1)),
                body2: TextStyle(color: Color.fromRGBO(20, 51, 51, 1)),
                title: TextStyle(fontSize: 20, fontFamily: 'RobotoCondensed',fontWeight: FontWeight.bold),
              )),
      //home: CategoriesScreen(),
      initialRoute: '/', //default is '/'
      routes: {
        '/': (ctx) => CategoriesScreen(),
        CategoryMealsScreen.routeCategoryMeals: (ctx) => CategoryMealsScreen(),
        MealDetailScreen.routeName: (ctx) => MealDetailScreen(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Daily Recipes'),
      ),
      body: Center(
        child: Text('Navigation Time!'),
      ),
    );
  }
}
