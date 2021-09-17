import 'package:flutter/material.dart';
import 'screens/categoryMeal.dart';
import 'screens/mealDetialsScreen.dart';
import 'screens/tabScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          colorScheme: ColorScheme.fromSwatch(
            primarySwatch: Colors.pink,
          ).copyWith(secondary: Colors.pink),
        ),
        debugShowCheckedModeBanner: false,
        title: 'Meal App',
        routes: {
          '/': (context) => TabsScreen(),
          CategoriesMealsScreen.routeName: (context) => CategoriesMealsScreen(),
          MealDetailsScreen.routeName: (context) => MealDetailsScreen(),
        });
  }
}
