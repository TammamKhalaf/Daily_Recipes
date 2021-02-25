import 'package:flutter/cupertino.dart';

class MealDetailScreen extends StatelessWidget {

  static const String routeName = "/meal-detail";

  @override
  Widget build(BuildContext context) {
    final mealId = ModalRoute.of(context).settings.arguments as String;
    return Center(child: Text('The Meal! Id-> $mealId'));
  }
}
