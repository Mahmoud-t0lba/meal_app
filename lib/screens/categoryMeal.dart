import 'package:flutter/material.dart';
import '../widgets/mealItem.dart';
import '../dummy_data.dart';

class CategoriesMealsScreen extends StatefulWidget {
  static const routeName = 'categoryMeal';
  @override
  _CategoriesMealsScreenState createState() => _CategoriesMealsScreenState();
}

class _CategoriesMealsScreenState extends State<CategoriesMealsScreen> {
  @override
  Widget build(BuildContext context) {
    final routeArg =
        ModalRoute.of(context).settings.arguments as Map<String, dynamic>;
    final catID = routeArg['id'];
    final catTitle = routeArg['title'];
    final catMeals = DUMMY_MEALS.where((meal) {
      return meal.categories.contains(catID);
    }).toList();
    return Scaffold(
      appBar: AppBar(
        title: Text(
          catTitle,
          style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
              fontFamily: 'RobotoCondensed'),
        ),
      ),
      body: ListView.builder(
        itemBuilder: (ctx, i) {
          return MealItem(
              catMeals[i].id,
              catMeals[i].title,
              catMeals[i].urlImage,
              catMeals[i].complexity,
              catMeals[i].affordability,
              catMeals[i].duration);
        },
        itemCount: catMeals.length,
      ),
    );
  }
}
