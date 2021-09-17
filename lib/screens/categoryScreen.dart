import 'package:flutter/material.dart';
import '../dummy_data.dart';
import '../widgets/categoriesItem.dart';

class CategoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView(
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            mainAxisSpacing: 20,
            childAspectRatio: 3 / 2,
            maxCrossAxisExtent: 200,
            crossAxisSpacing: 20),
        padding: EdgeInsets.all(20),
        children: DUMMY_CATEGORIES
            .map((catData) =>
                CategoryItem(catData.id, catData.title, catData.color))
            .toList(),
      ),
    );
  }
}
